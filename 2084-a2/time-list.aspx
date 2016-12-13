<%@ Page Title="Time List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="time-list.aspx.cs" Inherits="_2084_a2.time_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <h3>Time List</h3>
            <asp:GridView ID="grdGenre" runat="server" CssClass="table table-striped" autogeneratecolumns="false">
                <Columns>
                    <asp:BoundField DataField="timeId" HeaderText="Time ID" />
                    <asp:BoundField DataField="time" HeaderText="Time" />
                    <asp:HyperLinkField HeaderText="View Detail" NavigateUrl="time-list-detail.aspx" Text="More..."
             DataNavigateUrlFormatString="time-list-detail.aspx?timeID={0}" DataNavigateUrlFields="timeID"/>       
                
                </Columns>
            </asp:GridView>

        </div>
    </div>
    </div>
</asp:Content>
