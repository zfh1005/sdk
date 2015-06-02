// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dart.io;

/**
 * The object containing the certificates to trust when making
 * a secure client connection, and the certificate chain and
 * private key to serve from a secure server.
 * 
 * The [SecureSocket]  and [SecureServer] classes take a SecurityContext
 * as an argument to their connect and bind methods.
 *
 * Certificates and keys can be added to a SecurityContext from PEM files
 * on the disk.  A PEM file contains one or more base-64 encoded DER-serialized
 * ASN1 objects, surrounded with delimiter strings like
 * "-----BEGIN CERTIFICATE -----" and "-----END CERTIFICATE-----".
 * Distinguished encoding rules (DER) is a canonical binary serialization
 * of ASN1 objects into an octet string.
 */
abstract class SecurityContext {
  external factory SecurityContext();
  external static SecurityContext get defaultContext;

  /**
   * Sets the private key for a server certificate or client certificate.
   * A secure connection using this SecurityContext will use this key with
   * the server or client certificate to sign and decrypt messages.
   * [keyFile] is a PEM file containing an encrypted
   * private key, encrypted with [password].  An unencrypted file can be
   * used, but this is not usual.
   */
  void usePrivateKey(String keyFile, {String password});

  /**
   * Sets the set of trusted X509 certificates used by [SecureSocket]
   * client connections, when connecting to a secure server.
   *
   * There are two ways to set a set of trusted certificates, with a single
   * PEM file, or with a directory containing individual PEM files for
   * certificates.
   *
   * [file] is an optional PEM file containing X509 certificates, usually
   * root certificates from certificate authorities.
   *
   * [directory] is an optional directory containing PEM files.  The directory
   * must also have filesystem links added, which link extra filenames based
   * on the hash of a certificate's distinguished name (DN) to the file
   * containing that certificate. OpenSSL contains a tool called c_rehash
   * to create these links in a directory.
   */
  void setTrustedCertificates({String file, String directory});

  /**
   * Sets the chain of X509 certificates served by [SecureServer]
   * when making secure connections, including the server certificate.
   * [file] is an PEM file containing X509 certificates, starting with
   * the root authority and intermediate authorities forming the signed
   * chain to the server certificate, and ending with the server certificate.
   * The private key for the server certificate is set by [usePrivateKey].
   */
  void useCertificateChain(String file);

  /**
   * Sets the list of authority names that a [SecureServer] will advertise
   * as accepted, when requesting a client certificate from a connecting
   * client.  [file] is a PEM file containing the accepted signing authority
   * certificates - the authority names are extracted from the certificates.
   */
  void setClientAuthorities(String file);
}
