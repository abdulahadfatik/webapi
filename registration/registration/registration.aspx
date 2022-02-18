<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="registration.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>User_Registraion</h2>
    <p>
    Name<asp:TextBox ID="name" runat="server"></asp:TextBox>
        </p>
    <p>
        email<asp:TextBox ID="email" runat="server"></asp:TextBox>
    </p>
    <p>
    Password<asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
    <asp:Button ID="reg" runat="server" Text="Register" OnClick="reg_Click"/>

    
</asp:Content>
