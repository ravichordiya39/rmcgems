<?php

 /*error_reporting(0);

	ini_set('display_errors', 0);  */

class Functions{ 

	protected $db;

	public $date_time;

	public $date;

	public $time;

	private $host ='localhost';

	private $db_user ='rmcgems_rmc';

	private $db_pass ='rmcgems_rmc';

	private $db_name ='rmcgems_rmc';

	public function __construct(){



		$this->db = new mysqli($this->host, $this->db_user, $this->db_pass, $this->db_name);



		if($this->db->connect_error) {



			die('Could Not Connect: ' .$this->db->connect_error);



		}

		date_default_timezone_set("America/Los_Angeles");

		$this->date_time = date('Y-m-d H:i:s');

		$this->time = date('H:i:s');

		$this->date = date('Y-m-d');

	}

	public function base_url(){



		return 'https://dzoneindia.co.in/admin';

	}

	

	public function base_url_front(){



		return 'https://dzoneindia.co.in';

	}

	

	public function start_session(){



		return session_start();

	}

	public function checkLogin(){



		$this->start_session();



		if(@$_SESSION['admin_logged_in']){



			return true;

		}

		else {



			header('Location: '.$this->base_url());

			die();



		}

	}



	public function checkUserLogin(){

		$this->start_session();

		if(@$_SESSION['user_logged_in']){

			return true;

		}

		else {

			header('Location: '.$this->base_url_front());

			die();

		}

	}

	public function admin_url(){

			$ip = $this->getUserIpAddr();

			$this->db->query("INSERT INTO login_activity (comment,date_time) VALUES ('admin url vistied $ip','$this->date_time')");

		}

	

	public function admin_url_submit(){

			$ip = $this->getUserIpAddr();

			$this->db->query("INSERT INTO login_activity (comment,date_time) VALUES ('login form submit vistied $ip','$this->date_time')");

		}

		public function admin_success(){

			$ip = $this->getUserIpAddr();

			$this->db->query("INSERT INTO login_activity (comment,date_time) VALUES ('login success vistied $ip','$this->date_time')");

		}

		public function admin_otp_page(){

			$ip = $this->getUserIpAddr();

			$this->db->query("INSERT INTO login_activity (comment,date_time) VALUES ('opt page vistied $ip','$this->date_time')");

			return TRUE;

		}

		public function admin_otp_submit(){

			$ip = $this->getUserIpAddr();

			$this->db->query("INSERT INTO login_activity (comment,date_time) VALUES ('opt submit $ip','$this->date_time')");

			return TRUE;

		}

		



		public function get_activity(){

			return $this->db->query("SELECT * FROM login_activity ORDER BY id DESC limit 20");

		}



	public function randomCode($length){



        $key = '';

        $keys = array_merge(range(1, 9), array('A','B','C','D','E','F','G','H','I','J','K'));



        for ($i = 0; $i < $length; $i++) {

            $key .= $keys[array_rand($keys)];

        }



        return $key;

    }



	public function randomCodeNum($length){



        $key = '';

        $keys = array_merge(range(1, 9));



        for ($i = 0; $i < $length; $i++){



        	$key .= $keys[array_rand($keys)];



        }



        return $key;

    }



	public function unique_randomCode($table,$unique_col,$prefix,$length){



		$i = 0;



		while($i < 1000){



	    	$code = $this->randomCode($length);



	    	if($prefix != ""){



	    		$code = $prefix.$code;



		    }



	    	$query = $this->db->query("SELECT * FROM $table WHERE $unique_col = '$code'");



	    	if($query->num_rows == 0){



	    		$i = 1000;



	    	}else{



	    		$i++;

	    	}

		}



		return $code;

    }



	public function unique_randomCodeNum($table,$unique_col,$prefix,$length){

		

    	$i = 0;

    	while($i < 1000){



    		$code = $this->randomCodeNum($length);



    		if($prefix != ""){



    			$code = $prefix.$code;

	    	}



	    	$query = $this->db->query("SELECT * FROM $table WHERE $unique_col = '$code'");



	    	if($query->num_rows == 0){



	    		$i = 1000;



	    	}else{



	    		$i++;

	    	}

    	}



    	return $code;

    }



    

	// ------------Admin side --------------------------//

	

