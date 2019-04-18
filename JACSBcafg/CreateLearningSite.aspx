<%@ Page Title="Create Learning Site" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateLearningSite.aspx.cs" Inherits="JACSBcafg.CreateLearningSite" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Lets get some info</h3>

    <%-- [lsId]          INT            IDENTITY (1, 1) NOT NULL, --%>
    <%-- [lsName]        NVARCHAR (100) NOT NULL, --%>
    <%-- [userId]        INT            NOT NULL, --%>
    <%-- [lsOwnerName]   NVARCHAR (100) DEFAULT ('UNKNOWN') NOT NULL, --%>
    <%-- [lsEmail]       NVARCHAR (100) DEFAULT ('example@example.com') NOT NULL, --%>
    <%-- [lsPhoneNumber] NVARCHAR (30)  NOT NULL DEFAULT ('000-000-000'), --%>
    <%-- [lsWebAddress]  NVARCHAR (100) NULL, --%>
    <%-- [lsIsApproved]  BIT            DEFAULT ((0)) NOT NULL, --%>

    <br>

    <%--Name Field --%>
    <asp:TextBox ID="lsName" CssClass="form-control" runat="server" placeholder="Company Name"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="lsName"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
    <br>
    <br>

    <%--Owner's Name Field --%>
    <asp:TextBox ID="lsOwnerName" CssClass="form-control" runat="server" placeholder="Owner's Name"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="lsOwnerName"
                    CssClass="text-danger" ErrorMessage="The owner's name field is required." />
    <br>
    <br>

    <%--Email Adress Field --%>
    <asp:TextBox ID="lsEmail" CssClass="form-control" runat="server" placeholder="Email Adress"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="lsEmail"
                    CssClass="text-danger" ErrorMessage="The email adress field is required." />
    <br>
    <br>

    <%--Phone Number Field --%>
    <asp:TextBox ID="lsPhoneNumber" CssClass="form-control" runat="server" placeholder="Phone Number: XXX-XXX-XXXX"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="lsPhoneNumber"
                    CssClass="text-danger" ErrorMessage="The phone number field is required." />
    <br>
    <br>

    <%--Web Adress Field --%>
    <asp:TextBox ID="lsWebAddress" CssClass="form-control" runat="server" placeholder="Web Adress"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="lsWebAddress"
                    CssClass="text-danger" ErrorMessage="The web adress field is required." />
    <br>
    <br>

    <%--Create Button --%>
    <asp:Button ID="createLearningSite" CssClass="btn btn-primary" runat="server" Text="Create" onClick="btnCreate_Click"/>
</asp:Content>