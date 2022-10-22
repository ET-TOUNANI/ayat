#Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }
-keep class androidx.lifecycle.** { *; }
-keep @interface com.google.gson.annotations.SerializedName
-keep @interface com.google.gson.annotations.Expose
-keepattributes *Annotation*
 #https://github.com/flutter/flutter/issues/58479
 #https://medium.com/@swav.kulinski/flutter-and-android-obfuscation-8768ac544421