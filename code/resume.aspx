<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resume.aspx.cs" Inherits="hotelerie.resume" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Résumé réservation</title>
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
            width: 1000px;
            margin: 40px auto;
        }

        .box {
            background: white;
            border-radius: 25px;
            box-shadow: 0 12px 28px rgba(0,0,0,0.14);
            overflow: hidden;
        }

        .header {
            background: linear-gradient(135deg, #1f3b73, #2c5aa0);
            color: white;
            padding: 35px;
            text-align: center;
        }

        .header h1 {
            font-size: 42px;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 18px;
        }

        .content {
            padding: 30px;
        }

        .ligne {
            background: #f7faff;
            border: 1px solid #dce8ff;
            border-radius: 16px;
            padding: 18px;
            margin-bottom: 18px;
        }

        .ligne h3 {
            color: #1f3b73;
            margin-bottom: 8px;
            font-size: 22px;
        }

        .ligne p {
            color: #444;
            line-height: 1.8;
            font-size: 17px;
        }

        .prixBox {
            background: linear-gradient(135deg, #eaffef, #f4fff6);
            border: 1px solid #ccefd4;
            border-radius: 20px;
            padding: 22px;
            text-align: center;
            margin-top: 20px;
        }

        .prixBox h2 {
            color: #0a7d2f;
            margin-bottom: 10px;
        }

        .prix {
            font-size: 38px;
            color: #0a7d2f;
            font-weight: bold;
        }

        .btnZone {
            text-align: center;
            margin-top: 25px;
        }

        .btn {
            background: #1f3b73;
            color: white;
            border: none;
            padding: 14px 30px;
            border-radius: 30px;
            font-size: 18px;
            cursor: pointer;
            margin: 8px;
        }

        .btn:hover {
            background: #16305f;
        }

        .footer {
            text-align: center;
            padding: 18px;
            color: #6a7da5;
            font-size: 15px;
        }

        @media screen and (max-width: 1050px) {
            .container {
                width: 95%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="box">

                <div class="header">
                    <h1>Résumé de votre réservation</h1>
                    <p>Luxury Hotel</p>
                </div>

                <div class="content">

                    <div class="ligne">
                        <h3>Ville</h3>
                        <p><asp:Label ID="lblVille" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Type de chambre</h3>
                        <p><asp:Label ID="lblTypeChambre" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Description</h3>
                        <p><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Options</h3>
                        <p><asp:Label ID="lblOptions" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Repas choisis</h3>
                        <p><asp:Label ID="lblRepas" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Heure du petit déjeuner</h3>
                        <p><asp:Label ID="lblPetit" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Heure du déjeuner</h3>
                        <p><asp:Label ID="lblDej" runat="server"></asp:Label></p>
                    </div>

                    <div class="ligne">
                        <h3>Heure du dîner</h3>
                        <p><asp:Label ID="lblDiner" runat="server"></asp:Label></p>
                    </div>
                    <div class="ligne">
    <h3>Date d’arrivée</h3>
    <p><asp:Label ID="lblDateDebut" runat="server"></asp:Label></p>
</div>

<div class="ligne">
    <h3>Date de départ</h3>
    <p><asp:Label ID="lblDateFin" runat="server"></asp:Label></p>
</div>

<div class="ligne">
    <h3>Nombre de nuits</h3>
    <p><asp:Label ID="lblNbNuits" runat="server"></asp:Label></p>
</div>

                    <div class="prixBox">
                        <h2>Prix total</h2>
                        <div class="prix">
                            <asp:Label ID="lblPrixTotal" runat="server"></asp:Label>
                        </div>
                    </div>

                    <div class="btnZone">
                        <asp:Button ID="btnRetour" runat="server" Text="Retour" CssClass="btn" Onclick="btnRetour_Click" />
                        <asp:Button ID="btnConfirmer" runat="server" Text="Confirmer" CssClass="btn" OnClick="btnConfirmer_Click" />
                    </div>
                    <asp:Label ID="lblErreur" runat="server" ForeColor="Red"></asp:Label>

                </div>

                <div class="footer">
                    Luxury Hotel • Merci pour votre réservation
                </div>

            </div>
        </div>
    </form>
</body>
</html>
