<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Login</title>
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url('/logo/logo.png')?>">
</head>
<body>
<div class="wrapper">
    <div class="container main">
        <div class="row">
            <div class="col-md-6 side-image">                       
                <img src="<?= base_url('images/white.png') ?>" alt="">
            </div>

            <div class="col-md-6 right">
                <div class="input-box">
                    <form method="post" action="<?= base_url('home/aksi_login') ?>">
                     <header>
                         <h1>Welcome</h1>
                     </header>
                     <div class="input-field">
                        <input type="text" name="username" class="input text-capitalize" id="email" required="" autocomplete="off">
                        <label for="email">Username</label> 
                    </div> 
                    <div class="input-field">
                        <input type="password" name="password" class="input" id="password" required="">
                        <label for="pass">Password</label>
                    </div> 
                    <div class="input-field">
                        <input type="submit" class="submit" value="Log In">
                    </div> 
                    <p class="register-link">Belum Punya Akun? <a href="/Home/register" class="register-button">Register Sekarang</a></p>
                </form>
            </div>  
        </div>
    </div>
</div>
</div>
</body>
</html>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

  *{
    font-family: 'Poppins', sans-serif;
}

.text-center {
    text-align: center;
}

a {
    text-decoration: none;
    color: black;
}

.wrapper {
    background-image: url("login/bg_login.jpeg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    padding: 0 20px 0 20px;
}
.main{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}
.side-image{
    background-image: url("<?= base_url('login/login.jpg') ?>");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    border-radius: 10px 0 0 10px;
    position: relative;
}
.row{
  width:  900px;
  height:550px;
  border-radius: 10px;
  background: #fff;
  padding: 0px;
  box-shadow: 5px 5px 10px 1px rgba(0,0,0,0.2);
}
.text{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
.text p{
    color: #fff;
    font-size: 20px; 
}
i{
    font-weight: 400;
    font-size: 15px;
}
.right{
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
}
.input-box{
  width: 330px;
  box-sizing: border-box;
}
img{
    width: 35px;
    position: absolute;
    top: 30px;
    left: 30px;
}
.input-box header{
    font-weight: 700;
    text-align: center;
    margin-bottom: 45px;
}
.input-field{
    display: flex;
    flex-direction: column;
    position: relative;
    padding: 0 10px 0 10px;
}
.input{
    height: 45px;
    width: 100%;
    background: transparent;
    border: none;
    border-bottom: 1px solid rgba(0, 0, 0, 0.2);
    outline: none;
    margin-bottom: 20px;
    color: #40414a;
}
.input-box .input-field label{
    position: absolute;
    top: 10px;
    left: 10px;
    pointer-events: none;
    transition: .5s;
}
.input-field input:focus ~ label
{
    top: -10px;
    font-size: 13px;
}
.input-field input:valid ~ label
{
 top: -10px;
 font-size: 13px;
 color: #5d5076;
}
.input-field .input:focus, .input-field .input:valid{
    border-bottom: 1px solid #743ae1;
}
.submit{
    border: none;
    outline: none;
    height: 45px;
    background: #ececec;
    border-radius: 5px;
    transition: .4s;
}
.submit:hover{
    background: rgba(37, 95, 156, 0.937);
    color: #fff;
}
.signin{
    text-align: center;
    font-size: small;
    margin-top: 25px;
}
span a{
    text-decoration: none;
    font-weight: 700;
    color: #000;
    transition: .5s;
}
span a:hover{
    text-decoration: underline;
    color: #000;
}

@media only screen and (max-width: 768px){
    .side-image{
        border-radius: 10px 10px 0 0;
    }
    img{
        width: 35px;
        position: absolute;
        top: 20px;
        left: 47%;
    }
    .text{
        position: absolute;
        top: 70%;
        text-align: center;
    }
    .text p, i{
        font-size: 16px;
    }
    .row{
        max-width:420px;
        width: 100%;
    }
}

.checkbox-wrapper {
    display: flex;
    align-items: center;
}

.checkbox-wrapper input {
    margin-right: 10px;
}

.form-check {
    margin-left: 10px; 
}
</style>