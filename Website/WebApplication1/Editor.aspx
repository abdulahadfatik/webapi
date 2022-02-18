<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="WebApplication1.Editor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Editor
                                    </h3>
                                </center>
                            </div>
                        </div>
                    <div class="row">
                            <div class="col">
                                <center>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User_login.aspx">Logout</asp:HyperLink>
                                </center>
                            </div>
                        </div>
                    <div class="row">
                            <div class="col">
                                <center>
                                     <h3 class="box-title">Admin Table</h3>
                                </center>
                            </div>
                        </div>
                    <div class="box-body no-padding">
                        <div class="table-responsive">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-striped">
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Password</th>
                                        </tr
                                    </table>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <table class="table table-striped">
                                        <tr>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label></td>
                                            <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("email") %>'></asp:Label></td>
                                            <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("password") %>'></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:Button  class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="ADD" />
                                </center>
                              </div>
                            <div class="col">
                                <center>
                                    <asp:Button  class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="UPDATE" />
                                </center>
                            </div>
                                <div class="col">
                                <center>
                                    <asp:Button  class="btn btn-warning btn-block btn-lg" ID="Button3" runat="server" Text="DELETE" />
                                </center>
                            </div>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
