# write_xml_layout.ps1
$layoutXML = @"
<?xml version="1.0" encoding="utf-8"?> 
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android" 
   android:id="@+id/mainLayout" 
   android:layout_width="match_parent" 
   android:layout_height="match_parent" 
   > 
</RelativeLayout> 
"@
return $layoutXML