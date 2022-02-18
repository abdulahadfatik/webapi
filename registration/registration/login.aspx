<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="registration.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>login</h2>
    <asp:Label ID="Label1" runat="server" Text="email"></asp:Label>
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
    <asp:TextBox ID="password" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="login_user" runat="server" Text="login" OnClick="login_user_Click" />

</asp:Content>
