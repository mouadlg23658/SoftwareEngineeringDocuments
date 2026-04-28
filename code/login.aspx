<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hotelerie.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Luxury Hotel</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.footerLink {
    text-align: center;
    margin-top: 18px;
    font-size: 15px;
    color: #333;
}

.footerLink a {
    color: #1f3b73;
    font-weight: bold;
    text-decoration: none;
}

.footerLink a:hover {
    text-decoration: underline;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: url('image/luxhotel.jpg') no-repeat center center;
    background-size: cover;
}

/* OVERLAY */
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgba(31, 59, 115, 0.75);
}

/* LOGIN BOX */
.loginBox {
    position: relative;
    background: white;
    padding: 40px;
    border-radius: 25px;
    width: 400px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.3);
    text-align: center;
    z-index: 2;
}

/* TITLE */
.loginBox h1 {
    color: #1f3b73;
    margin-bottom: 25px;
}

/* INPUT */
.inputBox {
    margin-bottom: 18px;
    text-align: left;
}

.inputBox label {
    font-size: 14px;
    color: #444;
}

.inputBox input {
    width: 100%;
    padding: 12px;
    margin-top: 6px;
    border-radius: 10px;
    border: 1px solid #ccc;
    font-size: 16px;
}

.inputBox input:focus {
    outline: none;
    border: 1px solid #1f3b73;
}

/* BUTTON */
.btn {
    width: 100%;
    padding: 14px;
    border: none;
    border-radius: 25px;
    background: #1f3b73;
    color: white;
    font-size: 18px;
    cursor: pointer;
    margin-top: 10px;
    transition: 0.3s;
}

.btn:hover {
    background: #16305f;
    transform: scale(1.03);
}

.error {
    color: red;
    margin-top: 10px;
    font-size: 14px;
}
.footer {
    margin-top: 15px;
    font-size: 13px;
    color: #777;
}
</style>

</head>

<body>

<div class="overlay"></div>

<form id="form1" runat="server">

<div class="loginBox">

    <h1>Luxury Hotel</h1>

    <div class="inputBox">
        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </div>

    <div class="inputBox">
        <label>Mot de passe</label>
        <asp:TextBox ID="txtMotDePasse" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    <asp:Button ID="btnconnecte" runat="server" Text="connecter" CssClass="btn" OnClick="btnconnecte_Click" />
    <asp:Label ID="lblErreur" runat="server" CssClass="error"></asp:Label>
   <div class="footerLink">
    Pas encore de compte ? <a href="inscription.aspx">Créer un compte</a>
  </div>


    <div class="footer">
        © Luxury Hotel
    </div>

</div>

</form>

</body>
</html>