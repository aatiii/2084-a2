<%@ Page Title="Author List Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="author-list-detail.aspx.cs" Inherits="_2084_a2.author_list_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <br><br>
            <h3 class="header center teal-text text-lighten-2">Sort by author names </h3>        
            <br><br>
            <asp:GridView ID="GridTitle" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="bookId" HeaderText="Book ID" />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="author" HeaderText="Author" />
                    <asp:BoundField DataField="genre" HeaderText="Genre" />
                    <asp:BoundField DataField="time" HeaderText="Time" />
                    <asp:HyperLinkField HeaderText="View Detail" NavigateUrl="book-detail.aspx" Text="View Detail"
             DataNavigateUrlFormatString="book-detail.aspx?bookID={0}" DataNavigateUrlFields="bookID"/>
                </Columns>
            </asp:GridView>

        </div>
    </div>
    </div>
</asp:Content>
