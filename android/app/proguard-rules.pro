# Add Firebase keep rules
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**
-keepclassmembers class * {
    @com.google.firebase.components.ComponentRegistrar <fields>;
}
-keepclassmembers class * {
    @com.google.firebase.components.Component <fields>;
}

# Add Kotlin keep rules
-keep class kotlin.** { *; }
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**
