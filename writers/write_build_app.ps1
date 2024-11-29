$appBuildContent = @"
plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android") version "2.0.20"    
}

android {
    namespace = "com.$orgName.$appName"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.$orgName.$appName"
        minSdk = 21
        targetSdk = 35
        versionCode = 1
        versionName = "1.0"
    }

    buildFeatures {
        viewBinding = true
    }

    lint {
        htmlReport = false
        xmlReport = false
    }    
}

dependencies {
    implementation("androidx.core:core-ktx:1.15.0")
    implementation("androidx.appcompat:appcompat:1.7.0")

    // JUnit 5 (Jupiter) for unit testing
    testImplementation("org.junit.jupiter:junit-jupiter:5.10.0")

    // Force consistent Kotlin version
    implementation("org.jetbrains.kotlin:kotlin-stdlib:2.0.20")
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8:2.0.20")
}
"@
return $appBuildContent
