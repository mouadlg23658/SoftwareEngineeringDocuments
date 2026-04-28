<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsSuite.aspx.cs" Inherits="hotelerie.detailsSuite" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Détails de la suite</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(135deg, #07111f, #102a43, #dce6f2);
            min-height: 100vh;
        }

        .container {
            width: 850px;
            margin: 40px auto;
            background: white;
            padding: 35px;
            border-radius: 25px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.3);
        }

        h1 {
            text-align: center;
            color: #102a43;
            margin-bottom: 25px;
        }

        .box {
            background: #f8fbff;
            border: 1px solid #9fb7d4;
            border-radius: 18px;
            padding: 22px;
            margin-bottom: 25px;
        }

        h2 {
            color: #102a43;
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 12px;
            margin-bottom: 6px;
        }

        .input {
            width: 100%;
            padding: 12px;
            border-radius: 12px;
            border: 1px solid #9fb7d4;
            font-size: 15px;
        }

        .btn {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 30px;
            background: #102a43;
            color: white;
            font-size: 18px;
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

        <h1>Détails de votre suite</h1>

        <div class="box">
            <h2>Repas sélectionnés</h2>

            <label>Petit déjeuner</label>
            <asp:DropDownList ID="ddlPetitDejeuner" runat="server" CssClass="input"></asp:DropDownList>

            <label>Heure du petit déjeuner</label>
            <asp:DropDownList ID="ddlHeurePetit" runat="server" CssClass="input">
                <asp:ListItem Text="Choisir l'heure" Value="" />
                <asp:ListItem Text="07:00" Value="07:00" />
                <asp:ListItem Text="08:00" Value="08:00" />
                <asp:ListItem Text="09:00" Value="09:00" />
                <asp:ListItem Text="10:00" Value="10:00" />
            </asp:DropDownList>

            <label>Déjeuner</label>
            <asp:DropDownList ID="ddlDejeuner" runat="server" CssClass="input"></asp:DropDownList>

            <label>Heure du déjeuner</label>
            <asp:DropDownList ID="ddlHeureDej" runat="server" CssClass="input">
                <asp:ListItem Text="Choisir l'heure" Value="" />
                <asp:ListItem Text="12:00" Value="12:00" />
                <asp:ListItem Text="13:00" Value="13:00" />
                <asp:ListItem Text="14:00" Value="14:00" />
            </asp:DropDownList>

            <label>Dîner</label>
            <asp:DropDownList ID="ddlDiner" runat="server" CssClass="input"></asp:DropDownList>

            <label>Heure du dîner</label>
            <asp:DropDownList ID="ddlHeureDiner" runat="server" CssClass="input">
                <asp:ListItem Text="Choisir l'heure" Value="" />
                <asp:ListItem Text="18:00" Value="18:00" />
                <asp:ListItem Text="19:00" Value="19:00" />
                <asp:ListItem Text="20:00" Value="20:00" />
                <asp:ListItem Text="21:00" Value="21:00" />
            </asp:DropDownList>
        </div>

        <div class="box">
            <h2>Détails supplémentaires</h2>

            <label>Heure taxi</label>
            <asp:TextBox ID="txtHeureTaxi" runat="server" CssClass="input" placeholder="Ex : 18:30"></asp:TextBox>

            <label>Type taxi</label>
            <asp:DropDownList ID="ddlTaxi" runat="server" CssClass="input">
                <asp:ListItem>Standard</asp:ListItem>
                <asp:ListItem>Luxury SUV</asp:ListItem>
                <asp:ListItem>Limousine</asp:ListItem>
                <asp:ListItem>Taxi luxe</asp:ListItem>
            </asp:DropDownList>

            <label>Préférence mini-bar</label>
            <asp:TextBox ID="txtMiniBar" runat="server" CssClass="input" placeholder="Ex : eau, jus, soda, thé..."></asp:TextBox>

            <label>Race animal</label>
            <asp:TextBox ID="txtRace" runat="server" CssClass="input" placeholder="Ex : chien, chat..."></asp:TextBox>

            <label>Dimensions animal</label>
            <asp:TextBox ID="txtDimensions" runat="server" CssClass="input" placeholder="Ex : petit, moyen, grand"></asp:TextBox>

            <label>Passeport animal</label>
            <asp:TextBox ID="txtPasseport" runat="server" CssClass="input" placeholder="Oui / Non"></asp:TextBox>
        </div>

        <asp:Button ID="btnContinuer" runat="server" Text="Continuer vers le résumé"
            CssClass="btn" OnClick="btnContinuer_Click" />

    </div>
</form>
</body>
</html>