<%@ Page Title="AdminLTE | Register" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register_User.aspx.cs" Inherits="WebApplication1.Register_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            margin-right: 906;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="AdminLTE/img/avatar.png" />
                                </center>
                            </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Register</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>User Name</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="User Name"></asp:TextBox>
                                </div>

                                <label>Email</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                               
                                <label>Password</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                                 &nbsp
                                <div class="form.group">
                                   
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"  Width="615px" Text="Register" OnClick="Button1_Click"/>
                                    
                                   
                                </div>
                </div>
                    <a href="User_login.aspx">User_login</a>
            </div>
        </div>
    </div>

</asp:Content>
