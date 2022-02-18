<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forget_Password.aspx.cs" Inherits="website.Forget_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form class="form-horizontal"  action="#" id="form_reset_pwd">  
  <label class="col-sm-3 control-label">Email :</label>
  <input type="text" class="form-control required email" name="email" placeholder="Email"/>
  <button type="button" class="forgot_password">Send Email</button>           
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
