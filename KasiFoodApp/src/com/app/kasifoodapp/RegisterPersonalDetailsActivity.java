package com.app.kasifoodapp;

import java.util.HashMap;
import java.util.Map;

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
import android.widget.Toast;

public class RegisterPersonalDetailsActivity extends Activity implements OnClickListener {
    private Button buttonPersonalDetails;
	private EditText editTextName;
	private EditText editTextSurname;
	private EditText editTextPhoneNo;
	public static final String REGISTER_CUSTOMER_URL = Sephatlho.SEPHATLHO_SERVER_URL + "registerCustomer.php";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_register_personal_details);
		
		buttonPersonalDetails = (Button) findViewById(R.id.buttonRegisterPersonalDetails);
		buttonPersonalDetails.setOnClickListener(this);
		
		editTextName = (EditText) findViewById(R.id.editTextName);
	    editTextName.requestFocus();

	    editTextSurname = (EditText) findViewById(R.id.editTextSurname);
	    editTextPhoneNo = (EditText) findViewById(R.id.editTextPhone);
	}
	
   public boolean validateForm() {
		
		boolean valid = true;
		
        final String name =  editTextName.getText().toString().trim();
        
        if (TextUtils.isEmpty(name)) {
			editTextName.setError("Name required");
			valid = false;
		} else {
			editTextName.setError(null);
		}
        
        final String surname = editTextSurname.getText().toString().trim();
        if (TextUtils.isEmpty(surname)) {
        	editTextSurname.setError("Surname required");
			valid = false;
		} else {
			editTextSurname.setError(null);
		}
        
        final String phone = editTextPhoneNo.getText().toString().trim();
        if (TextUtils.isEmpty(phone)) {
        	editTextPhoneNo.setError("Phone number required");
			valid = false;
		} else {
			editTextPhoneNo.setError(null);
		}
        
		return valid;
	}
	
	private void register(final String name, final String surname, final String phone, final Login login) {
        if (!validateForm()) {
			return;	
		} else {
        StringRequest stringRequest = new StringRequest(Request.Method.POST, REGISTER_CUSTOMER_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                    	Toast.makeText(RegisterPersonalDetailsActivity.this, response, Toast.LENGTH_LONG).show();
                        Intent intent = new Intent(RegisterPersonalDetailsActivity.this, MainActivity.class);
                        startActivity(intent);
                        finish();
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                       Toast.makeText(RegisterPersonalDetailsActivity.this, error.toString(),Toast.LENGTH_LONG).show();
                    }
                }){
            protected Map<String, String> getParams() {
				
                Map<String, String> map = new HashMap<String, String>();
                map.put(Sephatlho.KEY_NAME_CUSTOMER, name);
                map.put(Sephatlho.KEY_SURNAME_CUSTOMER, surname);
                map.put(Sephatlho.KEY_PHONE_CUSTOMER, phone);
                map.put(Sephatlho.KEY_USERNAME_CUSTOMER, login.getUsername());
                map.put(Sephatlho.KEY_PASSWORD_CUSTOMER, login.getPassword());
				
                return map;
            }
        };

        RequestQueue requestQueue = Volley.newRequestQueue(RegisterPersonalDetailsActivity.this);
        requestQueue.add(stringRequest);
        
	   }
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.register_personal_details, menu);
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
	//	Intent intent = new Intent(RegisterPersonalDetailsActivity.this, MainActivity.class);
	//	startActivity(intent);
		
		 Login login = (Login) getIntent().getSerializableExtra(Sephatlho.LOGIN);
	     
	     final String name =  editTextName.getText().toString().trim();
	     final String surname =  editTextSurname.getText().toString().trim();
	     final String phone =  editTextPhoneNo.getText().toString().trim();

	     register(name, surname, phone, login);
	}
}
