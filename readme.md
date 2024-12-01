# droidGenerator

### basically we decided to make a set of powershell scripts for generating

## usage
`.\droidGenerator\generator.ps1`

**added params to the usage** `.\droidGenerator\generator.ps1 -app myapp4 -project custom -org dingus`

- **app**: *overwrites **$appName** from env*
    - must be a lower case!
- **project**: *overwrites **$projectName** from env*
- **org**: *overwrites **$orgName** from env*

## what we wanted:
- a **project directory structure**, generated, and adherent to gradle's structural assumptions
- to create a helloWorld (*proof*) with a:  
    - MainActivity.java
    - AndroidManifest.xml
    - layout.xml
- set and use environment variables to write everything
<hr>

### how it works
- there is a **.env** file that sets a bunch of variables
- main script accepts a few flags
- currently it uses a bunch of write scripts and calls them separately
- we don't use any functions yet
