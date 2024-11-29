## CONFIG ##
# Specify Android SDK path (adjust this to your setup)
$androidSdkPath = "Z:\\Programs\\code\\AndroidSDK"
# specify the folder to place the new project into
$devFolder = "Z:\dev\android"
# specify the home location of this script (todo: probably use cooler tricks instead)
$builder = "Z:\dev\android\droidGenerator"
# set name for the new project root directory
$projectName = "new-android-project"
# set name for the app
$appName = "myapp3"
# set organisation name - example: "com.example.app"
$orgName = "crckfx"

## set some shorthands based on the provided config
$projectRoot = "$devFolder\$projectName"
$appDir = "$projectRoot\app"
$srcDir = "$appDir\src\main"
$javaDir = "$srcDir\java\com\$orgName\$appName"
$resDir = "$srcDir\res"

# Create project root directory
Write-Host "Creating project root directory..."
New-Item -ItemType Directory -Path $projectRoot -Force | Out-Null

# Navigate to the project directory
Set-Location -Path $projectRoot

# Initialize the Gradle project
Write-Host "Initializing Gradle project..."
Invoke-Expression "gradle init --dsl kotlin --type basic --project-name $projectName --use-defaults" 

# Ensure the app module exists
Write-Host "Creating app module directory..."
New-Item -ItemType Directory -Path $appDir, $srcDir, $javaDir, $resDir -Force | Out-Null

# Create settings.gradle.kts (overwrite to include app module)
Write-Host "Updating settings.gradle.kts..."
& "$builder\writers\write_settings.ps1" | Out-File -FilePath "$projectRoot\settings.gradle.kts" -Encoding utf8

# Create (overwrite?) base build.gradle.kts
Write-Host "Creating base build.gradle.kts..."
& "$builder\writers\write_build_root.ps1" | Out-File -FilePath "$projectRoot\build.gradle.kts" -Encoding utf8

# Create app build.gradle.kts
& "$builder\writers\write_build_app.ps1" | Out-File -FilePath "$appDir\build.gradle.kts" -Encoding utf8

# Create local.properties
Write-Host "Overwriting local.properties with demo..."
& "$builder\writers\write_properties_local.ps1" | Out-File -FilePath "$projectRoot\local.properties" -Encoding utf8

# Create gradle.properties (optional but recommended for optimizations)
Write-Host "Creating gradle.properties..."
& "$builder\writers\write_properties_gradle.ps1" | Out-File -FilePath "$projectRoot\gradle.properties" -Encoding utf8

# Create AndroidManifest.xml (empty for now)
Write-Host "Creating demo AndroidManifest.xml..."
& "$builder\writers\write_androidManifest.ps1" | Out-File -FilePath "$srcDir\AndroidManifest.xml"


# Create MainActivity.java
& "$builder\writers\write_mainActivity.ps1" | Out-File -FilePath "$javaDir\MainActivity.java"


# create some example resource subdirectories and example files in them
Write-Host "creating demo resources..."
# # res/layout/
New-Item -ItemType Directory -Path "$resDir\layout" -Force | Out-Null
& "$builder\writers\write_xml_layout.ps1" | | Out-File -FilePath "$resDir\layout\layout.xml"
# # res/values/
New-Item -ItemType Directory -Path "$resDir\values" -Force | Out-Null
& "$builder\writers\write_xml_strings.ps1" | | Out-File -FilePath "$resDir\values\strings.xml"

# Completion message
Write-Host "Android project '$projectName' setup complete!" -ForegroundColor Green

# SO FAR WE HAVE BUILT THE SHELL CORRECTLY.
# WE EITHER:
# # 1. COPY IN THE MANIFEST, MAINACTIVITY AND SOME RES WITH "COPY" OR SOMETHING
# # 
# # 2. WRITE IN THE CONTENTS MANUALLY, OPTIONALLY WITH SUBMODULES
# UPDATE: TRIED BOTH OF THESE AND MOSTLY WENT WITH 2. 
## UPDATE(2): looks like we're doing write-only; no copying.