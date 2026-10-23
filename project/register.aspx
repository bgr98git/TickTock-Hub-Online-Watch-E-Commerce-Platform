<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>
     
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

   body {
            background-image:url(assets/images/bg1.jpg); /* Replace 'watch_image.jpg' with your actual image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;   

            height: 100vh;
            font-family: Arial, sans-serif;
            color:   
 #fff; 
        }

    /* Main container */
   .login-container {
            width: 400px;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
            padding: 2rem;
            border-radius: 10px;
            border:double;
            border-color:white;
            text-align: center;
            margin-left:550px;
            margin-top:90px;
        }

    .login-container h1 {
      font-size: 1.8rem;
      margin-bottom: 1.5rem;
      font-weight: bold;
      color: antiquewhite;
    }

    /* Input fields */
    .field {
      width: 95%;
      padding: 0.8rem;
      margin: 0.8rem 0;
      
      border:none;
      border-radius: 5px;
      font-size: 1rem;
      background-color: #333;
      color:antiquewhite;
    }

    .field:focus
    {
      outline: none;
      border: 4px solid antiquewhite;
    }

    /* Button */
    .button {
      width: 97%;
      padding: 0.8rem;
      margin-top: 1rem;
      font-size: 1rem;
      font-weight: bold;
      background-color: navajowhite;
      color: #000;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;

    }

        .button:hover {
            background-color: white;
            border:10px double;
            border-color: black;
            border-radius:7px;
        }

    /* Links */
    .login-container .links {
      margin-top: 1rem;
      font-size: 0.9rem;
    }

    .login-container .links a {
      color:white;
      text-decoration: underline;
      margin: 0 0.5rem;
      font-weight:800;
    }

    .login-container .links a:hover {
      text-decoration: underline;
    }
 

     
    
    </style>
</head>
<body>
   <form id="form1" runat="server">
   <div class="login-container">
    <h1>Register Here</h1>
   
    <asp:TextBox ID="unmtxt" CssClass="field" runat="server" placeholder="*Username" required="required"></asp:TextBox>
    <asp:TextBox ID="emtxt" CssClass="field" runat="server" placeholder="*Email" required="required"></asp:TextBox>

    <asp:TextBox ID="pwdtxt" CssClass="field" TextMode="Password" runat="server" placeholder="*Password" required="required"></asp:TextBox>
    <asp:TextBox ID="phonetxt" CssClass="field" runat="server" placeholder="*Phone" required="required"></asp:TextBox>

    <asp:Button ID="regbtn" Text="Register" CssClass="button"  runat="server" OnClick="regbtn_Click"  />

    <div class="links">
        <asp:Label ID="Label1" runat="server" Text="Already have account?" ForeColor="White"></asp:Label>
      <a href="newlogin.aspx">Login</a>
    </div>
  </div>
	</form>

    
</body>
</html>
