<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="login_form.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <style>
        #form-message{
            background-color:antiquewhite;
            border:1px red;
            color:red;
            display:none;
            font-size:12px;
            font-weight:bold;
            margin-bottom:10px;
            padding:10px 25px;
            max-height:25px;
        }
    </style>
    <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/icons8-admin-64.png" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin login</h3>
                                </center>
                                 <ul id="form-message">
                                    <li>error #1</li>
                                </ul>
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
                                <label>Admin ID</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="admin_id" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>
                               
                                <label>Password</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="pwd" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                                 &nbsp
                                <div class="form.group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="submit" runat="server" Text="Login" Width="512px" />
                                </div>
                                 &nbsp
                                <div class="form.group">
                                    <a href="signup.aspx"><input class="btn btn-info btn-block btn-lg" ID="Button2" type="button" value="Signup" style="width: 513px"/></a>
                                    
                                </div>
                        </div>
                    </div>
                </div>
                <a href="Home.aspx"><< back to Home Page</a><br />
            </div>
        </div>
    </div>

</asp:Content>
