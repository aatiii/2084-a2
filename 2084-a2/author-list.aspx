<%@ Page Title="Author List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="author-list.aspx.cs" Inherits="_2084_a2.author_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <h3>Author List</h3>
            <asp:GridView ID="grdAuthor" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="authorId" HeaderText="Author ID" />
                    <asp:BoundField DataField="author" HeaderText="Author" />
                    <asp:HyperLinkField HeaderText="View Detail" NavigateUrl="author-list-detail.aspx" Text="More..."
             DataNavigateUrlFormatString="author-list-detail.aspx?authorID={0}" DataNavigateUrlFields="authorID"/>                       
                </Columns>
            </asp:GridView>

        </div>
    </div>
    </div>
</asp:Content>
