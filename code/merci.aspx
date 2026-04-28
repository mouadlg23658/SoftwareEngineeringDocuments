<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="merci.aspx.cs" Inherits="hotelerie.merci" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Merci</title>

<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg, #dfe9f3, #eef5ff, #d9e8ff);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.box {
    background: white;
    padding: 50px;
    border-radius: 25px;
    text-align: center;
    box-shadow: 0 15px 30px rgba(0,0,0,0.15);
    width: 500px;
}

.icon {
    font-size: 70px;
    color: #28a745;
    margin-bottom: 20px;
}

h1 {
    color: #1f3b73;
    margin-bottom: 15px;
}

p {
    color: #555;
    font-size: 18px;
    margin-bottom: 25px;
    line-height: 1.6;
}

.btn {
    background: #1f3b73;
    color: white;
    padding: 14px 30px;
    border-radius: 30px;
    border: none;
    font-size: 18px;
    cursor: pointer;
}

.btn:hover {
    background: #16305f;
    transform: scale(1.05);
}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

    <div class="icon">✔</div>

    <h1>Merci pour votre réservation !</h1>

    <p>
        Nous vous remercions d’avoir choisi <strong>Luxury Hotel</strong>.<br />
        Votre réservation a été confirmée avec succès.
    </p>

    <asp:Button ID="btnAccueil" runat="server" Text="Retour à l'accueil" CssClass="btn" OnClick="btnAccueil_Click" />

</div>

</form>

</body>
</html>