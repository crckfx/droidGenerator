# droidGenerator

## helper scripts for generating a new android project with gradle wrapper
SO FAR WE HAVE BUILT THE DIRECTORY SHELL CORRECTLY.
WE EITHER:

1. COPY IN THE MANIFEST, MAINACTIVITY AND SOME RES WITH "COPY" OR SOMETHING
2. WRITE IN THE CONTENTS MANUALLY, OPTIONALLY WITH SUBMODULES
 
UPDATE: TRIED BOTH OF THESE AND MOSTLY WENT WITH 2. 
UPDATE(2): looks like we're doing write-only; no copying.

## usage
".\droidGenerator\new-gradlew.ps1"

## more usage
**added params to the usage**
.\droidGenerator\fake-gradlew.ps1 -app "myapp4" -project "custom" -org dingus

- **app**: *overwrites **$appName** from env*
- **project**: *overwrites **$projectName** from env*
- **org**: *overwrites **$orgName** from env*