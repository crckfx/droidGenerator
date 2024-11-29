# droidGenerator
## powershell scripts for generating an android project with a gradle wrapper

### initial ideas:
SO FAR WE HAVE BUILT THE DIRECTORY SHELL CORRECTLY.
WE EITHER:
1. COPY IN THE MANIFEST, MAINACTIVITY AND SOME RES WITH "COPY" OR SOMETHING
2. WRITE IN THE CONTENTS MANUALLY, OPTIONALLY WITH SUBMODULES
~~UPDATE: TRIED BOTH OF THESE AND MOSTLY WENT WITH 2.~~
UPDATE(2): looks like we're doing write-only; no copying. Submodules all the way baby

## usage
".\droidGenerator\new-gradlew.ps1"

## more usage
**added params to the usage**
.\droidGenerator\fake-gradlew.ps1 -app "myapp4" -project "custom" -org dingus

- **app**: *overwrites **$appName** from env*
    - must be a lower case!
- **project**: *overwrites **$projectName** from env*
- **org**: *overwrites **$orgName** from env*