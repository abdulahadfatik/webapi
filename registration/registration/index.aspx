<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="registration.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>welcome</h1>
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("email") %>'></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("password") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
    <table>
        <asp:Label ID="Label5" runat="server" Text="Admin "></asp:Label><asp:Label ID="Label4" runat="server"></asp:Label>
        </table>
</asp:Content>