	public function admin_login($username,$password){



		$username = htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$username)));

		$password = htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$password)));



		if($username == "" || $password == ""){



			$_SESSION['failed']  =  "<div class='alert alert-error'><button type='button' class='close' data-dismiss='alert'>×</button>

					<strong>ERROR : Please Fill All Mandatory  Fields !</strong> 

					</div>";

			header('Location: index?st=rest');

			exit();

		}



		else{

			

			$pass = sha1($password);

			$res = $this->db->query("SELECT id FROM admins WHERE username='$username' AND password = '$pass'");



			if($res->num_rows == 1){



			   $mobile_no = 8218466195;



				$otp = 123456; //$this->randomCodeNum(8);



				



				/*$msg="http://sms.hspsms.com/sendSMS?username=nattyindia&message=admin login  OTP $otp %0a Thanks.&sendername=NATYIN&smstype=TRANS&numbers=$mobile_no&apikey=4cbab4ea-39c6-4452-bc39-03eae476461e";



					$msg = str_replace(" ", "+", $msg);

					$response = file_get_contents($msg);*/

					$response =TRUE;



					if($response){

						$this->admin_success();

						//$_SESSION['username'] = $username;

						$_SESSION['admin_logged_in'] = TRUE;

						$_SESSION['loginusingotps'] = TRUE;							

						header('Location: dashboard');

						die();

						exit();

				}

			}else{

					$_SESSION['failed']  =  "<div class='alert alert-error'>

					<button type='button' class='close' data-dismiss='alert'>×</button>

					<strong>ERROR : wrong !</strong> 

					</div>";

					$_SESSION['admin_logged_in'] = FALSE;

					header('Location: index?st=rest');

					exit();

				

			}

		}

		return $err;

	}


	public function admin_acty($msg){

			$ip = $this->getUserIpAddr();

			$msg = $msg.$ip;

			$this->db->query("INSERT INTO login_activity (comment,date_time) VALUES ('$msg','$this->date_time')");

			return TRUE;

		}

		public	function getUserIpAddr(){

	    $ipaddress = $_SERVER['SERVER_ADDR'];		

		

		$ip_server_data = array('HTTP_X_REAL_IP', 'HTTP_CF_CONNECTING_IP', 'HTTP_X_FORWARDED_FOR','REMOTE_ADDR');		

		  

		  foreach($ip_server_data as $real_ip){	



			$real_ip = @$_SERVER[$real_ip];



			if($real_ip){		

				

				$ipaddress = $real_ip;

				

				break;

			}	

		}

		return $ipaddress;

	}

	public function change_password(){

		$err = "";



		if(trim($_POST['old_pass']) == "" || trim($_POST['pass']) == "" || trim($_POST['c_pass']) == "" ){



			$err ="<div class='alert alert-error'>

			<button type='button' class='close' data-dismiss='alert'>×</button>

			<strong>ERROR : Fill All Required details</strong> 

			</div>";

		}



	if($err == ""){



		$old_pass=htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$_POST['old_pass'])));

		$pass = htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$_POST['pass'])));

		$c_pass = htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db , $_POST['c_pass'])));



		$sec_passO = sha1($old_pass);

		$sec_passN = sha1($pass);



		if($pass != $c_pass){



			$err ="<div class='alert alert-error'>

			<button type='button' class='close' data-dismiss='alert'>×</button>

			<strong>ERROR : New Password And Confirm Password Must Be same</strong> 

			</div>";



		}else{



			$res = $this->db->query("SELECT * FROM admins WHERE username = 'admin' AND password = '".$sec_passO."'");



			if($res->num_rows > 0){



				$query = $this->db->query("UPDATE admins SET `password` = '".$sec_passN."' WHERE username = 'admin'");



				if($query){



					$err = "<div class='alert alert-success'>

					<button type='button' class='close' data-dismiss='alert'>×</button>

					<strong>SUCCESS : Passowrd Updated  Successfully</strong> 

					</div>";



				}else{



					$err = "<div class='alert alert-error'><button type='button' class='close' data-dismiss='alert'>×</button><strong>ERROR : Please try again</strong></div>";

				}

			}else {



				$err ="<div class='alert alert-error'><button type='button' class='close' data-dismiss='alert'>×</button><strong>ERROR : Wrong Password Provided </strong></div>";

			}

		}

	}

	return $err ;

}

	

	public function userDetail($id){



		$id = htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$id)));		



		$res = $this->db->query("SELECT  * FROM users WHERE id='$id'");

		if($res){

			return $res->fetch_assoc();

		}		

	}

	//---------Fron End Member Registration Form--------------//

	
	public function changePass($user,$old_pass,$pass){

		$old_pass =sha1($old_pass);

		$pass 	  =sha1($pass);

		$new_pass =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$pass)));

		$old_pass =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$old_pass)));



		$res =$this->db->query("SELECT id FROM users WHERE id='$user' and password='$old_pass'");

		if($res->num_rows > 0){



			$res =$this->db->query("UPDATE users SET password='$pass' WHERE id='$user'");

			if($res){



				return TRUE;

			}

		}else{

			$_SESSION['failed'] ='Invalid Old Password !';

        header('Location: changepass');

        exit;

		}

	}

	

	public function updateProfile($user_id,$address,$town,$city,$pincode,$state){

		

		$address 		 = $this->xss_clean($address);

    	$town  			 = $this->xss_clean($town);

		$city 			 = $this->xss_clean($city);

    	$pincode   		 = $this->xss_clean($pincode);

		$state   		 = $this->xss_clean($state);

		

		$res =$this->db->query("update frenchise_users SET  address='$address',

															town='$town',

															city='$city',

															pincode='$pincode',

															state='$state' 

															where id='$user_id'

															");

		

		if($res){

			$_SESSION['success'] ='Profile Updated Successfully';

			header('Location: profile');

			exit;

		}

		else

		{

			$_SESSION['failed'] ='Error Occured !';

			header('Location: profile');

			exit;

			

		}

	}	





	public function profile($user){



    	$user = $this->xss_clean($user); 

		

		$res = $this->db->query("SELECT * FROM frenchise_users WHERE username = '$user'");

		$result = "";

		if($res->num_rows > 0){

			$result = $res->fetch_assoc();

		}

		return $result;

	}

	

	

	public function get_where_custom_order_by($table,$col,$value,$order_by,$order){



		$table    = $this->xss_clean($table);

		$col      = $this->xss_clean($col);

		$value    = $this->xss_clean($value);

		$order    = $this->xss_clean($order);

		$order_by = $this->xss_clean($order_by);



		$res = $this->db->query("SELECT * FROM $table WHERE $col = '$value' ORDER BY $order_by $order");

		$data_ar = [];

		if($res->num_rows > 0){

			$data = $res->fetch_row();

		}

		

		return $data;

	}



	public function get_num_rows($table,$col,$value){



		$table    = $this->xss_clean($table);

		$col      = $this->xss_clean($col);

		$value    = $this->xss_clean($value);



		$res = $this->db->query("SELECT * FROM $table WHERE $col = '$value'");

		$data_ar = [];

		return $res->num_rows;

	}

	

	



	public function get_where_custom_order_by_assoc($table,$col,$value,$order_by,$order,$start,$limit){



		$table    = $this->xss_clean($table);

		$col      = $this->xss_clean($col);

		$value    = $this->xss_clean($value);

		$order    = $this->xss_clean($order);

		$order_by = $this->xss_clean($order_by);

    	$start 	  = $this->xss_clean($start); 

    	$limit    = $this->xss_clean($limit); 



		 $res = $this->db->query("SELECT * FROM $table WHERE $col = '$value' ORDER BY $order_by $order LIMIT $start,$limit");

		 $data_ar = array();

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

			

		}



		return $data_ar;

	}



	public function get_where_custom_order_by_query($table,$col,$value,$order_by,$order){



		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$order_by = $this->xss_clean($order_by);

		$order = $this->xss_clean($order);

		

		$res = $this->db->query("SELECT * FROM $table WHERE $col = '$value' ORDER BY $order_by $order");

		return $res;

	}

	

	public function get_where_custom_order_by_staus($table,$col,$value,$order_by,$order){



		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$order_by = $this->xss_clean($order_by);

		$order = $this->xss_clean($order);



		$res = $this->db->query("SELECT * FROM $table WHERE $col = '$value' and status='$order_by'");

		return $res;

	}

	

	

	public function update_by_status($table,$col,$value,$where,$where_val){



		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$where = $this->xss_clean($where);

		$where_val = $this->xss_clean($where_val);

	//echo "Update $table SET $col='$value' where $where='$where_val'"; die;

		$res = $this->db->query("Update $table SET $col='$value' where $where='$where_val'");

		return $res;

	}
	

	public function event_image_delete($id){



		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT image FROM banners WHERE id='$id'");



	 	if($res->num_rows > 0){



	 		$data  =$res->fetch_assoc();

	 		$image =$data['image']; 

	 		unlink("./image/$image");



	 		$res1 =$this->db->query("DELETE FROM banners WHERE id='$id'");



	 		if($res1){



	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}




	public function get1($table,$status){



		$table = $this->xss_clean($table);

		$status = $this->xss_clean($status);



		$res = $this->db->query("SELECT * FROM $table WHERE status = '$status' ORDER BY id DESC");

		$users_ar = [];

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$users_ar[] = $data;

			}

		}

		return $users_ar;

	}





	public function get_order_by($table,$order_by,$order){



		$table = $this->xss_clean($table);

		$order_by = $this->xss_clean($order_by);

		$order = $this->xss_clean($order);

		

		$res = $this->db->query("SELECT * FROM $table ORDER BY $order_by $order ");

		$data_ar = array();

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

		}

		return $data_ar;

	}


	public function get_order_by2($table,$order_by,$order){



		$table = $this->xss_clean($table);

		$order_by = $this->xss_clean($order_by);

		$order = $this->xss_clean($order);



		$res = $this->db->query("SELECT * FROM $table ORDER BY $order_by $order LIMIT 0,500 ");

		$data_ar = array();

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

		}

		return $data_ar;

	}



	public function get_where($table,$id){



		$table = $this->xss_clean($table);

		$id    = $this->xss_clean($id);



		$res = $this->db->query("SELECT * FROM $table WHERE id = '$id' ");

		if($res->num_rows > 0){

			return $res->fetch_assoc();

		}	

	}

	public function get_where_name($table,$username){

		$table = $this->xss_clean($table);

		$username = $this->xss_clean($username);



		$res = $this->db->query("SELECT name FROM $table WHERE mobile = '$username'");

		if($res->num_rows > 0){

			return $res->fetch_assoc();

		}

		else

		{

			return false;

		}	

	}

	

	



	public function get_custom_col($table,$col="*",$where,$value){ 



		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$where = $this->xss_clean($where);



		//echo "SELECT $col FROM $table WHERE $where='$value'";die;

			$res = $this->db->query("SELECT $col FROM $table WHERE $where='$value'");

		if($res->num_rows>0)

		{

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

		}

		return $data_ar;

	}



    

    public function get_count($table,$col,$value,$count){

		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$count = $this->xss_clean($count);

	

    	$res = $this->db->query("SELECT count($count) as count FROM $table WHERE $col = '$value'");

    	$count = $res->fetch_assoc();

    	return $count['count'];

    }

    public function get_count_all($table,$count){



		$table = $this->xss_clean($table);

		$count = $this->xss_clean($count);



    	$res = $this->db->query("SELECT count($count) as count FROM $table ");

    	$count = $res->fetch_assoc();

    	return $count['count'];

    }



    public function get_sum($table,$col,$value,$sum){



		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$sum = $this->xss_clean($sum);



    	$res = $this->db->query("SELECT sum($sum) as sum FROM $table WHERE $col = '$value'");

    	$sum = $res->fetch_assoc();

    	return round($sum['sum'],2);

    }

    public function get_sum_value($table,$sum){

		$table = $this->xss_clean($table);

		$sum = $this->xss_clean($sum);





    	$res = $this->db->query("SELECT sum($sum) as sum FROM $table");

    	$sum = $res->fetch_assoc();

    	return round($sum['sum'],2);

    }

    public function get_sum1($table,$col,$value,$sum){

		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);

		$sum = $this->xss_clean($sum);



    	$res = $this->db->query("SELECT sum($sum) as sum FROM $table WHERE $col = '$value' AND status = 'Success'");

    	$sum = $res->fetch_assoc();

    	return round($sum['sum'],2);

    }



 

	public function getUserDetails($user){



	  $user  =$this->xss_clean($user);

	  $res   =$this->db->query("SELECT name, mobile, email, city, pan, adhar, ac_no, ifsc FROM users WHERE id='$user'");

	  $data =$res->fetch_assoc();

	  return $data;

	}



	public function changeDateToTimeDate($date)

	{		

		return date('h:i A d M Y', strtotime($date));

	}

		

	

	public function AddLocation($city){

		$city = $this->xss_clean($city);



		$res = $this->db->query("INSERT INTO locations (name) VALUES ('$city')");

		return TRUE;

	}

	public function Setup($private_key, $public_key) {

		$this->private_key = $private_key;

		$this->public_key = $public_key;

		$this->ch = null;

	}



	public function delete($table,$id){



 		$table =$this->xss_clean($table);

 		$id    =$this->xss_clean($id);



 		$query =$this->db->query("DELETE FROM $table WHERE id='$id'");



 		if($query){

 		

 			return true;

 		}

 	} 

  

	public function update_admin_with($id,$status){



		$id 	=$this->xss_clean($id);

		$status =$this->xss_clean($status);

		

		$res =$this->db->query("SELECT id FROM withdrawals WHERE id='$id' AND status='Pending' AND admin_status='Pending'");



		if($res->num_rows=='1'){

			

			$this->db->query("UPDATE withdrawals SET admin_status='Success' WHERE id='$id'");

			return true;



		}else{

			return false;

		}

	}







	public function xss_clean($value){



		return htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$value)));

	}


	public function updatePassword($old_password,$password,$cpassword,$redirect){



		$old_pass 	  =$this->xss_clean($old_password);

    	$new_password =$this->xss_clean($password);

    	$cpassword =$this->xss_clean($cpassword);

    	$username 	  =$_SESSION['username'];



    	if($old_pass=="" || $new_password=="" || $cpassword=="" ){



			$_SESSION['failed']='old password, new password, Confirm Password fields are required!';

			header('Location:'.$redirect);

			exit();

        }



    	if ($new_password==$old_pass) {



			$_SESSION['failed']='New password and old password must be different!';

			header('Location:'.$redirect);

			exit();

		}



		if ($new_password!=$cpassword) {



			$_SESSION['failed']='New password and Confirm password must be same!';

			header('Location:'.$redirect);

			exit();

		}



		$old_pass =sha1($old_pass);

		$pass 	  =sha1($new_password);



		if (strlen($new_password) < 6){



			$_SESSION['failed']='Password must have six character in length.';

			header('Location:'.$redirect);

			exit();

		}



		if (strlen($new_password) > 25){



			$_SESSION['failed']='Password must not be grater than 25 character in length.';

			header('Location:'.$redirect);

			exit();

		}



		if (preg_match('/\s/',$new_password)){

			

			$_SESSION['failed']='You can not use any space in password.';

			header('Location:'.$redirect);

			exit();



		}

	

		$res =$this->db->query("SELECT id FROM users WHERE username = '$username' and password = '$old_pass' ");

		

		if($res->num_rows == 0){



			$_SESSION['failed']='Invalid Old Password!';

			header('Location:'.$redirect);

			exit();

		}



		$res =$this->db->query("UPDATE users SET password='$pass'  WHERE username='$username'");

		

		if($res){



			$_SESSION['success']='Password updated successfully!';

			header('Location:'.$redirect);

			exit();

		}

		

		$_SESSION['failed']='Try again later!';

			header('Location:'.$redirect);

			exit();

	}

	public function get_where_custom_value($level,$users){



		$users = $this->xss_clean($users);

		$level = $this->xss_clean($level);



		$res = $this->db->query("SELECT user_id,name,status,business,invested,date_time FROM downline,users WHERE downline.level = '$level'  AND downline.sponser_id='$users' AND downline.user_id=users.username");

		$data_ar = [];

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

		}

		return $data_ar;

	}





	public function forgotPassword($user_id,$email){



		$username =$this->xss_clean($user_id);

		$email   =$this->xss_clean($email);



    	if($email=="" || $username==""){



			$_SESSION['failed'] ="email fields is required!";

			header('Location:forgot');

			exit();        

        }



		$res =$this->db->query("SELECT name,email,mobile FROM frenchise_users WHERE username='$username' AND email='$email'");

		

		if($res->num_rows == 0){



			$_SESSION['failed'] ="Email and user Id Not matched, please try again!";

			header('Location:forgot');

			exit();        

		}



		$data      =$res->fetch_assoc(); 

		$name      =$data['name'];

		$email     =$data['email'];

		$mobile    =$data['mobile'];

		$pass      =rand(100000,999999);

		$password  =sha1($pass);

		$pass1     =rand(100000,999999);

		$password1 =sha1($pass1);



		$sub ='Password for Aglobetrading';



		$headers  = 'MIME-Version: 1.0' . "\r\n";

		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

		$headers .= 'From: noreply@aglobetrading.com' . "\r\n";

		$headers .= 'Reply-To: noreply@aglobetrading.com' . "\r\n";

		$headers .= 'X-Mailer: PHP/' . phpversion();



		$message  = '<html><body style ="background-color:#000; color:#fff;">';

		$message  = $message.'<div style ="margin: 25px;">';

		$message  = $message.'<center><img src="https://aglobetrading.com/img/logos/logo.png" style ="margin: 25px;"></center>';

		$message  = $message.'<center><h3>Dear '.$name.'</h3>';

		$message  = $message.'<h4> Your login details is</h4>';

		$message  = $message.'<h5>User ID : '.$username.'</h5>';

		$message  = $message.'<h5>password: '.$pass.'</h5>';

		$message  = $message.'<h5>Transaction password: '.$pass1.'</h5>';

		$message  = $message.'<p>Aglobetrading,</p>';

		$message  = $message.'</center>';

		$message  = $message.'</div>';

		$message .= '</body></html>';



		$mm =mail($email,$sub,$message,$headers);

					

		if($mm){



			$res =$this->db->query("UPDATE frenchise_users SET password='$password',sec_code='$password1' WHERE username='$username'");	

			$_SESSION['success'] ="Password changed successfully, Please check your registered Email!";

			header('Location:forgot');

			exit();   

		}

			

		$_SESSION['failed'] ="Sorry! Try again later!";

		header('Location:forgot');

		exit();   

		

	}



	public function get_country(){



		return $this->db->query("SELECT id,name,phonecode FROM countries");

	}



	

	public function get_countryname($id){





		$id = $this->xss_clean($id);

		$res = $this->db->query("SELECT name FROM countries WHERE id = '$id'");

		return $res->fetch_object()->name;



	}

	



