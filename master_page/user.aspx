<%@ Page Title="" Language="C#" MasterPageFile="~/master-page.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="master_page.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/icons8-user-100.png" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member login</h3>
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
                                <label>Member ID</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                               
                                <label>Password</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                                 &nbsp
                                <div class="form.group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" Width="512px" />
                                </div>
                                 &nbsp
                                <div class="form.group">
                                    <a href="signup.aspx"><input class="btn btn-info btn-block btn-lg" ID="Button2" type="button" value="Signup" style="width: 513px"/></a>
                                    
                                </div>
                        </div>
                    </div>
                </div>
                <a href="WebForm1.aspx"><< back to Home Page</a><br />
            </div>
        </div>
    </div>

</asp:Content>
