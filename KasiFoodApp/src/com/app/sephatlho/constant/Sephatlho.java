package com.app.sephatlho.constant;

public class Sephatlho {
	
	// local
	public static final String SEPHATLHO_SERVER_URL = "http://10.0.2.2/sephatlho/";
//	public static final String SEPHATLHO_SERVER_URL = "https://makalengst.000webhostapp.com/sephatlhofile/sephatlho/";
	
	// online
//	public static final String SEPHATLHO_SERVER_URL = "https://makalengst.000webhostapp.com/sephatlho/sephatlho/";
//	public static final String SHOP_URL = "https://makalengst.000webhostapp.com/sephatlho/sephatlho/getShops.php";
//	public static final String IMAGE_URL = "https://makalengst.000webhostapp.com/sephatlho/sephatlho/images/";
	
	public static final String MENU_URL = Sephatlho.SEPHATLHO_SERVER_URL + "getShopMenu.php?fk_email=";
	public static final String ADD_ORDER_URL = Sephatlho.SEPHATLHO_SERVER_URL + "addOrder.php";

	public static final String LOGIN_URL_CUSTOMER = "http://10.0.2.2/sephatlho/login_user.php";
	public static final String LOGIN_URL_SHOPOWNER = "http://10.0.2.2/sephatlho/login_owner.php";
	public static final String SHOP_URL = "http://10.0.2.2/sephatlho/getShops.php";

//	public static final String MENU_URL = "http://10.0.2.2/sephatlho/getShopMenu.php?fk_owner_id=";
//	public static final String IMAGE_URL = "https://makalengst.000webhostapp.com/sephatlhofile/sephatlho/images/";
    public static final String IMAGE_URL = "http://10.0.2.2/sephatlho/images/";

	// Login details
	public static final String EMAIL = "email";
	public static final String PASSWORD = "password";

	public static final String CUSTOMER = "customer";
	public static final String CUSTO_MER = "Customer";

	// Customer details
	public static final String CUST_ID = "cust_id";
	public static final String CUST_NAME = "cust_name";
	public static final String CUST_SURNAME = "cust_surname";
	public static final String CUST_PHONE = "cust_phone";
	public static final String CUST_EMAIL = "cust_email";
	public static final String CUST_USERNAME = "cust_username";
	public static final String CUST_PASSWORD = "cust_password";
	public static final String CUST_ID_NO = "cust_id_no";

	// Customer order details
	public static final String CUST_ORDER_SHOP_ID = "cust_order_shop_id";
	public static final String CUST_ORDER_SHOP_NAME = "cust_order_shop_name";
	public static final String CUST_ORDER_ID = "cust_order_id";
	public static final String CUST_ORDER_NOTIFICATION = "Order Successfully Placed.";

	// order url
//	public static final String ADD_ORDER_URL = "http://10.0.2.2/sephatlho/addOrder.php";

	// order details
	public static final String ORDER_CUST_ID = "order_cust_id";
	public static final String ORDER_MENU_ITEM_ID = "order_menu_item_id";
	public static final String ORDER_SHOP_ID = "order_shop_id";
	public static final String ORDER_DATE_TIME = "order_date_time";
	public static final String ORDER_ITEM_QTY = "order_item_qty";
	public static final String ORDER_STATUS = "order_status";

	// View customer order
	public static final String ORDER_CUSTOMER_URL = "http://10.0.2.2/sephatlho/order.php?fk_cust_ID=";
	public static final String ORDER_CUSTOMER_ID = "order_customer_id";

	// url to cancel an ordered item
	public static final String ORDER_CANCEL_URL = "http://10.0.2.2/sephatlho/cancel_order.php?order_Id=";
	public static final String USER_INFO = "user";
	public static final String OWNER_INFO = "owner_info";

	// handle query errors
	// shop
	public static final String SQL_ERROR = "ERROR: Could not be able to execute query";
	public static final String SQL_NO_RECORD = "No records matching your query were found.";

	// orders
	public static final String SQL_ERROR_ORDER = "ERROR: Could not query";
	public static final String SQL_NO_RECORD_ORDER = "No records found";
	public static final String SHOPOWNER = "owner";
	public static final String SHOP_OWNER = "Shop Owner";

	public static final String OWNER_NO = "current_owner";

	// Orders in a specific shop
	public static final String ORDERS_IN_SHOP_URL = "http://10.0.2.2/sephatlho/orders_shop.php?fk_owner_id=";
	public static final String ACCEPTED_ORDER_CUSTOMER_URL = "http://10.0.2.2/sephatlho/accepted_orders.php?fk_owner_Id=";
	public static final String ORDER_DELETED = "deleted";

	public static final String KEY_NAME_CUSTOMER = "cname";
	public static final String KEY_SURNAME_CUSTOMER = "csurname";
	public static final String KEY_PHONE_CUSTOMER = "cphone";
	public static final String KEY_EMAIL_CUSTOMER = "cemail";
	public static final String KEY_IDNO_CUSTOMER = "cidno";
	public static final String KEY_USERNAME_CUSTOMER = "cusername";
	public static final String KEY_PASSWORD_CUSTOMER = "cpassword";

