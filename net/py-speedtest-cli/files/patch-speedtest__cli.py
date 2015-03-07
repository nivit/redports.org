--- speedtest_cli.py.orig	2015-02-26 17:44:18 UTC
+++ speedtest_cli.py
@@ -754,6 +754,12 @@ def speedtest():
 
 
 def main():
+    if 34015728 <= sys.hexversion:
+        from setuptools import ssl_support as ssl_support
+        ssl_cert_file = ssl_support.find_ca_bundle()
+        if not ssl_cert_file and not 'SSL_CERT_FILE' in os.environ:
+            os.environ['SSL_CERT_FILE'] = '%%LOCALBASE%%/share/certs/ca-root-nss.crt'
+
     try:
         speedtest()
     except KeyboardInterrupt:
