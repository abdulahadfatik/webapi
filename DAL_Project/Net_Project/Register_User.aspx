<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register_User.aspx.cs" Inherits="Net_Project.Register_User" %>
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
                                <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="User Name"></asp:TextBox>
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
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="submit" runat="server" Text="Register" Width="512px" OnClick="submit_Click" />
                                </div>
                        </div>
                    </div>
                </div>
                    <a href="login_user.aspx">login_form</a>
            </div>
        </div>
    </div>
</asp:Content>
