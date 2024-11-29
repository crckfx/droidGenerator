$settingsContent = @"
pluginManagement {
    repositories {
        google() // Required for Android Gradle Plugin
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositories {
        google() // Required for Android libraries
        mavenCentral()
    }
}

rootProject.name = "$projectName"
include(":app")
"@

return $settingsContent
