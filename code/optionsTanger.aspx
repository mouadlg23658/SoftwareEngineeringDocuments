<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="optionsTanger.aspx.cs" Inherits="hotelerie.optionsTanger" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Options Tanger</title>

    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #8b0000, #006233, #f5e6c8);
            min-height: 100vh;
            color: #1d1d1d;
        }

        .container { width: 1180px; margin: 30px auto 50px auto; }

        .hero {
            position: relative;
            height: 360px;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 15px 40px rgba(0,0,0,0.35);
            margin-bottom: 30px;
        }

        .hero img { width: 100%; height: 100%; object-fit: cover; display: block; }

        .hero::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(to right, rgba(139,0,0,0.80), rgba(0,98,51,0.55), rgba(245,230,200,0.15));
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
            background: rgba(245,230,200,0.95);
            color: #8b0000;
            padding: 10px 18px;
            border-radius: 30px;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .heroContent h1 { font-size: 52px; margin-bottom: 12px; }

        .heroContent p {
            font-size: 21px;
            line-height: 1.6;
            color: #fff7e6;
        }

        .sectionBox {
            background: rgba(255,255,255,0.96);
            border-radius: 24px;
            padding: 28px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.20);
            margin-bottom: 28px;
        }

        .sectionTitle {
            font-size: 30px;
            color: #8b0000;
            margin-bottom: 18px;
        }

        .includedGrid, .timeGrid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .includedItem {
            background: linear-gradient(135deg, #fff7e6, #f5e6c8);
            border: 1px solid #c9a75d;
            border-radius: 18px;
            padding: 18px;
            font-size: 17px;
            color: #006233;
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
            border: 1px solid #c9a75d;
        }

        .cardImage { height: 240px; overflow: hidden; }

        .cardImage img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .cardContent { padding: 22px; }

        .cardContent h3 {
            font-size: 30px;
            color: #8b0000;
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
            background: #e8fff1;
            color: #006233;
            font-weight: bold;
            padding: 10px 16px;
            border-radius: 30px;
            font-size: 20px;
            margin-bottom: 16px;
        }

        .choiceBox {
            background: linear-gradient(135deg, #fff7e6, #f5e6c8);
            border: 1px solid #c9a75d;
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

        .roomInfo { flex: 1; }

        .roomInfo p {
            font-size: 18px;
            color: #444;
            line-height: 1.9;
        }

        .roomPriceBox {
            min-width: 250px;
            background: linear-gradient(135deg, #8b0000, #006233);
            color: white;
            border-radius: 20px;
            padding: 22px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.25);
        }

        .bigPrice {
            font-size: 34px;
            font-weight: bold;
            margin-bottom: 14px;
            color: #f5e6c8;
        }

        .roomPriceBox .aspNetCheck { color: white; }

        .subSection {
            margin-top: 18px;
            background: linear-gradient(135deg, #fffdf5, #f5e6c8);
            border: 1px solid #c9a75d;
            border-radius: 20px;
            padding: 22px;
        }

        .subSection h4 {
            color: #8b0000;
            font-size: 24px;
            margin-bottom: 18px;
        }

        .mealBlock {
            margin-bottom: 18px;
            padding: 16px;
            background: white;
            border-radius: 16px;
            border: 1px solid #c9a75d;
        }

        .mealBlock h5 {
            color: #006233;
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
            background: #fff7e6;
            padding: 10px 14px;
            border-radius: 12px;
            border: 1px solid #c9a75d;
            min-width: 170px;
        }

        .liste, .inputText {
            width: 100%;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #c9a75d;
            font-size: 16px;
            background-color: #fffdf5;
        }

        .timeCard {
            background: white;
            border-radius: 16px;
            padding: 18px;
            border: 1px solid #c9a75d;
        }

        .timeCard label {
            display: block;
            font-weight: bold;
            color: #8b0000;
            margin-bottom: 10px;
            font-size: 17px;
        }

        .totalBox {
            background: linear-gradient(135deg, #ffffff, #f5e6c8);
            border: 1px solid #c9a75d;
            border-radius: 24px;
            padding: 25px;
            text-align: center;
        }

        .totalBox h2 {
            color: #8b0000;
            font-size: 30px;
            margin-bottom: 10px;
        }

        .totalValue {
            font-size: 36px;
            font-weight: bold;
            color: #006233;
        }

        .btnZone { text-align: center; margin-top: 30px; }

        .btn {
            background: linear-gradient(135deg, #8b0000, #006233);
            color: white;
            border: none;
            border-radius: 40px;
            padding: 16px 42px;
            font-size: 19px;
            font-weight: bold;
            cursor: pointer;
        }

        .footerNote {
            text-align: center;
            margin-top: 18px;
            color: #fff7e6;
            font-size: 15px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
<div class="container">

    <div class="hero">
        <img src="image/tangerhotel.jpg" alt="Tanger" />
        <div class="heroContent">
            <div class="badge">Luxury Hotel Tanger • 5 étoiles</div>
            <h1>Options - Tanger</h1>
            <p>Personnalisez votre séjour avec une ambiance marocaine, du thé, du hammam et des services traditionnels.</p>
        </div>
    </div>

    <div class="sectionBox">
        <h2 class="sectionTitle">Services inclus</h2>
        <div class="includedGrid">
            <div class="includedItem">Thé marocain</div>
            <div class="includedItem">Hammam</div>
            <div class="includedItem">Ambiance traditionnelle</div>
        </div>
    </div>

    <div class="sectionBox">
        <h2 class="sectionTitle">Options supplémentaires</h2>

        <div class="optionsGrid">

            <div class="card">
                <div class="cardImage"><img src="image/linge.jpg" /></div>
                <div class="cardContent">
                    <h3>Linge premium</h3>
                    <p>Ajoutez un linge haut de gamme pour plus de confort.</p>
                    <div class="price">100 MAD</div>
                    <div class="choiceBox" data-prix="100">
                        <asp:CheckBox ID="chkLinge" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage"><img src="image/pet friendly.jpg" /></div>
                <div class="cardContent">
                    <h3>Pet Friendly</h3>
                    <p>Ajoutez votre animal avec ses informations de voyage.</p>
                    <div class="price">150 MAD</div>
                    <div class="choiceBox" data-prix="150">
                        <asp:CheckBox ID="chkPet" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage"><img src="image/minibar.jpg" /></div>
                <div class="cardContent">
                    <h3>Mini-bar sans alcool</h3>
                    <p>Thé, jus, eau et boissons marocaines sans alcool.</p>
                    <div class="price">120 MAD</div>
                    <div class="choiceBox" data-prix="120">
                        <asp:CheckBox ID="chkMiniBar" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="cardImage"><img src="image/taxi.jpg" /></div>
                <div class="cardContent">
                    <h3>Taxi</h3>
                    <p>Réservez votre déplacement dans Tanger.</p>
                    <div class="price">150 MAD</div>
                    <div class="choiceBox" data-prix="150">
                        <asp:CheckBox ID="chkTaxi" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="sectionBox">
        <h2 class="sectionTitle">Room Service - Tanger</h2>

        <div class="roomTop">
            <div class="roomInfo">
                <p>
                    Petit déjeuner : Msemen / Harcha<br />
                    Déjeuner : Tajine / Couscous<br />
                    Dîner : Pastilla / Grillades<br />
                    Boissons : Thé / Jus
                </p>
            </div>

            <div class="roomPriceBox" data-prix="100">
                <h3>Option Room Service</h3>
                <div class="bigPrice">100 MAD</div>
                <asp:CheckBox ID="chkRoomService" runat="server" Text="Ajouter Room Service" CssClass="aspNetCheck optionCalc" />
            </div>
        </div>

        <div class="subSection">
            <h4>Choix des repas</h4>

            <div class="mealBlock">
                <h5>Petit déjeuner</h5>
                <div class="mealChoices">
                    <span class="mealItem"><asp:CheckBox ID="chkMsemen" runat="server" Text="Msemen" /></span>
                    <span class="mealItem"><asp:CheckBox ID="chkHarcha" runat="server" Text="Harcha" /></span>
                </div>
            </div>

            <div class="mealBlock">
                <h5>Déjeuner</h5>
                <div class="mealChoices">
                    <span class="mealItem"><asp:CheckBox ID="chkTajine" runat="server" Text="Tajine" /></span>
                    <span class="mealItem"><asp:CheckBox ID="chkCouscous" runat="server" Text="Couscous" /></span>
                </div>
            </div>

            <div class="mealBlock">
                <h5>Dîner</h5>
                <div class="mealChoices">
                    <span class="mealItem"><asp:CheckBox ID="chkPastilla" runat="server" Text="Pastilla" /></span>
                    <span class="mealItem"><asp:CheckBox ID="chkGrillades" runat="server" Text="Grillades" /></span>
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
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>

    <div class="sectionBox">
        <h2 class="sectionTitle">Détails supplémentaires</h2>

        <div class="timeGrid">
            <div class="timeCard">
                <label>Race de l’animal</label>
                <asp:TextBox ID="txtRace" runat="server" CssClass="inputText" placeholder="Ex : chat, chien..."></asp:TextBox>
            </div>

            <div class="timeCard">
                <label>Dimensions animal</label>
                <asp:TextBox ID="txtDimensions" runat="server" CssClass="inputText" placeholder="Ex : petit, moyen..."></asp:TextBox>
            </div>

            <div class="timeCard">
                <label>Passeport animal</label>
                <asp:TextBox ID="txtPasseport" runat="server" CssClass="inputText" placeholder="Oui / Non"></asp:TextBox>
            </div>

            <div class="timeCard">
                <label>Heure du taxi</label>
                <asp:TextBox ID="txtHeureTaxi" runat="server" CssClass="inputText" placeholder="Ex : 18:30"></asp:TextBox>
            </div>

            <div class="timeCard">
                <label>Type de taxi</label>
                <asp:DropDownList ID="ddlTaxi" runat="server" CssClass="liste">
                    <asp:ListItem Text="Standard" Value="Standard" />
                    <asp:ListItem Text="Van familial" Value="Van familial" />
                    <asp:ListItem Text="Taxi luxe" Value="Taxi luxe" />
                </asp:DropDownList>
            </div>

            <div class="timeCard">
                <label>Préférence mini-bar</label>
                <asp:TextBox ID="txtMiniBar" runat="server" CssClass="inputText" placeholder="Thé, jus, eau..."></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="sectionBox">
        <div class="totalBox">
            <h2>Total des options</h2>
            <div class="totalValue">Total : <span id="totalOptions">0 MAD</span></div>
        </div>
    </div>

    <div class="btnZone">
        <asp:Button ID="btnContinuer" runat="server" Text="Continuer la réservation" CssClass="btn" OnClick="btnContinuer_Click" />
    </div>

    <div class="footerNote">Luxury Hotel Tanger • Réservation personnalisée</div>

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

        document.getElementById("totalOptions").innerText = total + " MAD";
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