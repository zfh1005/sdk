// Copyright (c) 2013, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// This test verifies that the bad certificate callback works.

import "package:expect/expect.dart";
import "package:path/path.dart";
import "dart:async";
import "dart:io";

const HOST_NAME = "localhost";
String localFile(path) => Platform.script.resolve(path).toFilePath();

SecurityContext serverContext = new SecurityContext()
  ..useCertificateChain(localFile('certificates/server_chain.pem'))
  ..usePrivateKey(localFile('certificates/server_key.pem'),
      password: 'dartdart');

Future<SecureServerSocket> runServer() {
  return SecureServerSocket
      .bind(HOST_NAME, 0, serverContext)
      .then((SecureServerSocket server) {
    server.listen((SecureSocket socket) {
      socket.listen((_) {}, onDone: () {
        socket.close();
      });
    }, onError: (e) => Expect.isTrue(e is HandshakeException));
    return server;
  });
}

int count = 0;
void runClient(int port, SecurityContext context, callbackReturns, result) {
  print(count++);
  bool badCertificateCallback(X509Certificate certificate) {
    print(certificate.subject);
    print(certificate.issuer);
    Expect.equals('foo', certificate.subject);
    Expect.equals('bar', certificate.issuer);
    Expect.notEquals(
        callbackReturns, 'exception'); // Throw exception if one is requested.
    return callbackReturns;
  }

  SecureSocket
      .connect(HOST_NAME, port,
          context: context, onBadCertificate: badCertificateCallback)
      .then((SecureSocket socket) {
    expect(result);
    socket.close();
  }, onError: (error) {
    Expect.notEquals(result, 'pass');
    if (result == false) {
      Expect.isTrue(error is HandshakeException);
    } else if (result == 'exception') {
      Expect.isTrue(error is ExpectException);
    } else {
      Expect.isTrue(error is ArgumentError);
    }
  });
}

main() async {
  SecurityContext goodContext = new SecurityContext()
    ..setTrustedCertificates(file: localFile('certificates/trusted_certs.pem'));
  SecurityContext badContext = new SecurityContext();
  SecurityContext defaultContext = SecurityContext.defaultContext;

  var server = await runServer();

  var foo = // await Future.wait([
      [
    await runClient(server.port, goodContext, true, 'pass'),
    await runClient(server.port, goodContext, false, 'pass'),
    await runClient(server.port, goodContext, 'fisk', 'pass'),
    await runClient(server.port, goodContext, 'exception', 'pass'),
    await runClient(server.port, badContext, true, 'pass'),
    await runClient(server.port, badContext, false, 'fail'),
    await runClient(server.port, badContext, 'fisk', 'fail'),
    await runClient(server.port, badContext, 'exception', 'throw'),
    await runClient(server.port, defaultContext, true, 'pass'),
    await runClient(server.port, defaultContext, false, 'fail'),
    await runClient(server.port, defaultContext, 'fisk', 'fail'),
    await runClient(server.port, defaultContext, 'exception', 'throw')
  ];
  server.close();
}
