<%@ Page Title="Karton - Home" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="KartonWebApp.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="jumbotron">
                    <h1><asp:Label ID="lblBody" runat="server" Text="Welcome to <strong>Karton.live</strong>"></asp:Label></h1>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
