# write_androidManifest.ps1
$androidManifestContent = @"
<?xml version="1.0" encoding="utf-8"?> 
<manifest xmlns:android="http://schemas.android.com/apk/res/android"> 
    <application android:label="$appName"> 
        <activity 
            android:name=".MainActivity"
            android:exported="true"
            > 
            <intent-filter> 
                <action android:name="android.intent.action.MAIN" /> 
                <category android:name="android.intent.category.LAUNCHER" /> 
            </intent-filter> 
        </activity> 
    </application> 
</manifest> 

"@

return $androidManifestContent