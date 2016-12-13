<%@ Page Title="Add New Reading Log" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="new-book.aspx.cs" Inherits="_2084_a2.new_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="index-banner" class="parallax-container">
        <div class="section no-pad-bot">
            <div class="container">
                <div class="row">
                    <div class="col s12">

                        <div class="row">
                            <div class="input-field col s6">
                                <label for="txtTitle">Book Title</label>
                                <asp:TextBox ID="txtTitle" class="validate" runat="server" required />

                            </div>
                            <div class="input-field col s6">
                                <label for="txtAuthor">Author</label>
                                <asp:TextBox ID="txtAuthor" class="validate" runat="server" required />
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <label for="txtGenre">Genre</label>
                                <asp:TextBox ID="txtGenre" class="validate" runat="server" required />

                            </div>
                            <div class="input-field col s6">
                                <label for="txtTime">Time</label>
                                <asp:TextBox ID="txtTime" class="validate" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <label for="txtReview">Review</label>
                                <asp:TextBox ID="txtReview" runat="server" TextMode="MultiLine" class="materialize-textarea"
                                    Columns="50" Rows="5"></asp:TextBox>
                            </div>
                        </div>

                        <asp:Button CssClass="waves-effect waves-light btn" ID="btnSave" runat="server"
                            Text="Save" OnClick="btnSave_Click" />

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
