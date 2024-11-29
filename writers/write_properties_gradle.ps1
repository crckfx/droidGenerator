# write_properties_gradle.ps1

$propertiesGradle = @"
org.gradle.configuration-cache=true
android.useAndroidX=true
android.enableJetifier=true
"@ 

return $propertiesGradle