package com.app.kasifoodapp;

import java.util.HashMap;
import java.util.Map;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.app.sephatlho.constant.Sephatlho;
import com.app.sephatlho.model.Login;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class RegisterLoginDetailsActivity extends Activity implements OnClickListener {
    private Button buttonRegisterLoginjDetails;
    private EditText editTextEmail;
	private EditText editTextPassword;
	private EditText editTextConfPassword;
	private Spinner spinnerRole;
	private Button buttonRegister;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_register_login_details);
		
		buttonRegisterLoginjDetails = (Button) findViewById(R.id.buttonRegisterLoginDetails);
		buttonRegisterLoginjDetails.setOnClickListener(this);
		
		editTextEmail = (EditText) findViewById(R.id.editTextEmail);
		editTextPassword = (EditText) findViewById(R.id.editTextRegPassword);
		editTextConfPassword = (EditText) findViewById(R.id.editTextRegConfirmPassword);
		spinnerRole = (Spinner) findViewById(R.id.spinnerRole);
		
	}
	
    public boolean validateForm() {
		
		boolean valid = true;
		String name = editTextEmail.getText().toString().trim();
		if (TextUtils.isEmpty(name)) {
			editTextEmail.setError("Email address required");
		   valid = false;
		} else {
			editTextEmail.setError(null);
		}
		
        String surname = editTextPassword.getText().toString().trim();
        if (TextUtils.isEmpty(surname)) {
        	editTextPassword.setError("Password required");
			valid = false;
		} else {
			editTextPassword.setError(null);	
		}
        
        String phone = editTextConfPassword.getText().toString();
        if (TextUtils.isEmpty(phone)) {
        	editTextConfPassword.setError("Password required");
			valid = false;
		} else {
			editTextConfPassword.setError(null);
		}
      
        return valid;

	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.register_login_details, menu);
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
	
	private void lookupUser(final String emailAddress) {
        StringRequest requestUsername = new StringRequest(Request.Method.POST, 
        		Sephatlho.SEPHATLHO_SERVER_URL + Sephatlho.CHECK_USER_URL, 
        		new Response.Listener<String>() {

					@Override
					public void onResponse(String arg0) {
						if (!validateForm()) {
                			return;
                		} else {
                			Login login = new Login(editTextEmail.getText().toString().trim(), 
                					editTextPassword.getText().toString().trim());
                			
                			String role = spinnerRole.getSelectedItem().toString().trim();
             				if (role.equals(Sephatlho.ROLE_CUSTOMER)) {
             					Intent intent = new Intent(RegisterLoginDetailsActivity.this, RegisterPersonalDetailsActivity.class);
             					intent.putExtra(Sephatlho.LOGIN, login);
             					startActivity(intent);
             					finish();
             				} else if (role.equals(Sephatlho.ROLE_OWNER)) {
             					Intent intent = new Intent(RegisterLoginDetailsActivity.this, RegisterPersonalDetailsActivity.class);
             					intent.putExtra(Sephatlho.LOGIN, login);
             					startActivity(intent);
             					finish();
             				} else {
             					Toast.makeText(RegisterLoginDetailsActivity.this, "Please select a role", Toast.LENGTH_LONG).show();
             				}   
                		}
					}
				}, 
				new Response.ErrorListener() {

					@Override
					public void onErrorResponse(VolleyError err) {
						Toast.makeText(RegisterLoginDetailsActivity.this, err.getMessage(), Toast.LENGTH_LONG).show();
					}
				}){
        	@Override
        	protected Map<String, String> getParams()
        			throws AuthFailureError {
        		Map<String, String> map = new HashMap<>();
                map.put(Sephatlho.EMAIL_USERNAME, emailAddress);
                return map;
        	}
        };
        
        RequestQueue queue = Volley.newRequestQueue(RegisterLoginDetailsActivity.this);
        queue.add(requestUsername);
	}

	@Override
	public void onClick(View view) {
		lookupUser(editTextEmail.getText().toString().trim());

		//     Intent intent = new Intent(RegisterLoginDetailsActivity.this, RegisterPersonalDetailsActivity.class);
		//     startActivity(intent);
	    
	}
}
