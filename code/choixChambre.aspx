<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="choixChambre.aspx.cs" Inherits="hotelerie.choixChambre" %>

<!DOCTYPE html>
<html>
<head runat="server">
<title>Choix chambre</title>

<style>
body {
    margin:0;
    font-family:Arial;
    background: linear-gradient(135deg,#07111f,#102a43,#dce6f2);
}

.container {
    width:1100px;
    margin:40px auto;
}

h1 {
    color:white;
    text-align:center;
}

.filters {
    background:white;
    padding:20px;
    border-radius:20px;
    margin-bottom:20px;
}

.grid {
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.card {
    background:white;
    border-radius:20px;
    overflow:hidden;
}

.card img {
    width:100%;
    height:180px;
}

.content {
    padding:15px;
}

.btn {
    width:100%;
    padding:10px;
    background:#102a43;
    color:white;
    border:none;
}
</style>
</head>

<body>
<form runat="server">

<div class="container">

<h1>Choisissez votre chambre</h1>
<div class="filters">

    <h2>Dates de réservation</h2>

    <label>Date arrivée</label>
    <asp:TextBox ID="txtDateDebut" runat="server" TextMode="Date"></asp:TextBox>

    <label>Date départ</label>
    <asp:TextBox ID="txtDateFin" runat="server" TextMode="Date"></asp:TextBox>

    <asp:Button ID="btnRechercher" runat="server"
        Text="Voir disponibilité"
        CssClass="btn"
        OnClick="btnRechercher_Click" />

    <asp:Label ID="lblErreur" runat="server" ForeColor="Red"></asp:Label>

</div>
<div class="grid">

<asp:Repeater ID="repChambres" runat="server" OnItemCommand="repChambres_ItemCommand">
<ItemTemplate>

<div class="card">

    <img src="<%# Eval("Image") %>" />

    <div class="content">
        <h3><%# Eval("Nom") %></h3>
        <p><%# Eval("Description") %></p>
        <p><%# Eval("Prix") %> <%# Eval("Devise") %></p>

        <asp:Button runat="server"
            Text="Choisir"
            CssClass="btn"
            CommandName="choisir"
            CommandArgument='<%# Eval("IdChambre") + "|" + Eval("Nom") + "|" + Eval("Prix") + "|" + Eval("Categorie") %>' />
    </div>

</div>

</ItemTemplate>
</asp:Repeater>

</div>

</div>
</form>
</body>
</html>