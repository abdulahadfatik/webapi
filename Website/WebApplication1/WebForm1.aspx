<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 579px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <formview id="form1">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1">
                        <tr>
                            <th>Name</th>>
                            <th>Email</th>
                            <th>password</th>
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
                 <FooterTemplate>
                     <a href="index.aspx">index.aspx</a>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </formview>
</asp:Content>
