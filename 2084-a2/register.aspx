<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="_2084_a2.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container rgster" style="margin-top: 50px; width: 50%; min-height:470px;">
        
        <div class="row">
        <div class="col s12">
            <div class="card-panel teal lighten-5">
                <asp:Label ID="lblMessage" runat="server" Text="Please create an account" />
            </div>

            <div class="row">                
            <div class="input-field col s12">
                <asp:TextBox id="txtUsername" class="validate" runat="server" required />
                <label for="txtUsername">User Name</label>
            </div>
            </div>
              
            <div class="row">
            <div class="input-field col s12">
                <asp:TextBox id="txtPassword" class="validate" runat="server" required TextMode="Password"/>
                <label for="txtPassword">Password</label>
            </div>
            </div>

            <asp:Button CssClass="waves-effect waves-light btn" id="btnRegister" runat="server" Text="Create Account" OnClick="btnRegister_Click1" />                

        </div>
        </div>

    </div>
</asp:Content>
