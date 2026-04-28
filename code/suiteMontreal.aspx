<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suiteMontreal.aspx.cs" Inherits="hotelerie.suiteMontreal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Suite Montréal</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #dfe9f3, #eef5ff, #d9e8ff);
            color: #1d1d1d;
        }

        .container {
            width: 1100px;
            margin: 30px auto;
        }

        .hero {
            position: relative;
            height: 360px;
            border-radius: 25px;
            overflow: hidden;
            margin-bottom: 30px;
            box-shadow: 0 12px 28px rgba(0,0,0,0.16);
        }

        .hero img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .overlay {
            position: absolute;
            bottom: 0;
            width: 100%;
            padding: 30px;
            background: rgba(0,0,0,0.48);
            color: white;
        }
        .dropdown {
           width: 100%;
           margin-top: 12px;
           padding: 10px;
           border-radius: 10px;
           border: 1px solid #dbe6ff;
           font-size: 15px;
           background: white;
        }

        .overlay h1 {
            font-size: 42px;
            margin-bottom: 8px;
        }

        .overlay p {
            font-size: 18px;
        }

        .sectionBox {
            background: white;
            border-radius: 20px;
            padding: 25px;
            margin-bottom: 25px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.10);
        }

        .sectionTitle {
            font-size: 28px;
            color: #1f3b73;
            margin-bottom: 20px;
        }

        .introBox {
            background: linear-gradient(135deg, #fff8dc, #ffeeb0);
            border: 1px solid #f0d56b;
            border-radius: 18px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .introBox h2 {
            color: #8a6500;
            margin-bottom: 10px;
        }

        .introBox p {
            color: #5b4500;
            font-size: 17px;
            line-height: 1.7;
        }

        .includedGrid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .card {
            background: white;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 8px 18px rgba(0,0,0,0.10);
            transition: 0.3s;
            border: 1px solid #e6eeff;
        }

        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.18);
        }

        .cardImage {
            height: 210px;
        }

        .cardImage img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cardContent {
            padding: 16px;
        }

        .cardContent h3 {
            color: #1f3b73;
            margin-bottom: 8px;
            font-size: 24px;
        }

        .cardContent p {
            color: #555;
            font-size: 15px;
            line-height: 1.7;
        }

        .includedBadge {
            display: inline-block;
            margin-top: 10px;
            background: #eaffef;
            color: #0b8a2e;
            padding: 8px 14px;
            border-radius: 20px;
            font-weight: bold;
            font-size: 14px;
        }

        .menuGrid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .menuCard {
            background: #f4f7ff;
            border-radius: 18px;
            padding: 18px;
            border: 1px solid #dbe6ff;
            box-shadow: 0 6px 12px rgba(0,0,0,0.05);
        }

        .menuCard h4 {
            color: #1f3b73;
            margin-bottom: 14px;
            font-size: 22px;
        }

        .mealItem {
            margin: 10px 0;
            background: white;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #dbe6ff;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.04);
        }

        .mealItem input {
            margin-right: 8px;
            transform: scale(1.2);
        }

        .summaryBox {
            background: linear-gradient(135deg, #1f3b73, #2c5aa0);
            color: white;
            padding: 28px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 10px 22px rgba(31,59,115,0.22);
        }

        .summaryBox h2 {
            margin-bottom: 12px;
            font-size: 30px;
        }

        .summaryBox p {
            font-size: 18px;
            line-height: 1.8;
        }

        .price {
            font-size: 36px;
            font-weight: bold;
            margin-top: 12px;
        }

        .btnZone {
            text-align: center;
            margin-top: 25px;
        }

        .btn {
            background: #1f3b73;
            color: white;
            padding: 14px 32px;
            border-radius: 30px;
            border: none;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #16305f;
            transform: scale(1.03);
        }

        .footerNote {
            text-align: center;
            margin-top: 16px;
            color: #5c6e91;
            font-size: 15px;
        }

        @media screen and (max-width: 900px) {
            .container {
                width: 95%;
            }

            .includedGrid,
            .menuGrid {
                grid-template-columns: 1fr;
            }

            .overlay h1 {
                font-size: 34px;
            }
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

<div class="container">

    <div class="hero">
        <img src="image/suite.jpg" alt="Suite Montréal" />
        <div class="overlay">
            <h1>Suite Montréal</h1>
            <p>Tout est inclus dans votre expérience luxe</p>
        </div>
    </div>

    <div class="sectionBox">
        <div class="introBox">
            <h2>Suite tout inclus</h2>
            <p>
                En réservant cette suite, vous profitez automatiquement de plusieurs avantages premium :
                linge haut de gamme, pet friendly, mini-bar, taxi et room service.
            </p>
        </div>
    </div>

    <div class="sectionBox">
        <h2 class="sectionTitle">Avantages inclus</h2>

        <div class="includedGrid">

            <div class="card">
                <div class="cardImage">
                    <img src="image/linge.jpg" alt="Linge premium" />
                </div>
                <div class="cardContent">
                    <h3>Linge premium</h3>
                    <p>Draps et serviettes de luxe inclus pour un confort supérieur.</p>
                    <div class="includedBadge">Inclus</div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage">
                    <img src="image/pet friendly.jpg" alt="Pet Friendly" />
                </div>
                <div class="cardContent">
                    <h3>Pet Friendly</h3>
                    <p>Votre animal est accepté avec confort et facilité dans votre séjour.</p>
                    <div class="includedBadge">Inclus</div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage">
                    <img src="image/minibar.jpg" alt="Mini-bar" />
                </div>
                <div class="cardContent">
                    <h3>Mini-bar</h3>
                    <p>Boissons incluses directement dans la suite pour plus de confort.</p>
                    <div class="includedBadge">Inclus</div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage">
                    <img src="image/taxi.jpg" alt="Taxi" />
                </div>
                <div class="cardContent">
                    <h3>Taxi</h3>
                    <p>Transport inclus pour vos déplacements prévus pendant votre réservation.</p>
                    <div class="includedBadge">Inclus</div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage">
                    <img src="image/roomservice.jpg" alt="Room Service" />
                </div>
                <div class="cardContent">
                    <h3>Room Service</h3>
                    <p>Repas livrés directement à votre chambre selon le menu disponible.</p>
                    <div class="includedBadge">Inclus</div>
                </div>
            </div>

        </div>
    </div>

<div class="sectionBox">
    <h2 class="sectionTitle">Choix des repas (inclus)</h2>

    <div class="menuGrid">

        <div class="menuCard">
            <h4>Petit déjeuner</h4>

            <div class="mealItem">
                <asp:RadioButton ID="rbPancakes" runat="server" Text="Pancakes" GroupName="PetitDejeuner" />
            </div>

            <div class="mealItem">
                <asp:RadioButton ID="rbOmelette" runat="server" Text="Omelette" GroupName="PetitDejeuner" />
            </div>

            <asp:DropDownList ID="ddlPetit" runat="server" CssClass="dropdown">
                <asp:ListItem Text="Choisir l'heure" Value="" />
                <asp:ListItem Text="07:00" Value="07:00" />
                <asp:ListItem Text="08:00" Value="08:00" />
                <asp:ListItem Text="09:00" Value="09:00" />
            </asp:DropDownList>
        </div>

        <div class="menuCard">
            <h4>Déjeuner</h4>

            <div class="mealItem">
                <asp:RadioButton ID="rbPoutine" runat="server" Text="Poutine" GroupName="Dejeuner" />
            </div>

            <div class="mealItem">
                <asp:RadioButton ID="rbBurger" runat="server" Text="Burger" GroupName="Dejeuner" />
            </div>

            <asp:DropDownList ID="ddlDej" runat="server" CssClass="dropdown">
                <asp:ListItem Text="Choisir l'heure" Value="" />
                <asp:ListItem Text="12:00" Value="12:00" />
                <asp:ListItem Text="13:00" Value="13:00" />
                <asp:ListItem Text="14:00" Value="14:00" />
            </asp:DropDownList>
        </div>

        <div class="menuCard">
            <h4>Dîner</h4>

            <div class="mealItem">
                <asp:RadioButton ID="rbSaumon" runat="server" Text="Saumon" GroupName="Diner" />
            </div>

            <div class="mealItem">
                <asp:RadioButton ID="rbSteak" runat="server" Text="Steak" GroupName="Diner" />
            </div>

            <asp:DropDownList ID="ddlDiner" runat="server" CssClass="dropdown">
                <asp:ListItem Text="Choisir l'heure" Value="" />
                <asp:ListItem Text="18:00" Value="18:00" />
                <asp:ListItem Text="19:00" Value="19:00" />
                <asp:ListItem Text="20:00" Value="20:00" />
            </asp:DropDownList>
        </div>

    </div>
</div>
    </div>

    <div class="sectionBox">
        <div class="summaryBox">
            <h2>Résumé de la suite</h2>
            <p>
                Toutes les options premium sont déjà incluses.<br />
                Il vous reste seulement à personnaliser vos repas.
            </p>
            <div class="price">Tout inclus</div>
        </div>
    </div>

    <div class="btnZone">
        <asp:Button ID="btnContinuer" runat="server" Text="Continuer" CssClass="btn" OnClick="btnContinuer_Click" />
    </div> 
    <div class="footerNote">
        Luxury Hotel Montréal • Suite avec services inclus
    </div>

</form>
</body>
</html>