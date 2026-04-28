<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="optionsDubai.aspx.cs" Inherits="hotelerie.optionsDubai" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Options Dubai</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #050505, #1a1300, #d4af37);
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
            background: linear-gradient(to right, rgba(0,0,0,0.78), rgba(0,0,0,0.45), rgba(212,175,55,0.20));
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
            background: rgba(212,175,55,0.85);
            color: #111;
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
            color: #fff7d6;
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
            color: #8b6f1a;
            margin-bottom: 18px;
        }

        .includedGrid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .includedItem {
            background: linear-gradient(135deg, #fffaf0, #fff1b8);
            border: 1px solid #d4af37;
            border-radius: 18px;
            padding: 18px;
            font-size: 17px;
            color: #5a4500;
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
            border: 1px solid #ead27a;
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
            color: #8b6f1a;
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
            background: #fff3b0;
            color: #6b5200;
            font-weight: bold;
            padding: 10px 16px;
            border-radius: 30px;
            font-size: 20px;
            margin-bottom: 16px;
        }

        .choiceBox {
            background: linear-gradient(135deg, #fffaf0, #fff6d8);
            border: 1px solid #d4af37;
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
            background: linear-gradient(135deg, #050505, #8b6f1a);
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
            color: #ffe88a;
        }

        .roomPriceBox .aspNetCheck {
            color: white;
        }

        .subSection {
            margin-top: 18px;
            background: linear-gradient(135deg, #fffdf5, #fff6d8);
            border: 1px solid #d4af37;
            border-radius: 20px;
            padding: 22px;
        }

        .subSection h4 {
            color: #8b6f1a;
            font-size: 24px;
            margin-bottom: 18px;
        }

        .mealBlock {
            margin-bottom: 18px;
            padding: 16px;
            background: white;
            border-radius: 16px;
            box-shadow: 0 6px 14px rgba(0,0,0,0.06);
            border: 1px solid #ead27a;
        }

        .mealBlock h5 {
            color: #8b6f1a;
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
            background: #fffaf0;
            padding: 10px 14px;
            border-radius: 12px;
            border: 1px solid #ead27a;
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
            border: 1px solid #ead27a;
            box-shadow: 0 6px 14px rgba(0,0,0,0.06);
        }

        .timeCard label {
            display: block;
            font-weight: bold;
            color: #8b6f1a;
            margin-bottom: 10px;
            font-size: 17px;
        }

        .liste, .inputText {
            width: 100%;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #d4af37;
            font-size: 16px;
            background-color: #fffdf5;
        }

        .totalBox {
            background: linear-gradient(135deg, #ffffff, #fff6d8);
            border: 1px solid #d4af37;
            border-radius: 24px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 10px 22px rgba(0,0,0,0.14);
        }

        .totalBox h2 {
            color: #8b6f1a;
            font-size: 30px;
            margin-bottom: 10px;
        }

        .totalValue {
            font-size: 36px;
            font-weight: bold;
            color: #008a2b;
        }

        .btnZone {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            background: linear-gradient(135deg, #d4af37, #fff1a3);
            color: black;
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
            background: white;
        }

        .footerNote {
            text-align: center;
            margin-top: 18px;
            color: #fff3b0;
            font-size: 15px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <div class="hero">
            <img src="image/dubaihotel.jpg" alt="Dubai" />
            <div class="heroContent">
                <div class="badge">Luxury Hotel Dubai • 7 étoiles</div>
                <h1>Options - Dubai</h1>
                <p>Personnalisez votre séjour avec des services VIP, un room service luxueux et des options premium adaptées à Dubai.</p>
            </div>
        </div>

        <div class="sectionBox">
            <h2 class="sectionTitle">Services inclus</h2>
            <div class="includedGrid">
                <div class="includedItem">Services VIP</div>
                <div class="includedItem">Spa premium</div>
                <div class="includedItem">Chauffeur selon la suite</div>
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
                        <p>Ajoutez un linge haut de gamme pour un confort supérieur pendant votre séjour.</p>
                        <div class="price">40 AED</div>
                        <div class="choiceBox" data-prix="40">
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
                        <p>Voyagez avec votre animal en toute tranquillité grâce à cette option premium.</p>
                        <div class="price">100 AED</div>
                        <div class="choiceBox" data-prix="100">
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
                        <p>Choisissez un mini-bar avec boissons, jus, thé, eau et préférences personnelles.</p>
                        <div class="price">150 AED</div>
                        <div class="choiceBox" data-prix="150">
                            <asp:CheckBox ID="chkMiniBar" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="cardImage">
                        <img src="image/taxi.jpg" alt="Taxi" />
                    </div>
                    <div class="cardContent">
                        <h3>Taxi privé</h3>
                        <p>Réservez votre déplacement hôtel ↔ destination avec confort et simplicité.</p>
                        <div class="price">200 AED</div>
                        <div class="choiceBox" data-prix="200">
                            <asp:CheckBox ID="chkTaxi" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="sectionBox">
            <h2 class="sectionTitle">Room Service - Dubai</h2>

            <div class="roomTop">
                <div class="roomInfo">
                    <p>
                        Petit déjeuner : Shakshouka / Pain arabe<br />
                        Déjeuner : Shawarma / Kabsa<br />
                        Dîner : Agneau / Poisson épicé<br />
                    </p>
                </div>

                <div class="roomPriceBox" data-prix="120">
                    <h3>Option Room Service</h3>
                    <div class="bigPrice">120 AED</div>
                    <asp:CheckBox ID="chkRoomService" runat="server" Text="Ajouter Room Service" CssClass="aspNetCheck optionCalc" />
                </div>
            </div>

            <div class="subSection">
                <h4>Choix des repas</h4>

                <div class="mealBlock">
                    <h5>Petit déjeuner</h5>
                    <div class="mealChoices">
                        <span class="mealItem"><asp:CheckBox ID="chkShakshouka" runat="server" Text="Shakshouka" /></span>
                        <span class="mealItem"><asp:CheckBox ID="chkPainArabe" runat="server" Text="Pain arabe" /></span>
                    </div>
                </div>

                <div class="mealBlock">
                    <h5>Déjeuner</h5>
                    <div class="mealChoices">
                        <span class="mealItem"><asp:CheckBox ID="chkShawarma" runat="server" Text="Shawarma" /></span>
                        <span class="mealItem"><asp:CheckBox ID="chkKabsa" runat="server" Text="Kabsa" /></span>
                    </div>
                </div>

                <div class="mealBlock">
                    <h5>Dîner</h5>
                    <div class="mealChoices">
                        <span class="mealItem"><asp:CheckBox ID="chkAgneau" runat="server" Text="Agneau" /></span>
                        <span class="mealItem"><asp:CheckBox ID="chkPoisson" runat="server" Text="Poisson épicé" /></span>
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
                        <asp:ListItem Text="Luxury SUV" Value="Luxury SUV" />
                        <asp:ListItem Text="Limousine" Value="Limousine" />
                    </asp:DropDownList>
                </div>

                <div class="timeCard">
                    <label>Préférence mini-bar</label>
                    <asp:TextBox ID="txtMiniBar" runat="server" CssClass="inputText" placeholder="Jus, thé, eau, alcool..."></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="sectionBox">
            <div class="totalBox">
                <h2>Total des options</h2>
                <div class="totalValue">Total : <span id="totalOptions">0 AED</span></div>
            </div>
        </div>

        <div class="btnZone">
            <asp:Button ID="btnContinuer" runat="server" Text="Continuer la réservation" CssClass="btn" OnClick="btnContinuer_Click" />
        </div>

        <div class="footerNote">
            Luxury Hotel Dubai • Réservation personnalisée
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

        document.getElementById("totalOptions").innerText = total + " AED";
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