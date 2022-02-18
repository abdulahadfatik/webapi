<%@ Page Title="AdminLTE | Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_login.aspx.cs" Inherits="WebApplication1.User_login" %>
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
                                    <h3>User login
                                    </h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register_User.aspx">Don&#39;t have Account</asp:HyperLink>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>User ID</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                               
                                <label>Password</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                                 &nbsp
                                <div class="form.group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" Width="636px" height="100px" runat="server" Text="login" OnClick="Button1_Click"/>

                                </div>
                        </div>
                            <div class="row">
                            <div class="col">
                                <center>
                                    
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    
                                   
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                    <a href="forget_password.aspx">forget password?</a>
            </div>
        </div>
         <a href="index.aspx">index</a>
    </div>

</asp:Content>