/* new funcitons */



	public function get_custom_order_by($table,$order_by,$order,$col="",$value=""){



		$table    =$this->xss_clean($table);

		$col      =$this->xss_clean($col);

		$value    =$this->xss_clean($value);

		$order    =$this->xss_clean($order);

		$order_by =$this->xss_clean($order_by);



		if($col=="" || $value==""){		



			return $this->db->query("SELECT * FROM $table ORDER BY $order_by $order");

			

		}else{



			return $this->db->query("SELECT * FROM $table WHERE $col='$value' ORDER BY $order_by $order");

		}

	}	

 	public function send_otp_by_email($email,$code,$name){



 		$email = $this->xss_clean($email);

 		$code  = $this->xss_clean($code);

 		$name  = $this->xss_clean($name);



		$sub ='OTP Verification';



		$headers  ='MIME-Version: 1.0' . "\r\n";

		$headers .='Content-type: text/html; charset=iso-8859-1' . "\r\n";

		$headers .='From: info@aglobetrading.com' . "\r\n";

		$headers .='Reply-To: info@aglobetrading.com' . "\r\n";

		$headers .='X-Mailer: PHP/' . phpversion();



		$message ='<html><body style ="background-color:#000; color:#fff;">';

		$message =$message.'<div style ="margin: 25px;">';

		$message =$message.'<center><img src="https://aglobetrading.com/img/logos/logo.png" style ="margin: 25px;"></center>';

		$message =$message.'<center><h3>Dear '.$name.'</h3>';

		$message =$message.'<h5>Your otp number is : '.$code.'</h5>';

		$message =$message.'<p>Team Aglobetrading,</p>';

		$message =$message.'<p>www.aglobetrading.com</p></center>';

		$message =$message.'</div>';

		$message .='</body></html>';



		$mm = mail($email,$sub,$message,$headers);

		if($mm){

			return true;

		}else{

			return false;

		}

	}
	

	public function get_user_order_by_status($table,$status){



		$table =$this->xss_clean($table);

		$status   =$this->xss_clean($status);

		$res =$this->db->query("SELECT * FROM $table WHERE status='$status'");

	//	echo "SELECT * FROM $table WHERE status=$status";

    	$data_ar = array();

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

		}

		return $data_ar;

    	

    }
	

 public function updateUserbyadmin($user,$name,$username,$earnings,$pass,$amount,$mobile,$email,$txnpass)

	 {

		$user =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$user)));

		$name =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$name)));

		$username =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$username)));

		$earnings =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$earnings)));

		$pass =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$pass)));

		$amount =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$amount)));

		$e_amount =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$e_amount)));

		$main_wallet =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$main_wallet)));

		$mobile =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$mobile)));

		$email =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db ,$email)));

		$with_status =htmlspecialchars(strip_tags(mysqli_real_escape_string($this->db,$with_status)));

		

	 	$this->db->query("UPDATE users SET name='$name', password='$pass', mobile='$mobile', email ='$email', sec_code='$txnpass' WHERE id='$user'");



		$ip =$this->getUserIpAddr();



		$order_id =234567546;



		$now =time();

		return TRUE;

  }



















