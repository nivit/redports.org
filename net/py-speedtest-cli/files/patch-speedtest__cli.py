--- speedtest_cli.py.orig	2015-03-06 10:30:33 UTC
+++ speedtest_cli.py
@@ -754,6 +754,8 @@ def speedtest():
 
 
 def main():
+    if 34015728 <= sys.hexversion and not 'SSL_CERT_FILE' in os.environ:
+        os.environ['SSL_CERT_FILE'] = '%%LOCALBASE%%/share/certs/ca-root-nss.crt'
     try:
         speedtest()
     except KeyboardInterrupt:
