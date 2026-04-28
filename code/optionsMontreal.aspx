<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="optionsMontreal.aspx.cs" Inherits="hotelerie.optionsMontreal" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Options Montréal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #dfe9f3, #eef5ff, #d9e8ff);
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
            box-shadow: 0 15px 40px rgba(0,0,0,0.18);
            margin-bottom: 30px;
            animation: fadeUp 0.8s ease;
        }

        .hero img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transform: scale(1.03);
        }

        .hero::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(to right, rgba(8,20,45,0.72), rgba(8,20,45,0.35), rgba(8,20,45,0.12));
        }

        .heroContent {
            position: absolute;
            left: 40px;
            bottom: 40px;
            z-index: 2;
            color: white;
            max-width: 680px;
        }

        .badge {
            display: inline-block;
            background: rgba(255,255,255,0.18);
            border: 1px solid rgba(255,255,255,0.35);
            padding: 10px 18px;
            border-radius: 30px;
            font-size: 14px;
            margin-bottom: 18px;
            backdrop-filter: blur(6px);
        }

        .heroContent h1 {
            font-size: 52px;
            margin-bottom: 12px;
        }

        .heroContent p {
            font-size: 21px;
            line-height: 1.6;
            color: #f2f5ff;
        }

        .sectionBox {
            background: rgba(255,255,255,0.92);
            border-radius: 24px;
            padding: 28px;
            box-shadow: 0 12px 30px rgba(31,59,115,0.12);
            margin-bottom: 28px;
            animation: fadeUp 0.9s ease;
        }

        .sectionTitle {
            font-size: 30px;
            color: #1f3b73;
            margin-bottom: 18px;
        }

        .includedGrid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .includedItem {
            background: linear-gradient(135deg, #f5f8ff, #edf3ff);
            border: 1px solid #dbe6ff;
            border-radius: 18px;
            padding: 18px;
            font-size: 17px;
            color: #1f3b73;
            font-weight: bold;
            box-shadow: 0 6px 12px rgba(31,59,115,0.06);
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
            box-shadow: 0 10px 24px rgba(0,0,0,0.10);
            transition: transform 0.30s ease, box-shadow 0.30s ease;
            border: 1px solid #e7eeff;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 18px 35px rgba(31,59,115,0.18);
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
            transition: transform 0.40s ease;
        }

        .card:hover .cardImage img {
            transform: scale(1.08);
        }

        .cardContent {
            padding: 22px;
        }

        .cardContent h3 {
            font-size: 30px;
            color: #1f3b73;
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
            background: #ecfff0;
            color: #008a2b;
            font-weight: bold;
            padding: 10px 16px;
            border-radius: 30px;
            font-size: 20px;
            margin-bottom: 16px;
        }

        .choiceBox {
            background: linear-gradient(135deg, #f7faff, #eef4ff);
            border: 1px solid #dce8ff;
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
            background: linear-gradient(135deg, #1f3b73, #345ca8);
            color: white;
            border-radius: 20px;
            padding: 22px;
            box-shadow: 0 10px 20px rgba(31,59,115,0.18);
        }

        .roomPriceBox h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .roomPriceBox .bigPrice {
            font-size: 34px;
            font-weight: bold;
            margin-bottom: 14px;
        }

        .roomPriceBox .aspNetCheck {
            color: white;
        }

        .subSection {
            margin-top: 18px;
            background: linear-gradient(135deg, #f8fbff, #f2f7ff);
            border: 1px solid #dbe7ff;
            border-radius: 20px;
            padding: 22px;
        }

        .subSection h4 {
            color: #1f3b73;
            font-size: 24px;
            margin-bottom: 18px;
        }

        .mealBlock {
            margin-bottom: 18px;
            padding: 16px;
            background: white;
            border-radius: 16px;
            box-shadow: 0 6px 14px rgba(0,0,0,0.05);
            border: 1px solid #edf2ff;
        }

        .mealBlock h5 {
            color: #1f3b73;
            font-size: 19px;
            margin-bottom: 12px;
        }

        .mealChoices {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            align-items: center;
        }

        .mealItem {
            display: inline-flex;
            align-items: center;
            background: #f7faff;
            padding: 10px 14px;
            border-radius: 12px;
            border: 1px solid #e1e9ff;
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
            border: 1px solid #edf2ff;
            box-shadow: 0 6px 14px rgba(0,0,0,0.05);
        }

        .timeCard label {
            display: block;
            font-weight: bold;
            color: #1f3b73;
            margin-bottom: 10px;
            font-size: 17px;
        }

        .liste {
            width: 100%;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #bfd0f7;
            font-size: 16px;
            background-color: #f9fbff;
        }

        .totalBox {
            background: linear-gradient(135deg, #ffffff, #f5f9ff);
            border: 1px solid #d7e5ff;
            border-radius: 24px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 10px 22px rgba(31,59,115,0.10);
        }

        .totalBox h2 {
            color: #1f3b73;
            font-size: 30px;
            margin-bottom: 10px;
        }

        .totalValue {
            font-size: 36px;
            font-weight: bold;
            color: #0a8a2a;
        }

        .btnZone {
            text-align: center;
            margin-top: 30px;
        }

        .btn {
            background: linear-gradient(135deg, #1f3b73, #2c5aa0);
            color: white;
            border: none;
            border-radius: 40px;
            padding: 16px 42px;
            font-size: 19px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 10px 22px rgba(31,59,115,0.25);
            transition: 0.30s ease;
        }

        .btn:hover {
            transform: translateY(-3px) scale(1.03);
            box-shadow: 0 15px 28px rgba(31,59,115,0.32);
        }

        .footerNote {
            text-align: center;
            margin-top: 18px;
            color: #5c6e91;
            font-size: 15px;
        }

        @keyframes fadeUp {
            from {
                opacity: 0;
                transform: translateY(22px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media screen and (max-width: 1200px) {
            .container {
                width: 95%;
            }
        }

        @media screen and (max-width: 900px) {
            .optionsGrid,
            .includedGrid,
            .timeGrid {
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
                <img src="image/hotel.jpg" alt="Montréal" />
                <div class="heroContent">
                    <div class="badge">Luxury Hotel Montréal • 4 étoiles</div>
                    <h1>Options - Montréal</h1>
                    <p>Personnalisez votre séjour avec des services supplémentaires et un room service adapté à vos préférences.</p>
                </div>
            </div>

            <div class="sectionBox">
                <h2 class="sectionTitle">Services inclus</h2>
                <div class="includedGrid">
                    <div class="includedItem">Wi-Fi gratuit</div>
                    <div class="includedItem">Petit déjeuner inclus</div>
                    <div class="includedItem">Mini-frigo dans la chambre</div>
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
                            <p>Ajoutez un linge haut de gamme avec des serviettes et draps de meilleure qualité pour un confort supérieur.</p>
                            <div class="price">15 CAD</div>
                            <div class="choiceBox" data-prix="15">
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
                            <p>Voyagez avec votre animal en toute tranquillité grâce à cette option adaptée à votre séjour.</p>
                            <div class="price">25 CAD</div>
                            <div class="choiceBox" data-prix="25">
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
                            <p>Choisissez un mini-bar pratique avec boissons, selon vos préférences, avec ou sans alcool.</p>
                            <div class="price">30 CAD</div>
                            <div class="choiceBox" data-prix="30">
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
                            <p>Réservez votre déplacement hôtel ↔ destination avec plus de confort et de simplicité.</p>
                            <div class="price">40 CAD</div>
                            <div class="choiceBox" data-prix="40">
                                <asp:CheckBox ID="chkTaxi" runat="server" Text="Ajouter cette option" CssClass="aspNetCheck optionCalc" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="sectionBox">
                <h2 class="sectionTitle">Room Service - Montréal</h2>

                <div class="roomTop">
                    <div class="roomInfo">
                        <p>
                            Petit déjeuner : Pancakes / Omelette<br />
                            Déjeuner : Poutine / Burger<br />
                            Dîner : Saumon / Steak<br />
                        </p>
                    </div>

                    <div class="roomPriceBox" data-prix="20">
                        <h3>Option Room Service</h3>
                        <div class="bigPrice">20 CAD</div>
                        <asp:CheckBox ID="chkRoomService" runat="server" Text="Ajouter Room Service" CssClass="aspNetCheck optionCalc" />
                    </div>
                </div>

                <div class="subSection">
                    <h4>Choix des repas</h4>

                    <div class="mealBlock">
                        <h5>Petit déjeuner</h5>
                        <div class="mealChoices">
                            <span class="mealItem"><asp:CheckBox ID="chkPancakes" runat="server" Text="Pancakes" /></span>
                            <span class="mealItem"><asp:CheckBox ID="chkOmelette" runat="server" Text="Omelette" /></span>
                        </div>
                    </div>

                    <div class="mealBlock">
                        <h5>Déjeuner</h5>
                        <div class="mealChoices">
                            <span class="mealItem"><asp:CheckBox ID="chkPoutine" runat="server" Text="Poutine" /></span>
                            <span class="mealItem"><asp:CheckBox ID="chkBurger" runat="server" Text="Burger" /></span>
                        </div>
                    </div>

                    <div class="mealBlock">
                        <h5>Dîner</h5>
                        <div class="mealChoices">
                            <span class="mealItem"><asp:CheckBox ID="chkSaumon" runat="server" Text="Saumon" /></span>
                            <span class="mealItem"><asp:CheckBox ID="chkSteak" runat="server" Text="Steak" /></span>
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
                <div class="totalBox">
                    <h2>Total des options</h2>
                    <div class="totalValue">Total : <span id="totalOptions">0 CAD</span></div>
                </div>
            </div>

            <div class="btnZone">
                <asp:Button ID="btnContinuer" runat="server" Text="Continuer la réservation" CssClass="btn" OnClick="btnContinuer_Click" />
            </div>

            <div class="footerNote">
                Luxury Hotel Montréal • Réservation personnalisée
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

            document.getElementById("totalOptions").innerText = total + " CAD";
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