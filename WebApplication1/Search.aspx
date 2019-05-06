<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="JACSBcafg.Search" ClientIDMode="Inherit" %>

<asp:Content ID="btnSearch_Click" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3></h3>

    <%--Here Begins Search for Result --%>
    <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" placeholder="What are you looking for?"></asp:TextBox>
    <br />
    <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Go" OnClick="BtnSearch_Click" />
    <br />
    <asp:Label ID="lblSearch" runat="server" Text=""></asp:Label>
    &nbsp;<br />
    <br />

    <br />
    <p><font size="4px"><b>- OR -</b></font></p>
    <br />
    <br />

    <style type='text/css'>
        .group label {
          font-size: 18px;
        }
    }
    </style>

    <%--Here begins Sort Results --%>
    <div class="row" style="display: block;">
        <div class="col-12" style="padding-left: 15px;">
        <div id="sortResultFilter" class="group">
            <label class="medium" for="sortResults">Sort Results<br />
            </label>
            <span class="fa fa-question-circle-o" aria-hidden="true">
                <br />
            </span>
            <input id="alphaFilter" type="checkbox" name="sectionAttributes[]1" value="AlphaSort">
            <%-- value as true/false instead??? --%>
            <label class="small inline" for="alphaFilter">
                Alphabetical Sort
            </label>
            <br />
            <span class="fa fa-question-circle-o" aria-hidden="true"></span>
            <input id="learningSiteFilter" type="checkbox" name="sectionAttributes[]2" value="learnSiteSort">
            <label class="small inline" for="learnSiteFilter">
                Sort by Learning Site&nbsp;
            </label>
            <br />
            <span class="fa fa-question-circle-o" aria-hidden="true"></span>
            <input id="topicFilter" type="checkbox" name="sectionAttributes[]3" value="topicSort">
            <label class="small inline" for="topicFilter">
                Sort By Topic
            </label>
            <br />
            <span class="fa fa-question-circle-o" aria-hidden="true"></span>
            <input id="langFilter" type="checkbox" value="langSort" name="sectionAttributes[]4">
            <label class="small inline" for="langFilter">
                Sort by Language
            </label>
            <br />
            <span class="fa fa-question-circle-o" aria-hidden="true"></span>
            <input id="skillFilter" type="checkbox" value="skillSort" name="sectionAttributes[]5">
            <label class="small inline" for="skillFilter">
                Sort by Skill Level
            </label>
            <br />
            <span class="fa fa-question-circle-o" aria-hidden="true"></span>
            <input id="rateModFilter" type="checkbox" value="ratingModSort" name="sectionAttributes[]">
            <label class="small inline" for="rateModFilter">
                Sort by Rating
            </label>
            <span class="fa fa-question-circle-o" aria-hidden="true"></span> 
            </div>
        <br/>
        </div>
    </div>

    <div class="col-11" style="padding-left: 15px;">
        <div id="skillLevelFilterDrop" class="form-group">
            <div class="group">
                <label class="medium" for="levelFilter">
                    Skill Level Filter
                </label>
            </div>
            <span aria-hidden="true" class="fa fa-question-circle-o"></span>
                        <select id="levelFilter" class="form-control" name="skillLevel" aria-multiselectable="true">
                            <option value="">All Levels</option>
                            <option value="B">Beginner</option>
                            <option value="I">Intermediate</option>
                            <option value="A">Advanced</option>
                            <option value="P">Professional</option>
                            <option value="K">Kids</option>
                        </select>
        </div>
    </div>
    <div class="col-12" style="padding-left: 15px;">
        <div id="ratingFilterDrop" class="form-group">
            <div class="group">
                <label class="medium" for="ratingFilterLbl">
                    Rating Filter
                </label>
            </div>
            <select id="ratingFilter" class="form-control" name="ratingSort">
                <option value="">All Ratings</option>
                <option value="5">5 stars</option>
                <option value="4">4+ stars</option>
                <option value="3">3+ stars</option>
                <option value="2">2+ stars</option>
            </select>
        </div>

        <%--Advanced search option --%>
        <div id="advSearch">
            <a id="advLink" class="toggle" aria-expanded="true" href="#" style="color: #c3142d"><i id="advancedCaret" class="fa fa-minus-square" aria-hidden="true"></i>Advanced Search &raquo;</a>
        </div> 
        <br /> 

        <%--Search Button --%>
        <button  id="btn_Search_Click_Filter" class="btn medium" CssClass="btn btn-primary" runat="server" Text="Go" OnClick="BtnSearch_Click" type="submit">Filter</button>
        <asp:Label ID="lblFilterSearch" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