/// DZONE WORK BY RAVI

// get data from table

public function get($table){

	$table = $this->xss_clean($table);

	$res   = $this->db->query("SELECT * FROM $table");

	$data_ar = array();

	if($res->num_rows > 0){

		while($data = $res->fetch_assoc()){

			$data_ar[] = $data;

		}

	}

	return $data_ar;

}

public function get_where_custom($table,$col,$value){



		$table = $this->xss_clean($table);

		$col = $this->xss_clean($col);

		$value = $this->xss_clean($value);



		$res = $this->db->query("SELECT * FROM $table WHERE $col = '$value' ");

		$data_ar = [];

		if($res->num_rows > 0){

			while($data = $res->fetch_assoc()){

				$data_ar[] = $data;

			}

		}

		return $data_ar;

	}


// upload logo 

public function addLogo(){

	if($_FILES['image']['name']!=''){		

	   $fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
		
	 /*  $width = $fileinfo[0];

	   $height = $fileinfo[1];

	   if($width > 500 || $height > 300)

	   {

		   $_SESSION['failed'] ='<div class="alert alert-danger">Image dimension should be within  350 X 150</div>';

		   header('Location: event_image');

		   exit;

	   } */
	   
		$name =time().$this->randomCode(5);

	   $new_name =$name;
	   $ext  =strstr($_FILES["image"]["name"],".");
	   $new_name =$name.$ext;
	 
	   if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/logo/".$new_name)){
	
			$res =$this->db->query("UPDATE settings SET logo='$new_name'");

			if($res){

				header('Location: upload_logo.php');

				return TRUE;

			   exit;

			}

		}
	
	   

	}	

}

