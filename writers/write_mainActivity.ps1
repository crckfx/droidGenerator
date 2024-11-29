# write_mainactivity.ps1
$mainActivityContent = @"
package com.$orgName.$appName;  
  
import android.app.Activity;  
import android.os.Bundle;  
import android.widget.TextView;  
  
public class MainActivity extends Activity {  
    @Override  
    public void onCreate(Bundle savedInstanceState) {  
        super.onCreate(savedInstanceState);  
      
        TextView textView = new TextView(this);  
        textView.setText(getString(R.string.helloworld));  
        setContentView(R.layout.layout);
    }  
}  
"@

return $mainActivityContent


