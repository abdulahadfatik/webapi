<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forget_password.aspx.cs" Inherits="Net_Project.forget_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <form class="form-horizontal"  action="#" id="form_reset_pwd"> 
    <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User login</h3>
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
                               
                                <label>Password</label>
                                
                                <div class="form.group">
                                <asp:TextBox CssClass="form-control" ID="pwd" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                                 &nbsp
                                <div class="form.group">

                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="send mail" />

                                </div>
                        </div>
                    </div>
                </div>
                    <a href="forget_password.aspx">forget password?</a>
            </div>
        </div>
    </div>
 </form>

<script type="text/javascript">
$(document).on('click','.forgot_password',function(){
  var url = "reset_password.php";       
  if($('#form_reset_pwd').valid()){ 
    $.ajax({
    type: "POST",
    url: url,
    data: $("#form_reset_pwd").serialize(), // serializes the form's elements.
    success: function(data) {                    
      if(data==1)
      {
        $('#error_result').html('Check your email');
      } 
      else
      {
        $('#error_result').html('Invalid email id. Please check your email id.');
      }
    }
    });
  }
  return false;
});
</script>

</asp:Content>
