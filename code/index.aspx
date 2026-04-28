<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="hotelerie.index" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Accueil</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .box {
            background: white;
            padding: 50px;
            border-radius: 25px;
            text-align: center;
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
            width: 400px;
        }

        h1 {
            color: #102a43;
            margin-bottom: 30px;
        }

        .btn {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            background: #102a43;
            color: white;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: #07111f;
        }
    </style>
</head>

<body>
<form runat="server">

    <div class="box">
        <h1>Bienvenue</h1>

        <asp:Button ID="btnReserver" runat="server"
            Text="Réserver"
            CssClass="btn"
            OnClick="btnReserver_Click" />

        <asp:Button ID="btnMesReservations" runat="server"
            Text="Mes réservations"
            CssClass="btn"
            OnClick="btnMesReservations_Click" />
    </div>

</form>
</body>
</html>