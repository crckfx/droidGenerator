# fake-gradlew.ps1
# For testing the env and arg parsing for the entry point

# Parse command-line arguments
param (
    [string]$app,
    [string]$project,
    [string]$org
)

# Load environment variables
. "$PSScriptRoot\env.ps1"

# Override values from command-line arguments
if ($app) { $appName = $app }
if ($project) { $projectName = $project }
if ($org) { $orgName = $org }

## set some shorthands based on the provided config
$projectRoot = "$devFolder\$projectName"
$appDir = "$projectRoot\app"
$srcDir = "$appDir\src\main"
$javaDir = "$srcDir\java\com\$orgName\$appName"
$resDir = "$srcDir\res"

Write-Host "Here are your values:"

Write-Host @"
-- params --
AppName: $AppName
ProjectName: $ProjectName
-- ------ ---
androidSdkPath: $androidSdkPath
devFolder: $devFolder
builder: $builder
projectName: $projectName
appName: $appName
orgName: $orgName
"@