/// add menus 
	
	public function addMenus($menu_name){

		$menu_name  = $this->xss_clean($menu_name);
		
		if($menu_name == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Menu name cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: add-menu');

			exit;	

			
		}
	  
			$res =$this->db->query("INSERT into menus SET name='$menu_name',
														  created='$this->date_time'
														  ");

			if($res){

				header('Location: add-menu');

				return TRUE;

			   exit;

			}

		}
	
	public function deleteMenus($id){


		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT name FROM menus WHERE id='$id'");



	 	if($res->num_rows > 0){
 		

	 		$res1 =$this->db->query("DELETE FROM menus WHERE id='$id'");


	 		if($res1){


	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function editMenus($id,$menu_name,$status){
		
		$menu_name  = $this->xss_clean($menu_name);
		$status  = $this->xss_clean($status);
		
		if($menu_name == '' || $status == '' )
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Menu name OR status cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: edit-menu?id='.$id.'&action=edit');

			exit;	

			
		}
		
		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT name FROM menus WHERE id='$id'");

	 	if($res->num_rows > 0){
 		
				$res1 =$this->db->query("UPDATE menus SET name='$menu_name',
													  status='$status'
													  
													  WHERE id='$id'");


	 		if($res1){


	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	
	public function add_image_gallery(){

 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
		/*	if($width > 350 || $height > 150)
			{
				$_SESSION['failed'] ='<div class="alert alert-danger">Image dimension should be within  350 X 150</div>';
				header('Location: event_image');
				exit;
			} */


	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;

			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/banners/".$new_name)){

			 	$res =$this->db->query("INSERT INTO banners(image)VALUES('$new_name')");

			 	if($res){

		 		    header('Location: event_image.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
			
 		}	
 	}
	
	public function addRmcStoryRightImage(){

 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
		/*	if($width > 350 || $height > 150)
			{
				$_SESSION['failed'] ='<div class="alert alert-danger">Image dimension should be within  350 X 150</div>';
				header('Location: event_image');
				exit;
			} */


	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;

			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-story-right-section/".$new_name)){

			 	$res =$this->db->query("UPDATE home_sections SET rmc_story_right='$new_name'");

			 	if($res){

		 		    header('Location: rmc-story.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
			
 		}	
 	}
	
	
	public function addRmcStoryLeft($rmc_story_left){

	//	$rmc_story_left  = mysql_real_escape_string($rmc_story_left);
			$rmc_story_left  =	htmlspecialchars($rmc_story_left, ENT_QUOTES);
	
		if($rmc_story_left == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Field cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-story');

			exit;	

		}
		
			$res =$this->db->query("UPDATE home_sections SET rmc_story_left = '".($rmc_story_left)."'");

			if($res){

		 	    header('Location: rmc-story.php');
		 		return TRUE;
		        exit;
			
				}
		}
	
	public function addRmcProducts($product_name,$product_image,$product_description){
		
		$product_name  =	$this->xss_clean($product_name);
	 	$product_description  =	htmlspecialchars($product_description, ENT_QUOTES);
	
		if($product_name == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Product name cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-products');

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-products/".$new_name)){

			 	$res =$this->db->query("Insert into rmc_products SET product_name='$product_name',
																	 product_image='$new_name',
																	 product_description='$product_description',
																	 created='$this->date_time'
																	 ");

			 	if($res){

		 		    header('Location: rmc-products.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function updateRmcProducts($product_name,$product_image,$product_description,$id){
		
		$product_name  =	$this->xss_clean($product_name);
		$id  =	$this->xss_clean($id);
	 	$product_description  =	htmlspecialchars($product_description, ENT_QUOTES);
	
		if($product_name == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Product name cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: edit-rmc-products');

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-products/".$new_name)){

			 	$res =$this->db->query("update rmc_products SET      product_name='$product_name',
																	 product_image='$new_name',
																	 product_description='$product_description'
																	 where id='$id'
																	 ");

			 	if($res){

		 		    header('Location: edit-rmc-products.php?id='.$id);
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
		
 	}
	
	public function rmcProductDelete($id){

		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT id FROM rmc_products WHERE id='$id'");


	 	if($res->num_rows > 0){


	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("DELETE FROM rmc_products WHERE id='$id'");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	
	public function addRmcLeftInfrastructure(){

 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;

			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infra/".$new_name)){

			 	$res =$this->db->query("UPDATE home_sections SET rmc_infra_left='$new_name'");

			 	if($res){

		 		    header('Location: rmc-infrastructure.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
			
 		}	
 	}
	
	
	public function addRmcRightInfrastructure($rmc_story_left){

	//	$rmc_story_left  = mysql_real_escape_string($rmc_story_left);
			$rmc_story_left  =	htmlspecialchars($rmc_story_left, ENT_QUOTES);
	
		if($rmc_story_left == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Field cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-infrastructure');

			exit;	

		}
		
			$res =$this->db->query("UPDATE home_sections SET rmc_infra_right = ('$rmc_story_left')");

			if($res){

		 	    header('Location: rmc-story.php');
		 		return TRUE;
		        exit;
			
				}
		}
	
	public function addRmcAwards($award_title,$product_image,$product_description){
		
		$award_title  =	$this->xss_clean($award_title);
	 	$product_description  =	htmlspecialchars($product_description, ENT_QUOTES);
	
		if($award_title == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Award Title cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-story');

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-awards/".$new_name)){

			 	$res =$this->db->query("Insert into rmc_awards SET award_title='$award_title',
																	 award_image='$new_name',
																	 year='$product_description',
																	 created='$this->date_time'
																	 ");

			 	if($res){

		 		    header('Location: rmc-awards.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function updateRmcAwards($award_title,$product_image,$product_description,$id){
		
		$award_title  =	$this->xss_clean($award_title);
		$id  =	$this->xss_clean($id);
	 	$product_description  =	htmlspecialchars($product_description, ENT_QUOTES);
	
		if($award_title == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Award Title cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: edit-rmc-awards?id='.$id);

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-awards/".$new_name)){

			 	$res =$this->db->query("update rmc_awards SET 		 award_title='$award_title',
																	 award_image='$new_name',
																	 year='$product_description'
																	 where id='$id'
																	  ");

			 	if($res){

		 		    header('Location: edit-rmc-awards?id='.$id);
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function rmcAwardsDelete($id){

		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT id FROM rmc_awards WHERE id='$id'");


	 	if($res->num_rows > 0){


	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("DELETE FROM rmc_awards WHERE id='$id'");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	
	public function addRmcNews($news_title,$news_badge,$news_date,$news_description,$news_image){
		
		$news_title  =	$this->xss_clean($news_title);
		$news_badge  =	$this->xss_clean($news_badge);
		$news_date  =	$this->xss_clean($news_date);
	 	$news_description  =	htmlspecialchars($news_description, ENT_QUOTES);
	
		if($news_title == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">News Title cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-news');

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-news/".$new_name)){

			 	$res =$this->db->query("Insert into rmc_news SET 	news_title='$news_title',
																	 news_badge='$news_badge',
																	 news_year='$news_date',
																	 news_image='$new_name',
																	 news_description='$news_description',
																	 created='$this->date_time'
																	 ");

			 	if($res){

		 		    header('Location: rmc-news.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function updateRmcNews($news_title,$news_badge,$news_date,$news_description,$news_image,$id){
		
		$news_title  =	$this->xss_clean($news_title);
		$id  =	$this->xss_clean($id);
		$news_badge  =	$this->xss_clean($news_badge);
		$news_date  =	$this->xss_clean($news_date);
	 	$news_description  =	htmlspecialchars($news_description, ENT_QUOTES);
	
		if($news_title == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">News Title cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: edit-rmc-news?id='.$id);

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-news/".$new_name)){

			 	$res =$this->db->query("update rmc_news SET 	     news_title='$news_title',
																	 news_badge='$news_badge',
																	 news_year='$news_date',
																	 news_image='$new_name',
																	 news_description='$news_description'
																	 where id='$id'
																	
																	 ");

			 	if($res){

		 		    header('Location: edit-rmc-news.php?id='.$id);
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function rmcNewsDelete($id){

		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT id FROM rmc_news WHERE id='$id'");


	 	if($res->num_rows > 0){


	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("DELETE FROM rmc_news WHERE id='$id'");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function addRmcContact($title,$address,$phone,$fax,$email,$website,$image){
		
		$title  =	$this->xss_clean($title);
		$address  =	$this->xss_clean($address);
		$phone  =	$this->xss_clean($phone);
		$fax  =	$this->xss_clean($fax);
		$email  =	$this->xss_clean($email);
		$website  =	$this->xss_clean($website);
	 	
	
		if($title == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Title cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-contact-us');

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-contact/".$new_name)){

			 	$res =$this->db->query("Insert into rmc_contact SET  contact_title='$title',
																	 contact_address='$address',
																	 contact_phone='$phone',
																	 contact_image='$new_name',
																	 contact_fax='$fax',
																	 created='$this->date_time',
																	  contact_email='$email',
																	 contact_website='$website'
																	 ");

			 	if($res){

		 		    header('Location: rmc-contact-us.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function updateRmcContact($title,$address,$phone,$fax,$email,$website,$image,$id){
		
		$title  =	$this->xss_clean($title);
		$id  =	$this->xss_clean($id);
		$address  =	$this->xss_clean($address);
		$phone  =	$this->xss_clean($phone);
		$fax  =	$this->xss_clean($fax);
		$email  =	$this->xss_clean($email);
		$website  =	$this->xss_clean($website);
	 	
	
		if($title == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Title cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: edit-rmc-contact-us?id='.$id);

			exit;	

		}
		
 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-contact/".$new_name)){

			 	$res =$this->db->query("update rmc_contact SET  	contact_title='$title',
																	 contact_address='$address',
																	 contact_phone='$phone',
																	 contact_image='$new_name',
																	 contact_fax='$fax',
																	 created='$this->date_time',
																	  contact_email='$email',
																	 contact_website='$website'
																	 where id='$id'
																	 ");

			 	if($res){

		 		    header('Location: rmc-contact-us.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function rmcContactDelete($id){

		$id  =$this->xss_clean($id);

	 	$res =$this->db->query("SELECT id FROM rmc_contact WHERE id='$id'");


	 	if($res->num_rows > 0){


	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("DELETE FROM rmc_contact WHERE id='$id'");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	
	public function addLeftCSR($below_content,$image){
		
		
		$below_content  =	htmlspecialchars($below_content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update home_sections SET    csr_left_image = '$new_name',
																	csr_below_content ='$below_content'
																	 ");

			 	if($res){

		 		    header('Location: rmc-csr.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addRightCSR($image){
		
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update home_sections SET    csr_right_image = '$new_name'
																	
																	 ");

			 	if($res){

		 		    header('Location: rmc-csr.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addRmcTopHeader($contact,$email,$fb,$instagram,$pinterest,$twitter,$youtube){
		
		
		$contact  =	$this->xss_clean($contact);
		$email  =	$this->xss_clean($email);
		$fb  =	$this->xss_clean($fb);
		$instagram  =	$this->xss_clean($instagram);
		$pinterest  =	$this->xss_clean($pinterest);
		
		$twitter  =	$this->xss_clean($twitter);
	 	$youtube  =	$this->xss_clean($youtube);
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		

		$res =$this->db->query("update top_header SET 		contact='$contact',
															email='$email',
															fb='$fb',
															instagram='$instagram',
															pinterest='$pinterest',
															twitter='$twitter',
															youtube='$youtube'
															 ");

			 	if($res){

		 		    header('Location: rmc-top-header.php');
		 			return TRUE;
		            exit;
			 	}
		 
 	}
	
	public function addRmcBottomFooter($footer_text){
		
		
		$footer_text  =	htmlspecialchars($footer_text, ENT_QUOTES);
		
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		

		$res =$this->db->query("update settings SET bottom_footer='$footer_text' ");

			 	if($res){

		 		    header('Location: rmc-bottom-footer.php');
		 			return TRUE;
		            exit;
			 	}
		 
 	}
	
	public function addRmcContactForm($rmc_contact_form){

	//	$rmc_story_left  = mysql_real_escape_string($rmc_story_left);
			$rmc_contact_form  =	htmlspecialchars($rmc_contact_form, ENT_QUOTES);
	
		if($rmc_contact_form == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Contact Form cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: rmc-contact-page');

			exit;	

		}
		
			$res =$this->db->query("UPDATE contact_sections SET contact_form = '".($rmc_contact_form)."'");

			if($res){

		 	    header('Location: rmc-contact-page.php');
		 		return TRUE;
		        exit;
			
				}
		}
	
	public function addCompanyFirstSection($below_content,$image){
		
		
		$below_content  =	htmlspecialchars($below_content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-company/".$new_name)){

			 	$res =$this->db->query("update company_sections SET    banner_image = '$new_name',
																	   below_content ='$below_content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-company-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addCompanySecondSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-company/".$new_name)){

			 	$res =$this->db->query("update company_sections SET    second_section_image = '$new_name',
																	   second_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-company-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addCompanyThirdSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-company/".$new_name)){

			 	$res =$this->db->query("update company_sections SET    third_section_image = '$new_name',
																	   third_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-company-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
		public function addCompanyFourthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-company/".$new_name)){

			 	$res =$this->db->query("update company_sections SET    fourth_section_image = '$new_name',
																	   fourth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-company-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addCompanyFifthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-company/".$new_name)){

			 	$res =$this->db->query("update company_sections SET    fifth_section_image = '$new_name',
																	   fifth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-company-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function addCompanySixthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-company/".$new_name)){

			 	$res =$this->db->query("update company_sections SET    sixth_section_image = '$new_name',
																	   sixth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-company-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function addGemstoneFirstSection($image){
		
		
	//	$below_content  =	htmlspecialchars($below_content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-gemstone/".$new_name)){

			 	$res =$this->db->query("update gemstone_sections SET    banner_image = '$new_name'
																	   	");

			 	if($res){

		 		    header('Location: rmc-gemstone-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addGemstoneSecondSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-gemstone/".$new_name)){

			 	$res =$this->db->query("update gemstone_sections SET    second_section_image = '$new_name',
																	   second_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-gemstone-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addGemstoneThirdSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-gemstone/".$new_name)){

			 	$res =$this->db->query("update gemstone_sections SET    third_section_image = '$new_name',
																	   third_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-gemstone-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
		public function addGemstoneFourthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-gemstone/".$new_name)){

			 	$res =$this->db->query("update gemstone_sections SET    fourth_section_image = '$new_name',
																	   fourth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-gemstone-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addGemstoneFifthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-gemstone/".$new_name)){

			 	$res =$this->db->query("update gemstone_sections SET    fifth_section_image = '$new_name',
																	   fifth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-gemstone-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function addGemstoneSixthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-gemstone/".$new_name)){

			 	$res =$this->db->query("update gemstone_sections SET    sixth_section_image = '$new_name',
																	   sixth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-gemstone-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addInfrastructureFirstSection($below_content,$image){
		
		
		$below_content  =	htmlspecialchars($below_content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infrastructure/".$new_name)){

			 	$res =$this->db->query("update infrastructure_sections SET    banner_image = '$new_name',
																	   below_content ='$below_content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-infrastructure-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addInfrastructureSecondSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infrastructure/".$new_name)){

			 	$res =$this->db->query("update infrastructure_sections SET    second_section_image = '$new_name',
																	   second_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-infrastructure-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addInfrastructureThirdSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infrastructure/".$new_name)){

			 	$res =$this->db->query("update infrastructure_sections SET    third_section_image = '$new_name',
																	   third_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-infrastructure-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
		public function addInfrastructureFourthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infrastructure/".$new_name)){

			 	$res =$this->db->query("update infrastructure_sections SET    fourth_section_image = '$new_name',
																	   fourth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-infrastructure-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addInfrastructureFifthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infrastructure/".$new_name)){

			 	$res =$this->db->query("update infrastructure_sections SET    fifth_section_image = '$new_name',
																	   fifth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-infrastructure-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function addInfrastructureSixthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-infrastructure/".$new_name)){

			 	$res =$this->db->query("update infrastructure_sections SET    sixth_section_image = '$new_name',
																	   sixth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-infrastructure-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addRmcAwardsBanner(){

 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
		/*	if($width > 350 || $height > 150)
			{
				$_SESSION['failed'] ='<div class="alert alert-danger">Image dimension should be within  350 X 150</div>';
				header('Location: event_image');
				exit;
			} */


	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;

			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-awards/".$new_name)){

			 	$res =$this->db->query("UPDATE awards_sections SET banner_image='$new_name',created='$this->date_time'");

			 	if($res){

		 		    header('Location: rmc-awards-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
			
 		}	
 	}
	
	public function addRmcNewsBanner(){

 		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
		/*	if($width > 350 || $height > 150)
			{
				$_SESSION['failed'] ='<div class="alert alert-danger">Image dimension should be within  350 X 150</div>';
				header('Location: event_image');
				exit;
			} */


	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;

			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-news/".$new_name)){

			 	$res =$this->db->query("UPDATE news_sections SET banner_image='$new_name',created='$this->date_time'");

			 	if($res){

		 		    header('Location: rmc-news-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
			
 		}	
 	}
	
	public function addCsrFirstSection($below_content,$image){
		
		
		$below_content  =	htmlspecialchars($below_content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update csr_sections SET    banner_image = '$new_name',
																	   below_content ='$below_content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-csr-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addCsrSecondSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update csr_sections SET    second_section_image = '$new_name',
																	   second_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-csr-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addCsrThirdSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update csr_sections SET    third_section_image = '$new_name',
																	   third_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-csr-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
		public function addCsrFourthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update csr_sections SET    fourth_section_image = '$new_name',
																	   fourth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-csr-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	public function addCsrFifthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update csr_sections SET    fifth_section_image = '$new_name',
																	   fifth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-csr-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function addCsrSixthSection($content,$image){
		
		
		$content  =	htmlspecialchars($content, ENT_QUOTES);	
	 	
	//	$below_content  =	mysql_real_escape_string($below_content);
		
		if($_FILES['image']['name']!=''){
			
			$fileinfo = @getimagesize($_FILES["image"]["tmp_name"]);
			$width = $fileinfo[0];
			$height = $fileinfo[1];
			
	 		$name =time().$this->randomCode(5);
			$ext  =strstr($_FILES["image"]["name"],".");
			$new_name =$name.$ext;
			
			if(move_uploaded_file($_FILES["image"]["tmp_name"],"image/rmc-csr/".$new_name)){

			 	$res =$this->db->query("update csr_sections SET    sixth_section_image = '$new_name',
																	   sixth_section_content ='$content'
																	   	");

			 	if($res){

		 		    header('Location: rmc-csr-page.php');
		 			return TRUE;
		            exit;
			 	}
		 	}
 		}	
 	}
	
	
	public function addContactQueries($name,$email,$contact,$subject,$message){

		
		$name = $this->xss_clean($name);
		$email = $this->xss_clean($email);
		$contact = $this->xss_clean($contact);
		$subject = $this->xss_clean($subject);
		$message =$this->xss_clean($message);
		
		if($name == '')
		{
			$_SESSION['failed'] ='<div class="alert alert-danger alert-dismissable">Menu name cant be blank!<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';

			header('Location: contactus.php');

			exit;	

			
		}
	  
			$res =$this->db->query("INSERT into contact_queries SET     name='$name',
																		email='$email',
																		contact='$contact',
																		subject='$subject',
																		message='$message',
																		created='$this->date_time'
																	  ");

			if($res){

				header('Location: contactus.php');

				return TRUE;

			   exit;

			}

		}
	
	public function rmcCompanySecondSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM company_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update company_sections SET   second_section_content='',
																   second_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCompanyThirdSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM company_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update company_sections SET   third_section_content='',
																   third_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCompanyFourthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM company_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update company_sections SET   fourth_section_content='',
																   fourth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCompanyFifthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM company_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update company_sections SET   fifth_section_content='',
																   fifth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCompanySixthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM company_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update company_sections SET   sixth_section_content='',
																   sixth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcGemstoneSecondSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM gemstone_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update gemstone_sections SET   second_section_content='',
																   second_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcGemstoneThirdSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM gemstone_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update gemstone_sections SET   third_section_content='',
																   third_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcGemstoneFourthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM gemstone_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update gemstone_sections SET   fourth_section_content='',
																   fourth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcGemstoneFifthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM gemstone_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update gemstone_sections SET   fifth_section_content='',
																   fifth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcGemstoneSixthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM gemstone_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update gemstone_sections SET   sixth_section_content='',
																   sixth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcInfrastructureSecondSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM infrastructure_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update infrastructure_sections SET   second_section_content='',
																   second_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcInfrastructureThirdSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM infrastructure_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update infrastructure_sections SET   third_section_content='',
																   third_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcInfrastructureFourthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM infrastructure_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update infrastructure_sections SET   fourth_section_content='',
																   fourth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcInfrastructureFifthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM infrastructure_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update infrastructure_sections SET   fifth_section_content='',
																   fifth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcInfrastructureSixthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM infrastructure_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update infrastructure_sections SET   sixth_section_content='',
																   sixth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCsrSecondSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM csr_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update csr_sections SET   second_section_content='',
																   second_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCsrThirdSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM csr_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update csr_sections SET   third_section_content='',
																   third_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCsrFourthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM csr_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update csr_sections SET   fourth_section_content='',
																   fourth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCsrFifthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM csr_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update csr_sections SET   fifth_section_content='',
																   fifth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	public function rmcCsrSixthSectionRemoveCotent(){

	 	$res =$this->db->query("SELECT id FROM csr_sections");


	 	if($res->num_rows > 0){

	 		$data  =$res->fetch_assoc();

	 		$res1 =$this->db->query("Update csr_sections SET   sixth_section_content='',
																   sixth_section_image=''
																   ");

	 		if($res1){

	 			return TRUE;

	 			exit();

	 		}

	 	}

 	}
	
	}

$functions =new Functions();



?>