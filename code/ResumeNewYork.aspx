<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resumeNewYork.aspx.cs" Inherits="hotelerie.resumeNewYork" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Résumé New York</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            min-height: 100vh;
        }

        .container {
            width: 900px;
            margin: 40px auto;
            background: rgba(255,255,255,0.96);
            border-radius: 28px;
            padding: 35px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.35);
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

        .box {
            background: #f8fbff;
            border: 1px solid #9fb7d4;
            border-radius: 20px;
            padding: 22px;
            margin-bottom: 22px;
        }

        .box h2 {
            color: #102a43;
            margin-bottom: 15px;
        }

        .line {
            font-size: 18px;
            margin: 10px 0;
        }

        .total {
            text-align: center;
            background: linear-gradient(135deg, #07111f, #102a43);
            color: white;
            border-radius: 22px;
            padding: 25px;
            font-size: 30px;
            font-weight: bold;
            margin-top: 25px;
        }

        .btn {
            display: block;
            margin: 30px auto 0;
            padding: 16px 45px;
            border: none;
            border-radius: 35px;
            background: #102a43;
            color: white;
            font-size: 19px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: #07111f;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <h1>Résumé de réservation</h1>
        <div class="subtitle">Luxury Hotel New York • 5 étoiles</div>

        <div class="box">
            <h2>Informations principales</h2>
            <div class="line"><strong>Hôtel :</strong> <asp:Label ID="lblHotel" runat="server" /></div>
            <div class="line"><strong>Devise :</strong> <asp:Label ID="lblDevise" runat="server" /></div>
            <div class="line"><strong>Date d’arrivée :</strong> <asp:Label ID="lblDateDebut" runat="server" /></div>
            <div class="line"><strong>Date de départ :</strong> <asp:Label ID="lblDateFin" runat="server" /></div>
            <div class="line"><strong>Nombre de nuits :</strong> <asp:Label ID="lblNbNuits" runat="server" /></div>
            <div class="line"><strong>Description :</strong> <asp:Label ID="lblDescription" runat="server" /></div>
        </div>

        <div class="box">
            <h2>Repas sélectionnés</h2>
            <div class="line"><strong>Petit déjeuner :</strong> <asp:Label ID="lblPetit" runat="server" /></div>
            <div class="line"><strong>Heure :</strong> <asp:Label ID="lblHeurePetit" runat="server" /></div>

            <div class="line"><strong>Déjeuner :</strong> <asp:Label ID="lblDej" runat="server" /></div>
            <div class="line"><strong>Heure :</strong> <asp:Label ID="lblHeureDej" runat="server" /></div>

            <div class="line"><strong>Dîner :</strong> <asp:Label ID="lblDiner" runat="server" /></div>
            <div class="line"><strong>Heure :</strong> <asp:Label ID="lblHeureDiner" runat="server" /></div>
        </div>

        <div class="box">
            <h2>Détails supplémentaires</h2>
            <div class="line"><strong>Heure taxi :</strong> <asp:Label ID="lblTaxiHeure" runat="server" /></div>
            <div class="line"><strong>Type taxi :</strong> <asp:Label ID="lblTaxiType" runat="server" /></div>
            <div class="line"><strong>Mini-bar :</strong> <asp:Label ID="lblMiniBar" runat="server" /></div>
        </div>

        <div class="total">
            Total : <asp:Label ID="lblTotal" runat="server" />
        </div>
        <asp:Label ID="lblErreur" runat="server" ForeColor="Red"></asp:Label>

        <asp:Button ID="btnConfirmer" runat="server" Text="Confirmer la réservation" CssClass="btn" OnClick="btnConfirmer_Click" />

    </div>
</form>
</body>
</html>