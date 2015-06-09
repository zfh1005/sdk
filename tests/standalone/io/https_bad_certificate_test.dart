// Copyright (c) 2013, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// This test verifies that the bad certificate callback works in HttpClient.

import "package:expect/expect.dart";
import "package:path/path.dart";
import "dart:async";
import "dart:io";

String localFile(path) => Platform.script.resolve(path).toFilePath();

main() async {
  var HOST = (await InternetAddress.lookup("localhost")).first;
  var serverContext = new SecurityContext()
    ..useCertificateChain(localFile('certificates/untrusted_server_chain.pem'))
    ..usePrivateKey(localFile('certificates/untrusted_server_key.pem'),
                    password: 'dartdart');
  var server = await HttpServer.bindSecure(HOST, 0, serverContext, backlog: 5);
  server.listen(
      (HttpRequest request) {
        request.listen((_) { },
                       onDone: () { request.response.close(); });
      },
      onError: (e) { if (e is! HandshakeException) throw e; });

  var clientScript = localFile('https_bad_certificate_client.dart');
  Future clientProcess(String acceptCertificate) async {
    var result = await Process.run(Platform.executable,
        [clientScript, server.port.toString(), acceptCertificate]);
    if (result.exitCode != 0 || !result.stdout.contains('SUCCESS')) {
      print("Client failed, acceptCertificate: $acceptCertificate");
      print("  stdout:");
      print(result.stdout);
      print("  stderr:");
      print(result.stderr);
      Expect.fail('Client subprocess exit code: ${result.exitCode}');
    }
  }

  await clientProcess('true');
  await clientProcess('false');
  await clientProcess('fisk');
  await clientProcess('exception');
  server.close();
}
