<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserver.aspx.cs" Inherits="hotelerie.reserver" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Choix hôtel</title>

    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            min-height: 100vh;
        }

        .container {
            width: 1180px;
            margin: 35px auto;
        }

        .hero {
            background: linear-gradient(rgba(7,17,31,.78), rgba(16,42,67,.78)), url('image/hotel.jpg');
            background-size: cover;
            background-position: center;
            border-radius: 28px;
            padding: 45px;
            color: white;
            box-shadow: 0 15px 40px rgba(0,0,0,.35);
            margin-bottom: 30px;
        }

        .hero h1 {
            font-size: 52px;
            margin-bottom: 12px;
        }

        .hero p {
            font-size: 20px;
            color: #edf5ff;
        }

        .filters {
            background: rgba(255,255,255,.96);
            padding: 25px;
            border-radius: 24px;
            margin-bottom: 30px;
            box-shadow: 0 12px 30px rgba(0,0,0,.20);
        }

        .filters h2 {
            color: #102a43;
            margin-bottom: 18px;
        }

        .filterGrid {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 16px;
        }

        .filterBox label {
            display: block;
            color: #102a43;
            font-weight: bold;
            margin-bottom: 8px;
        }

        select {
            width: 100%;
            padding: 12px;
            border-radius: 14px;
            border: 1px solid #9fb7d4;
            background: #f8fbff;
            font-size: 15px;
        }

        .btnFilter {
            margin-top: 25px;
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 20px;
            background: #102a43;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        .btnFilter:hover {
            background: #07111f;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 28px;
        }

        .card {
            background: white;
            border-radius: 25px;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(0,0,0,0.25);
            transition: 0.3s;
            border: 1px solid #9fb7d4;
        }

        .card:hover {
            transform: translateY(-8px);
        }

        .card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .content {
            padding: 24px;
        }

        .content h2 {
            color: #102a43;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .stars {
            color: #d4af37;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .info {
            color: #555;
            line-height: 1.7;
            margin-bottom: 15px;
        }

        .price {
            display: inline-block;
            background: #e8f1ff;
            color: #102a43;
            padding: 10px 18px;
            border-radius: 25px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 25px;
            background: linear-gradient(135deg, #07111f, #102a43);
            color: white;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: #07111f;
        }

        .hidden {
            display: none;
        }

        .message {
            display: none;
            text-align: center;
            background: white;
            padding: 25px;
            border-radius: 22px;
            color: #102a43;
            font-size: 22px;
            font-weight: bold;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <div class="hero">
            <h1>Choisissez votre hôtel</h1>
            <p>Filtrez selon votre budget, votre pays, le continent ou le nombre d’étoiles.</p>
        </div>

        <div class="filters">
            <h2>Recherche et filtres</h2>

            <div class="filterGrid">

                <div class="filterBox">
                    <label>Pays</label>
                    <select id="filtrePays">
                        <option value="tous">Tous</option>
                        <option value="Canada">Canada</option>
                        <option value="Émirats arabes unis">Émirats arabes unis</option>
                        <option value="États-Unis">États-Unis</option>
                        <option value="Maroc">Maroc</option>
                    </select>
                </div>

                <div class="filterBox">
                    <label>Continent</label>
                    <select id="filtreContinent">
                        <option value="tous">Tous</option>
                        <option value="Amérique du Nord">Amérique du Nord</option>
                        <option value="Asie">Asie</option>
                        <option value="Afrique">Afrique</option>
                    </select>
                </div>

                <div class="filterBox">
                    <label>Étoiles</label>
                    <select id="filtreEtoiles">
                        <option value="tous">Toutes</option>
                        <option value="4">4 étoiles</option>
                        <option value="5">5 étoiles</option>
                        <option value="7">7 étoiles</option>
                    </select>
                </div>

                <div class="filterBox">
                    <label>Prix minimum</label>
                    <select id="filtrePrixMin">
                        <option value="0">0</option>
                        <option value="100">100</option>
                        <option value="500">500</option>
                        <option value="800">800</option>
                        <option value="1000">1000</option>
                    </select>
                </div>

                <div class="filterBox">
                    <label>Prix maximum</label>
                    <select id="filtrePrixMax">
                        <option value="99999">Tous</option>
                        <option value="200">200</option>
                        <option value="500">500</option>
                        <option value="1000">1000</option>
                        <option value="2000">2000</option>
                    </select>
                </div>

            </div>

            <button type="button" class="btnFilter" onclick="filtrerHotels()">Appliquer les filtres</button>
        </div>

        <div id="message" class="message">
            Aucun hôtel ne correspond à votre recherche.
        </div>

        <div class="grid">

            <div class="card hotel"
                 data-pays="Canada"
                 data-continent="Amérique du Nord"
                 data-etoiles="4"
                 data-prix="120">
                <img src="image/montrealhotel.jpg" />
                <div class="content">
                    <h2>Luxury Hotel Montréal</h2>
                    <div class="stars">★★★★</div>
                    <div class="info">
                        Pays : Canada<br />
                        Continent : Amérique du Nord<br />
                        Devise : CAD
                    </div>
                    <div class="price">À partir de 120 CAD / nuit</div>
                    <asp:Button ID="btnMontreal" runat="server" Text="Choisir Montréal" CssClass="btn" OnClick="btnMontreal_Click" />
                </div>
            </div>

            <div class="card hotel"
                 data-pays="Émirats arabes unis"
                 data-continent="Asie"
                 data-etoiles="7"
                 data-prix="900">
                <img src="image/hoteldubai.jpg" />
                <div class="content">
                    <h2>Luxury Hotel Dubai</h2>
                    <div class="stars">★★★★★★★</div>
                    <div class="info">
                        Pays : Émirats arabes unis<br />
                        Continent : Asie<br />
                        Devise : AED
                    </div>
                    <div class="price">À partir de 900 AED / nuit</div>
                    <asp:Button ID="btnDubai" runat="server" Text="Choisir Dubai" CssClass="btn" OnClick="btnDubai_Click" />
                </div>
            </div>

            <div class="card hotel"
                 data-pays="États-Unis"
                 data-continent="Amérique du Nord"
                 data-etoiles="5"
                 data-prix="150">
                <img src="image/newyorkhotel.jpg" />
                <div class="content">
                    <h2>Luxury Hotel New York</h2>
                    <div class="stars">★★★★★</div>
                    <div class="info">
                        Pays : États-Unis<br />
                        Continent : Amérique du Nord<br />
                        Devise : USD
                    </div>
                    <div class="price">À partir de 150 USD / nuit</div>
                    <asp:Button ID="btnNewYork" runat="server" Text="Choisir New York" CssClass="btn" OnClick="btnNewYork_Click" />
                </div>
            </div>

            <div class="card hotel"
                 data-pays="Maroc"
                 data-continent="Afrique"
                 data-etoiles="5"
                 data-prix="800">
                <img src="image/tangerhotel.jpg" />
                <div class="content">
                    <h2>Luxury Hotel Tanger</h2>
                    <div class="stars">★★★★★</div>
                    <div class="info">
                        Pays : Maroc<br />
                        Continent : Afrique<br />
                        Devise : MAD
                    </div>
                    <div class="price">À partir de 800 MAD / nuit</div>
                    <asp:Button ID="btnTanger" runat="server" Text="Choisir Tanger" CssClass="btn" OnClick="btnTanger_Click" />
                </div>
            </div>

        </div>
    </div>
</form>

<script>
    function filtrerHotels() {
        let pays = document.getElementById("filtrePays").value;
        let continent = document.getElementById("filtreContinent").value;
        let etoiles = document.getElementById("filtreEtoiles").value;
        let prixMin = parseInt(document.getElementById("filtrePrixMin").value);
        let prixMax = parseInt(document.getElementById("filtrePrixMax").value);

        let hotels = document.querySelectorAll(".hotel");
        let compteur = 0;

        hotels.forEach(function (hotel) {
            let hotelPays = hotel.getAttribute("data-pays");
            let hotelContinent = hotel.getAttribute("data-continent");
            let hotelEtoiles = hotel.getAttribute("data-etoiles");
            let hotelPrix = parseInt(hotel.getAttribute("data-prix"));

            let okPays = (pays === "tous" || pays === hotelPays);
            let okContinent = (continent === "tous" || continent === hotelContinent);
            let okEtoiles = (etoiles === "tous" || etoiles === hotelEtoiles);
            let okPrix = (hotelPrix >= prixMin && hotelPrix <= prixMax);

            if (okPays && okContinent && okEtoiles && okPrix) {
                hotel.classList.remove("hidden");
                compteur++;
            } else {
                hotel.classList.add("hidden");
            }
        });

        if (compteur === 0) {
            document.getElementById("message").style.display = "block";
        } else {
            document.getElementById("message").style.display = "none";
        }
    }
</script>

</body>
</html>