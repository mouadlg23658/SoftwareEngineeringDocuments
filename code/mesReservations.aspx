<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mesReservations.aspx.cs" Inherits="hotelerie.mesReservations" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Mes réservations</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            min-height: 100vh;
        }

        .container {
            width: 1100px;
            margin: 40px auto;
            background: rgba(255,255,255,0.96);
            padding: 35px;
            border-radius: 28px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }

        h1 {
            text-align: center;
            color: #102a43;
            font-size: 42px;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #555;
            margin-bottom: 30px;
            font-size: 18px;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 18px;
        }

        .grid th {
            background: #102a43;
            color: white;
            padding: 15px;
            font-size: 16px;
        }

        .grid td {
            padding: 14px;
            border-bottom: 1px solid #dce6f2;
            text-align: center;
            color: #1d1d1d;
        }

        .grid tr:nth-child(even) {
            background: #f5f9ff;
        }

        .empty {
            display: block;
            text-align: center;
            color: #777;
            font-size: 22px;
            margin-top: 30px;
            font-weight: bold;
        }

        .btnZone {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            padding: 14px 35px;
            border: none;
            border-radius: 30px;
            background: #102a43;
            color: white;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            margin: 5px;
        }

        .btn:hover {
            background: #07111f;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <h1>Mes réservations</h1>
        <div class="subtitle">Voici les réservations liées à votre compte.</div>

        <asp:GridView ID="gvReservations" runat="server"
            CssClass="grid"
            AutoGenerateColumns="False">

            <Columns>
                <asp:BoundField DataField="Hotel" HeaderText="Hôtel" />
                <asp:BoundField DataField="TypeChambre" HeaderText="Type de chambre" />
                <asp:BoundField DataField="Total" HeaderText="Total" />
                <asp:BoundField DataField="DateReservation" HeaderText="Date réservation" DataFormatString="{0:yyyy-MM-dd HH:mm}" />
            </Columns>

        </asp:GridView>

        <asp:Label ID="lblVide" runat="server" CssClass="empty"></asp:Label>

        <div class="btnZone">
            <asp:Button ID="btnRetour" runat="server"
                Text="Retour à l’accueil"
                CssClass="btn"
                OnClick="btnRetour_Click" />

            <asp:Button ID="btnNouvelle" runat="server"
                Text="Nouvelle réservation"
                CssClass="btn"
                OnClick="btnNouvelle_Click" />
        </div>

    </div>
</form>
</body>
</html>