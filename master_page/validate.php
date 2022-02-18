<%@ Page Title="" Language="C#" MasterPageFile="~/master-page.Master" AutoEventWireup="true" CodeBehind="validate.aspx.cs" Inherits="master_page.validate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<php
	$admin_id=isset($_POST['admin_id'])?$_POST['admin_id']:'';
	$pwd=isset($_POST['pwd'])?$_POST['pwd']:'';

	$ok = true;
	$message = array();

	if (! isset($admin_id) || empty($admin_id){
		$ok = false;
		message[] = 'admin_id cannot be empty!';
	}

	if (! isset($pwd) || empty($pwd){
		$ok = false;
		message[] = 'password cannot be empty!';
	}

	if ($ok) {
		if($admin_id=='admin' && $pwd='admin){
			$ok = true;
		message[] = 'Succefully login';
		} else {
			$ok = false;
			message[] = 'incorrect username  password or both!';
		}
	}
	
	echo json_encode(
		array(
			'ok' => $ok,
			'message' => $message
		)
	)
?>


</asp:Content>