	public static final String REGISTER_SHOPOWNER_URL = "http://10.0.2.2/sephatlho/registerShopOwner.php";

	public static final String KEY_NAME_OWNER = "oname";
	public static final String KEY_SURNAME_OWNER = "osurname";
	public static final String KEY_PHONE_OWNER = "ophone";
	public static final String KEY_SHOP_OWNER = "oshop";
	public static final String KEY_ADDRESS_OWNER = "oaddress";
	public static final String KEY_EMAIL_OWNER = "oemail";
	public static final String KEY_IDNO_OWNER = "oidno";
	public static final String KEY_USERNAME_OWNER = "ousername";
	public static final String KEY_PASSWORD_OWNER = "opassword";

	public static final String MENU_IN_SHOP_ID = "m_in_shop_id";
	public static final String MENU_IN_SHOP_NAME = "m_in_shop_name";
	public static final String MENU_IN_SHOP_PRICE = "m_in_shop_price";

	public static final String KEY_SHOP_EMAIL = "fk_shop_email";
	public static final String KEY_MENU_OWNER_ID = "ownerID";
	public static final String KEY_MENU_DESC = "desc";
	public static final String KEY_MENU_PRICE = "price";

	public static final String MENU_OWNER_ID = "owner_ID";

	public static final String MENU_DELETE_URL = "http://10.0.2.2/sephatlho/delete_shopmenu_item.php";

	public static final String UPDATE_FEEDBACK = "update_menu_feedback";

	public static String MENU_SHOP_URL = "http://10.0.2.2/sephatlho/manage_menu.php?fk_owner_id=";

	public static final String ADD_MENU_URL = "http://10.0.2.2/sephatlho/add_menu.php";

	public static final String MENU_SHOP_EMAIL = "fk_shop_email";
	public static final String MENU_DESCRIPTION = "description";
	public static final String MENU_PRICE = "price";

	public static final String DELETE_FEEDBACK = "deleted";

	public static final String UPDATE_SUCCESS_FEEDBACK = "Menu Successfully edited.";
	public static final String DELETE_SUCCESS_FEEDBACK = "Menu Successfully deleted.";

	public static final String UPDATE_MENU_FEEDBACK = "Menu updated";

	public static final String KEY_MENU_ID_DEL = "deleted";

	public static final String KEY_MENU = "menu";

	public static final CharSequence EMPTY_FIELD = "All fields must be completed.";

	public static final String FORGOT_PASSWORD = "forgot_password";

	public static final String ROLE_OWNER = "Shop Owner";

	public static final String ROLE_CUSTOMER = "Customer";

	public static final String LOGIN = "login";

	public static final String KEY_IMG_URL = "image_url";

	public static final String LOGIN_EMAIL = "email";

	public static final String LOGIN_PASSWORD = "password";

	public static final String SHOP_EMAIL = "fk_email_shop";

	public static final String MENU_SHOP = "getMenu.php";

	public static final String ORDER_CUST_EMAIL = "order_cust_email";

	public static final String CUST_ORDER_EMAIL = "order_cust_email";

	public static final String ORDER_SHOP_EMAIL = "order_shop_email";

	public static final String ORDER_MENU_ITEM_PRICE = "order_item_price";

	public static final String ORDER_MENU_ITEM = "order_item_desc";

	public static final String MENU_SHOP_EMAIL_FK = "fk_shp_email";

	public static final String KEY_MENU_ID = "item_id";

	public static final String EMAIL_ADDRESS = "email";

	public static final String EMAIL_USERNAME = "user_email";

	public static final String CHECK_USER_URL = "check_user.php";

	public static final String NEXT = "Next";

	public static final String NEW_PASSWORD = "new_password";

	public static final String CONFIRM_PASSWORD = "new_password_confirm";

	public static final String NEW_PASSWORD_URL_ENDPOINT = "new_password.php";

	public static final String CUSTOMER_ORDER_URL = "customer_orders.php";

	public static final String CUSTOMER_ID = "fk_cust_Id";
	
	public static final String ORDERED_CUST_ID= "order_cust_id";   
	public static final String ORDERED_CUST_DATE_TIME = "order_date_time";

	public static final String ORDER_CUSTOMER_DATE_TIME = "date_time";

	public static final String ORDER_DETAILS_URL = "customer_order_details.php";

	public static final String SHOP_ORDER_DETAILS_URL = "order_details_shop.php";

	public static final String ORDERED_CUST_STATUS = "order_status";

	public static final String ORDER_STATUS_URL = "process_customer_order.php";

	public static final String ORDER_STATUS_UPDATED = "status_updated";

	public static final String ORDER_STATUS_UPDATE = "status_update";

	public static final String CUSTOMER_ORDER = "oustumer_order";

	public static final int NOFICATION_ID = 20;

	public static final int BIG_PICTURE_NOTIFICATION = 30;

	public static final int REQ_ORDER_DETAILS_CODE = 200;

	public static final String ORDER_SHOP = "shop_order";    
	

}
