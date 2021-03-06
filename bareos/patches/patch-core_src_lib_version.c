$NetBSD$

	note pkgsrc compile origin

--- core/src/lib/version.c.orig	2020-06-22 14:19:42.675724493 +0000
+++ core/src/lib/version.c
@@ -48,18 +48,18 @@
 #endif
 
 #if !defined BAREOS_BINARY_INFO
-#define BAREOS_BINARY_INFO "self-compiled"
+#define BAREOS_BINARY_INFO "pkgsrc-compiled"
 #endif
 
 #if !defined BAREOS_SERVICES_MESSAGE
 #define BAREOS_SERVICES_MESSAGE                             \
-  "self-compiled binaries are UNSUPPORTED by bareos.com.\n" \
+  "pkgsrc-compiled binaries are UNSUPPORTED by bareos.com.\n" \
   "Get official binaries and vendor support on https://www.bareos.com"
 #endif
 
 #if !defined BAREOS_JOBLOG_MESSAGE
 #define BAREOS_JOBLOG_MESSAGE \
-  "self-compiled: Get official binaries and vendor support on bareos.com"
+  "pkgsrc-compiled: Get official binaries and vendor support on bareos.com"
 #endif
 
 #define BAREOS_COPYRIGHT_MESSAGE_WITH_FSF_AND_PLANETS            \
