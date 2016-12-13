<%@ Page Title="Genre List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="genre-list.aspx.cs" Inherits="_2084_a2.genre_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <h3>Genre List</h3>
            <asp:GridView ID="grdGenre" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="genreId" HeaderText="Genre ID" />
                    <asp:BoundField DataField="genre" HeaderText="Genre" />
                    <asp:HyperLinkField HeaderText="View Detail" NavigateUrl="genre-list-detail.aspx" Text="More..."
             DataNavigateUrlFormatString="genre-list-detail.aspx?genreID={0}" DataNavigateUrlFields="genreID"/>       
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>
