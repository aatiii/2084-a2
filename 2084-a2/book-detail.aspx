<%@ Page Title="Book Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="book-detail.aspx.cs" Inherits="_2084_a2.book_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <asp:GridView ID="grd-bookdetail" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="bookId" HeaderText="Book ID" />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="author" HeaderText="Author" />
                    <asp:BoundField DataField="genre" HeaderText="Genre" />
                    <asp:BoundField DataField="time" HeaderText="Time" />                    
                    <asp:BoundField DataField="review" HeaderText="Book Review" />

                </Columns>
            </asp:GridView>

        </div>
    </div>
    </div>
</asp:Content>
