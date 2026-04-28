<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="hotelerie.inscription" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inscription - Luxury Hotel</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #1f3b73, #2c5aa0);
        }

        .card {
            width: 460px;
            background: #f5f6f8;
            border-radius: 22px;
            padding: 35px 32px;
            box-shadow: 0 18px 35px rgba(0,0,0,0.25);
        }

        .card h1 {
            text-align: center;
            color: #1f3b73;
            margin-bottom: 28px;
            font-size: 24px;
        }

        .inputBox {
            margin-bottom: 18px;
        }

        .inputBox label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 6px;
        }

        .input {
            width: 100%;
            padding: 14px;
            border-radius: 12px;
            border: 1px solid #d8d8d8;
            font-size: 15px;
            background: #ffffff;
            transition: 0.3s;
        }

        .input:hover {
            border: 1px solid #bcbcbc;
        }

        .input:focus {
            outline: none;
            border: 1px solid #1f3b73;
            box-shadow: 0 0 0 2px rgba(31, 59, 115, 0.10);
        }

        .smallText {
            font-size: 12px;
            color: #777;
            margin-top: 6px;
            display: block;
        }

        .btn {
            width: 100%;
            padding: 14px;
            background: #1f3b73;
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 18px;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.3s;
        }

        .btn:hover {
            background: #16305f;
            transform: scale(1.02);
        }

        .msg {
            display: block;
            text-align: center;
            margin-top: 12px;
            font-size: 14px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="card">
            <h1>Inscription</h1>

            <div class="inputBox">
                <label>Nom</label>
                <asp:TextBox ID="txtNom" runat="server" CssClass="input"></asp:TextBox>
            </div>

            <div class="inputBox">
                <label>Prénom</label>
                <asp:TextBox ID="txtPrenom" runat="server" CssClass="input"></asp:TextBox>
            </div>

            <div class="inputBox">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
            </div>

            <div class="inputBox">
                <label>Téléphone</label>
                <asp:TextBox ID="txtTelephone" runat="server" CssClass="input" placeholder="ex: 514-123-4567"></asp:TextBox>
                <span class="smallText">Format: 514-123-4567</span>
            </div>

            <div class="inputBox">
                <label>Mot de passe</label>
                <asp:TextBox ID="txtMotDePasse" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                <span class="smallText">Minimum 8 caractères</span>
            </div>

            <asp:Button ID="btnRegister" runat="server" Text="Créer un compte" CssClass="btn" OnClick="btnInscription_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="msg"></asp:Label>

            <div class="footerLink">
                Déjà un compte ? <a href="login.aspx">Se connecter</a>
            </div>
        </div>

    </form>
</body>
</html>