<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reset.aspx.cs" Inherits="WebApplication1.Reset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="form-horizontal"  action="#" id="form_reset_pwd"> 
    <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Reset Password</h3>
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
                               <label>Email</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="email_id" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                                 &nbsp
                               
                                <label>Password</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="pwd" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                                 &nbsp
                                <div class="form.group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="forgot_password" runat="server" Text="Submut" />
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </form>
    <script type="text/javascript">
    function recoverypass() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
       
        if (usrid == '') {
            alert("please enter your email");
            return false
        }
        if (email == '') {
            alert("Please enter password");
        }
        var msg = "";         
        if (msg.length == 0) {           
            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",                 
                url: "login.aspx",
                data: "{'email':'" + email + "','password':'" + password + "'}",
                 success: function (response) {
                   
                    if (response.d == true) {
                         
                        $("#email").val("");
                        $("#password").val("");
                    }
                    else {
                        $('#dvResult').text("Please enter valid details");
                        alert("error");
                    }
                    $('#dvResult').fadeOut(6000);
                },
                error: function (xhr, textstatus, error) {
                    alert("Error: " + error);
                    $('#dvResult').text("Error: " + error);
                }
            });
        }
        else {
            $('#dvResult').html(msg);
        }
        $('#dvResult').fadeIn();
    }
    </script>
 
<!--forgot password-->
</asp:Content>
