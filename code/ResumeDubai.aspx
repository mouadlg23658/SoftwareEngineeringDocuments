<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resumeDubai.aspx.cs" Inherits="hotelerie.resumeDubai" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Résumé Dubai</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #050505, #1a1300, #d4af37);
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
            color: #8b6f1a;
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
            background: #fffaf0;
            border: 1px solid #d4af37;
            border-radius: 20px;
            padding: 22px;
            margin-bottom: 22px;
        }

        .box h2 {
            color: #8b6f1a;
            margin-bottom: 15px;
        }

        .line {
            font-size: 18px;
            margin: 10px 0;
        }

        .total {
            text-align: center;
            background: linear-gradient(135deg, #050505, #8b6f1a);
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
            background: #d4af37;
            color: black;
            font-size: 19px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: white;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <h1>Résumé de réservation</h1>
        <div class="subtitle">Luxury Hotel Dubai • 7 étoiles</div>

        <div class="box">
            <h2>Informations principales</h2>
            <div class="line"><strong>Hôtel :</strong> <asp:Label ID="lblHotel" runat="server" /></div>
            <div class="line"><strong>Devise :</strong> <asp:Label ID="lblDevise" runat="server" /></div>
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
        <div class="line">
    <h3>Date d’arrivée</h3>
    <p><asp:Label ID="lblDateDebut" runat="server"></asp:Label></p>
</div>

<div class="line">
    <h3>Date de départ</h3>
    <p><asp:Label ID="lblDateFin" runat="server"></asp:Label></p>
</div>

<div class="line">
    <h3>Nombre de nuits</h3>
    <p><asp:Label ID="lblNbNuits" runat="server"></asp:Label></p>
</div>

        <div class="box">
            <h2>Détails supplémentaires</h2>
            <div class="line"><strong>Heure taxi :</strong> <asp:Label ID="lblTaxiHeure" runat="server" /></div>
            <div class="line"><strong>Type taxi :</strong> <asp:Label ID="lblTaxiType" runat="server" /></div>
            <div class="line"><strong>Mini-bar :</strong> <asp:Label ID="lblMiniBar" runat="server" /></div>
        </div>

        <asp:Label ID="lblErreur" runat="server" ForeColor="Red"></asp:Label>

        <div class="total">
            Total : <asp:Label ID="lblTotal" runat="server" />
        </div>

        <asp:Button ID="btnConfirmer" runat="server" Text="Confirmer la réservation" CssClass="btn" OnClick="btnConfirmer_Click" />

    </div>
</form>
</body>
</html>