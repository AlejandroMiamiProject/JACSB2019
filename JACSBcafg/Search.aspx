<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="JACSBcafg.Contact" ClientIDMode="Inherit" %>

<asp:Content ID="btnSearch_Click" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3></h3>
    <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" onClick="BtnSearch_Click"/>
    <asp:Label ID="lblSearch" runat="server" Text=""></asp:Label>
</asp:Content>