<?php
session_start();
include '../database/db_connect.php';

if(isset($_SESSION['user_name']))
{
    $user_name = $_SESSION['user_name'];
    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        $name = $_POST['name'];
        $send_to = $_POST['To'];
        $msg = $_POST['msg'];
        $sub = $_POST['sub'];
        $local_date = date('Y-m-d');

        $sql = "insert into reportbox(name , receiver , subject , massage , date) values('$name' , '$send_to' , '$sub' , '$msg' , '$local_date
        ' )";
        if(mysqli_query($con,$sql))
        {

        }
        else{
          echo "error while reporting ".mysql_error($con);
        }
        
    }
}
else
{
    header("Location: ../login.php");
}


include "../rss/Dheader&navbarfor_user.php";
?>

<style>
*{
  margin: 0px;
  padding: 0;
  box-sizing: border-box;
  outline: none;
  font-family: 'Josefin Sans', sans-serif;
      font-weight: bold;
}

body{

}

.wrapper{
  position: absolute;
    top: 57%;
    left: 50%;
    transform: translate(-50%,-50%);
    max-width: 350px;
    width: 100%;
    background: #fff;
    padding: 25px;
    border-radius: 5px;

}

.wrapper h2{
  text-align: center;
  margin-bottom: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
  color: #332902;
}

.wrapper .input_field{
  margin-bottom: 10px;
    line-height: 36px;
}

.wrapper .input_field input[type="text"],
.wrapper textarea{
  border: 1px solid #e0e0e0;
  width: 100%;
  padding: 10px;
}

.wrapper textarea{
  resize: none;
  height: 64px;
}

.wrapper .btn input[type="submit"]{
  border: 0px;
  margin-top: 15px;
  padding: 10px;
  text-align: center;
  width: 100%;
  background: #fece0c;
  color: #332902;
  text-transform: uppercase;
  letter-spacing: 5px;
  font-weight: bold;
  border-radius: 25px;
  cursor: pointer;
}

#error_message{
  margin-bottom: 20px;
  background: #fe8b8e;
  padding: 0px;
  text-align: center;
  font-size: 14px;
  transition: all 0.5s ease;
}




</style>
<section>
  <div class="main-section">
    <div class="dashbord">
      <div class="icon-section">

        <div class="wrapper">
          <h2>Report</h2>
          <div id="error_message"></div>
<form name='update'  method="POST" action="">

                
				

				<div class="input_field">
            			<label for="Name">Name:</label >
                    <input type="text" placeholder="Sender" name="name" >
                </div>
                <div class="input_field">
            			<label for="send">Send To :</label>

                    <select name="To" id="subject"name="To"><br><br>

    <option value="Manager" selected>Manager</option>
    <option value="Owner">Owner</option>
    

  </select>


            		</div>
            		<div class="input_field">
            			<label for="subject">Subject:</label>
            				<input type="text" name="sub" placeholder="Subject" id="subject"><br><br>
            		</div>

                <div class="input_field">
<label for="massage">Massage:</label>
                    <textarea placeholder="Message" name="msg" id="message"></textarea>
                </div>
        
            			
    <div class="btn">
       <tr>
         <td colspan=2><input type="submit" name="btn_submit" value="Send" id='btn_submit'></td>
       </tr>
    </div>
       
	</div>

  
</form>
</body>

</html>
