package com.app.kasifoodapp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Activity implements OnClickListener {
	
    private Button buttonLogin;
    private Button buttonCreateAccount;
    private EditText editTextUsername;
    private EditText editTextPassword;
    private Intent intent = null;
    
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		buttonLogin = (Button) findViewById(R.id.buttonLogin);
		buttonLogin.setOnClickListener(this);
		buttonCreateAccount = (Button) findViewById(R.id.buttonCreateAccount);
		buttonCreateAccount.setOnClickListener(this);
		
		editTextUsername = (EditText) findViewById(R.id.editTextUsername);
		editTextPassword = (EditText) findViewById(R.id.editTextPassword);

	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}

	@Override
	public void onClick(View view) {
	    String username = editTextUsername.getText().toString().trim();
	    String password = editTextPassword.getText().toString().trim();
	    
	    String loginDetails = "Username: " + username + "\n" + "Password: " + password;
		if (view == buttonLogin) {
		// Toast.makeText(MainActivity.this, loginDetails, Toast.LENGTH_LONG).show();
		 intent = new Intent(MainActivity.this, RestaurantActivity.class);
		 startActivity(intent);
		} else if (view == buttonCreateAccount) {
		 intent = new Intent(MainActivity.this, RegisterLoginDetailsActivity.class);
		 startActivity(intent);	 
		}
	}
}
