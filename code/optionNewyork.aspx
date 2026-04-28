<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="optionsNewYork.aspx.cs" Inherits="hotelerie.optionsNewYork" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Options New York</title>

    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            min-height: 100vh;
            color: #1d1d1d;
        }

        .container {
            width: 1180px;
            margin: 30px auto 50px auto;
        }

        .hero {
            position: relative;
            height: 360px;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 15px 40px rgba(0,0,0,0.35);
            margin-bottom: 30px;
        }

        .hero img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .hero::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(to right, rgba(7,17,31,0.85), rgba(16,42,67,0.55), rgba(220,230,242,0.18));
        }

        .heroContent {
            position: absolute;
            left: 40px;
            bottom: 40px;
            z-index: 2;
            color: white;
            max-width: 700px;
        }

        .badge {
            display: inline-block;
            background: rgba(220,230,242,0.90);
            color: #07111f;
            padding: 10px 18px;
            border-radius: 30px;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .heroContent h1 {
            font-size: 52px;
            margin-bottom: 12px;
        }

        .heroContent p {
            font-size: 21px;
            line-height: 1.6;
            color: #edf5ff;
        }

        .sectionBox {
            background: rgba(255,255,255,0.95);
            border-radius: 24px;
            padding: 28px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.20);
            margin-bottom: 28px;
        }

        .sectionTitle {
            font-size: 30px;
            color: #102a43;
            margin-bottom: 18px;
        }

        .includedGrid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .includedItem {
            background: linear-gradient(135deg, #f5f9ff, #dce6f2);
            border: 1px solid #9fb7d4;
            border-radius: 18px;
            padding: 18px;
            font-size: 17px;
            color: #102a43;
            font-weight: bold;
            text-align: center;
        }

        .optionsGrid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 24px;
        }

        .card {
            background: white;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 10px 24px rgba(0,0,0,0.18);
            border: 1px solid #9fb7d4;
            transition: 0.30s ease;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 18px 35px rgba(0,0,0,0.25);
        }

        .cardImage {
            height: 240px;
            overflow: hidden;
        }

        .cardImage img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .cardContent {
            padding: 22px;
        }

        .cardContent h3 {
            font-size: 30px;
            color: #102a43;
            margin-bottom: 12px;
        }

        .cardContent p {
            color: #555;
            line-height: 1.7;
            font-size: 17px;
            margin-bottom: 14px;
        }

        .price {
            display: inline-block;
            background: #e8f1ff;
            color: #102a43;
            font-weight: bold;
            padding: 10px 16px;
            border-radius: 30px;
            font-size: 20px;
            margin-bottom: 16px;
        }

        .choiceBox {
            background: linear-gradient(135deg, #f8fbff, #e8f1ff);
            border: 1px solid #9fb7d4;
            border-radius: 16px;
            padding: 16px;
        }

        .aspNetCheck {
            font-size: 18px;
            color: #1d1d1d;
            font-weight: bold;
        }

        .aspNetCheck input {
            margin-right: 10px;
            transform: scale(1.25);
            vertical-align: middle;
        }

        .roomTop {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .roomInfo {
            flex: 1;
        }

        .roomInfo p {
            font-size: 18px;
            color: #444;
            line-height: 1.9;
        }

        .roomPriceBox {
            min-width: 250px;
            background: linear-gradient(135deg, #07111f, #102a43);
            color: white;
            border-radius: 20px;
            padding: 22px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.25);
        }

        .roomPriceBox h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .bigPrice {
            font-size: 34px;
            font-weight: bold;
            margin-bottom: 14px;
            color: #dce6f2;
        }

        .roomPriceBox .aspNetCheck {
            color: white;
        }

        .subSection {
            margin-top: 18px;
            background: linear-gradient(135deg, #f8fbff, #e8f1ff);
            border: 1px solid #9fb7d4;
            border-radius: 20px;
            padding: 22px;
        }

        .subSection h4 {
            color: #102a43;
            font-size: 24px;
            margin-bottom: 18px;
        }

        .mealBlock {
            margin-bottom: 18px;
            padding: 16px;
            background: white;
            border-radius: 16px;
            box-shadow: 0 6px 14px rgba(0,0,0,0.06);
            border: 1px solid #c9d8ea;
        }

        .mealBlock h5 {
            color: #102a43;
            font-size: 19px;
            margin-bottom: 12px;
        }

        .mealChoices {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .mealItem {
            display: inline-flex;
            align-items: center;
            background: #f8fbff;
            padding: 10px 14px;
            border-radius: 12px;
            border: 1px solid #c9d8ea;
            min-width: 170px;
        }

        .mealItem input {
            margin-right: 8px;
            transform: scale(1.15);
        }

        .timeGrid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .timeCard {
            background: white;
            border-radius: 16px;
            padding: 18px;
            border: 1px solid #c9d8ea;
            box-shadow: 0 6px 14px rgba(0,0,0,0.06);
        }

        .timeCard label {
            display: block;
            font-weight: bold;
            color: #102a43;
            margin-bottom: 10px;
            font-size: 17px;
        }

        .liste, .inputText {
            width: 100%;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #9fb7d4;
            font-size: 16px;
            background-color: #f8fbff;
        }

        .totalBox {
            background: linear-gradient(135deg, #ffffff, #e8f1ff);
            border: 1px solid #9fb7d4;
            border-radius: 24px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 10px 22px rgba(0,0,0,0.14);
        }

        .totalBox h2 {
            color: #102a43;
            font-size: 30px;
            margin-bottom: 10px;
        }

        .totalValue {
            font-size: 36px;
            font-weight: bold;
            color: #0f5f9c;
        }

        .btnZone {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            color: white;
            border: none;
            border-radius: 40px;
            padding: 16px 42px;
            font-size: 19px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 10px 22px rgba(0,0,0,0.30);
            transition: 0.30s ease;
        }

        .btn:hover {
            transform: translateY(-3px) scale(1.03);
            background: #102a43;
        }

        .footerNote {
            text-align: center;
            margin-top: 18px;
            color: #edf5ff;
            font-size: 15px;
        }

        @media screen and (max-width: 1200px) {
            .container { width: 95%; }
        }

        @media screen and (max-width: 900px) {
            .optionsGrid, .includedGrid, .timeGrid {
                grid-template-columns: 1fr;
            }

            .heroContent h1 {
                font-size: 40px;
            }
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <div class="hero">
            <img src="image/newyorkhotel.jpg" alt="New York" />
            <div class="heroContent">
                <div class="badge">Luxury Hotel New York • 5 étoiles</div>
                <h1>Options - New York</h1>
                <p>Personnalisez votre séjour avec une expérience urbaine, vue skyline, room service et services premium.</p>
            </div>
        </div>

        <div class="sectionBox">
            <h2 class="sectionTitle">Services inclus</h2>
            <div class="includedGrid">
                <div class="includedItem">Vue skyline</div>
                <div class="includedItem">Room service disponible</div>
                <div class="includedItem">Confort premium urbain</div>
            </div>
        </div>

        <div class="sectionBox">
            <h2 class="sectionTitle">Options supplémentaires</h2>

            <div class="optionsGrid">

                <div class="card">
                    <div class="cardImage">
                        <img src="image/linge.jpg" alt="Linge premium" />
                    </div>
                    <div class="cardContent">
                        <h3>Linge premium</h3>
                        <p>Ajoutez un linge haut de gamme avec serviettes et draps de meilleure qualité.</p>
                        <div class="price">10 USD</div>
                        <div class="choiceBox" data-prix="10">
                            <asp:CheckBox ID="chkLinge" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="cardImage">
                        <img src="image/pet friendly.jpg" alt="Pet Friendly" />
                    </div>
                    <div class="cardContent">
                        <h3>Pet Friendly</h3>
                        <p>Voyagez avec votre animal pendant votre séjour à New York.</p>
                        <div class="price">20 USD</div>
                        <div class="choiceBox" data-prix="20">
                            <asp:CheckBox ID="chkPet" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="cardImage">
                        <img src="image/minibar.jpg" alt="Mini-bar" />
                    </div>
                    <div class="cardContent">
                        <h3>Mini-bar</h3>
                        <p>Choisissez vos boissons : soda, café, eau ou préférences personnelles.</p>
                        <div class="price">25 USD</div>
                        <div class="choiceBox" data-prix="25">
                            <asp:CheckBox ID="chkMiniBar" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="cardImage">
                        <img src="image/taxi.jpg" alt="Taxi" />
                    </div>
                    <div class="cardContent">
                        <h3>Taxi</h3>
                        <p>Réservez votre transport hôtel ↔ destination dans la ville.</p>
                        <div class="price">50 USD</div>
                        <div class="choiceBox" data-prix="50">
                            <asp:CheckBox ID="chkTaxi" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="sectionBox">
            <h2 class="sectionTitle">Room Service - New York</h2>

            <div class="roomTop">
                <div class="roomInfo">
                    <p>
                        Petit déjeuner : Bagel / Pancakes<br />
                        Déjeuner : Pizza / Hot-dog<br />
                        Dîner : Steak / Pâtes<br />
                    </p>
                </div>

                <div class="roomPriceBox" data-prix="18">
                    <h3>Option Room Service</h3>
                    <div class="bigPrice">18 USD</div>
                    <asp:CheckBox ID="chkRoomService" runat="server" Text="Ajouter Room Service" CssClass="aspNetCheck optionCalc" />
                </div>
            </div>

            <div class="subSection">
                <h4>Choix des repas</h4>

                <div class="mealBlock">
                    <h5>Petit déjeuner</h5>
                    <div class="mealChoices">
                        <span class="mealItem"><asp:CheckBox ID="chkBagel" runat="server" Text="Bagel" /></span>
                        <span class="mealItem"><asp:CheckBox ID="chkPancakes" runat="server" Text="Pancakes" /></span>
                    </div>
                </div>

                <div class="mealBlock">
                    <h5>Déjeuner</h5>
                    <div class="mealChoices">
                        <span class="mealItem"><asp:CheckBox ID="chkPizza" runat="server" Text="Pizza" /></span>
                        <span class="mealItem"><asp:CheckBox ID="chkHotDog" runat="server" Text="Hot-dog" /></span>
                    </div>
                </div>

                <div class="mealBlock">
                    <h5>Dîner</h5>
                    <div class="mealChoices">
                        <span class="mealItem"><asp:CheckBox ID="chkSteak" runat="server" Text="Steak" /></span>
                        <span class="mealItem"><asp:CheckBox ID="chkPates" runat="server" Text="Pâtes" /></span>
                    </div>
                </div>
            </div>

            <div class="subSection">
                <h4>Heures des repas</h4>

                <div class="timeGrid">
                    <div class="timeCard">
                        <label>Heure du petit déjeuner</label>
                        <asp:DropDownList ID="ddlPetit" runat="server" CssClass="liste">
                            <asp:ListItem Text="Choisir l'heure" Value="" />
                            <asp:ListItem Text="07:00" Value="07:00" />
                            <asp:ListItem Text="08:00" Value="08:00" />
                            <asp:ListItem Text="09:00" Value="09:00" />
                            <asp:ListItem Text="10:00" Value="10:00" />
                        </asp:DropDownList>
                    </div>

                    <div class="timeCard">
                        <label>Heure du déjeuner</label>
                        <asp:DropDownList ID="ddlDej" runat="server" CssClass="liste">
                            <asp:ListItem Text="Choisir l'heure" Value="" />
                            <asp:ListItem Text="12:00" Value="12:00" />
                            <asp:ListItem Text="13:00" Value="13:00" />
                            <asp:ListItem Text="14:00" Value="14:00" />
                        </asp:DropDownList>
                    </div>

                    <div class="timeCard">
                        <label>Heure du dîner</label>
                        <asp:DropDownList ID="ddlDiner" runat="server" CssClass="liste">
                            <asp:ListItem Text="Choisir l'heure" Value="" />
                            <asp:ListItem Text="18:00" Value="18:00" />
                            <asp:ListItem Text="19:00" Value="19:00" />
                            <asp:ListItem Text="20:00" Value="20:00" />
                            <asp:ListItem Text="21:00" Value="21:00" />
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

        <div class="sectionBox">
            <h2 class="sectionTitle">Détails taxi et mini-bar</h2>

            <div class="timeGrid">
                <div class="timeCard">
                    <label>Heure du taxi</label>
                    <asp:TextBox ID="txtHeureTaxi" runat="server" CssClass="inputText" placeholder="Ex : 18:30"></asp:TextBox>
                </div>

                <div class="timeCard">
                    <label>Type de taxi</label>
                    <asp:DropDownList ID="ddlTaxi" runat="server" CssClass="liste">
                        <asp:ListItem Text="Standard" Value="Standard" />
                        <asp:ListItem Text="SUV" Value="SUV" />
                        <asp:ListItem Text="Luxury Car" Value="Luxury Car" />
                    </asp:DropDownList>
                </div>

                <div class="timeCard">
                    <label>Préférence mini-bar</label>
                    <asp:TextBox ID="txtMiniBar" runat="server" CssClass="inputText" placeholder="Soda, café, eau, alcool..."></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="sectionBox">
            <div class="totalBox">
                <h2>Total des options</h2>
                <div class="totalValue">Total : <span id="totalOptions">0 USD</span></div>
            </div>
        </div>

        <div class="btnZone">
            <asp:Button ID="btnContinuer" runat="server" Text="Continuer la réservation" CssClass="btn" OnClick="btnContinuer_Click" />
        </div>

        <div class="footerNote">
            Luxury Hotel New York • Réservation personnalisée
        </div>

    </div>
</form>

<script>
    function calculerTotal() {
        let total = 0;
        const checkboxes = document.querySelectorAll(".optionCalc input[type='checkbox'], input.optionCalc[type='checkbox']");

        checkboxes.forEach(function (cb) {
            if (cb.checked) {
                const parent = cb.closest("[data-prix]");
                if (parent) {
                    total += parseInt(parent.getAttribute("data-prix"));
                }
            }
        });

        document.getElementById("totalOptions").innerText = total + " USD";
    }

    window.onload = function () {
        const checkboxes = document.querySelectorAll(".optionCalc input[type='checkbox'], input.optionCalc[type='checkbox']");

        checkboxes.forEach(function (cb) {
            cb.addEventListener("change", calculerTotal);
        });

        calculerTotal();
    };
</script>

</body>
</html>