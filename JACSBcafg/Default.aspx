<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JACSBcafg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>CoolAppsForGeeks</h1>
        <p class="lead">CoolAppsForGeeks is a site that serves all of your programming skill needs. <br>It allows you to search, sort, and keep track of your learning sites and skills.</p>
        <p><a href="http://www.CoolAppsForGeeks.azure.....net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Search Learning Sites</h2>
            <p>
                There are hundreds of sites, courses, and tutorials. Search by topic, skill level, site, category, rating, system requirements...
            </p>
            <p>
                <a class="btn btn-default" href="https://link to search function ....">Search modules &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Sort Modules</h2>
            <p>
                Sort your search results and compare different learning modules to find one that best fits your needs...
            </p>
            <p>
                <a class="btn btn-default" href="https://link....">Sort modules &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Track Your Learning</h2>
            <p>
                Easily track your learning by adding an account and modules to your library, where you can organize sites by favorites, current, completed, and track your learning progress.
            </p>
            <p>
                <a class="btn btn-default" href="https://CoolAppsForGeeks....">Create Account &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
