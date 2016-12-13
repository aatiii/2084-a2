<%@ Page Title="Genre List Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="genre-list-detail.aspx.cs" Inherits="_2084_a2.genre_list_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <br><br>
            <h1 class="header center teal-text text-lighten-2">Genre: </h1>        
            <br><br>
            <asp:GridView ID="grdGenre-detail" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="bookId" HeaderText="Book ID" />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="author" HeaderText="Author" />
                    <asp:BoundField DataField="genre" HeaderText="Genre" />
                    <asp:BoundField DataField="time" HeaderText="Time" />
                </Columns>
            </asp:GridView>
        
        </div>
    </div>
    </div>
</asp:Content>
