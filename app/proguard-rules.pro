# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/aakashsharma/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# My own classes that I need to keep





# Code obfuscation
#-keep class !com.navataar.localmode.**

-dontwarn com.google.code.**
-dontwarn  org.apache.**
-dontwarn  jp.wasabeef.recyclerview.**
-dontwarn  com.nostra13.universalimageloader.**
-dontwarn  org.acra.**

#wasabeef recyclerview
-keep class jp.wasabeef.recyclerview.** { *; }
-keepattributes Signature
#HTTP Legacy
-keep class org.apache.** { *; }
-keepattributes Signature
#Universal Image Loader
-keep class com.nostra13.universalimageloader.** { *; }
-keepattributes Signature
#Acra
-keep class org.acra.**  { *; }
-keepattributes Signature
#Support libraries
-keep class com.android.** { *; }
-keepattributes Signature





# Keep the annotations
-keepattributes *Annotation*


-allowaccessmodification
-keepattributes *Annotation*
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable
-repackageclasses ''


-dontnote com.android.vending.licensing.ILicensingService

# Explicitly preserve all serialization members. The Serializable interface
# is only a marker interface, so it wouldn't save them.
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Preserve all native method names and the names of their classes.
-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

# Preserve static fields of inner classes of R classes that might be accessed
# through introspection.
-keepclassmembers class **.R$* {
  public static <fields>;
}

# Preserve the special static methods that are required in all enumeration classes.
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep public class * {
    public protected *;
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}


#-keep class org.apache.http.** { *; }
#-dontwarn org.apache.http.**
-dontwarn android.net.**