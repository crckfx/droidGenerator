$rootBuildContent = @"
plugins {
    id("com.android.application") version "8.7.0" apply false
}

repositories {
    google()
    mavenCentral()
}

"@
return $rootBuildContent