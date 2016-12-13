<%@ Page Title="Title List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="title-list.aspx.cs" Inherits="_2084_a2.title_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <h3>Time List</h3>
            <asp:GridView ID="grdtitle" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="titleId" HeaderText="Title ID" />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>
