<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update_Profile.aspx.cs" Inherits="website.Update_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <div>  
        <asp:Repeater ID="RepeatInformation" runat="server">  
            <HeaderTemplate>  
                <table class="tblcolor">  
                    <tr>  
                        <b>  
                            <td>  
                                name  
                            </td>  
                            <td>  
                                email
                            </td>  
                            <td>  
                                password
                            </td>  
                        </b>  
                    </tr>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.email")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.password")%>  
                    </td>  
                </tr>  
            </ItemTemplate>  
            <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                </tr>  
            </SeparatorTemplate>  
            <FooterTemplate>  
                </table>  
            </FooterTemplate>  
        </asp:Repeater>  
    </div>  


</asp:Content>
