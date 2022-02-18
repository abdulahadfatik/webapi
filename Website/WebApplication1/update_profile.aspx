<%@ Page Title="AdminLTE | Update" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update_profile.aspx.cs" Inherits="WebApplication1.update_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <head runat="server">  
        <title>Repeater Control</title>  
    </head>  
  
    <body>  
        <form id="form1" runat="server">  
            <div>  
                <asp:Repeater ID="Repeater1" runat="server" >  
                    <HeaderTemplate>  
                        <table style="width: 100%">  
                            <tr style="background-color: blue">  
                                <th>name</th>  
                                <th>email</th>  
                                <th>password</th>   
                                <th>  
                                    <asp:CheckBox ID="name" Text="CheckAll" runat="server" AutoPostBack="true" />  
                                </th>  
                                <th>  
                                    <asp:Button ID="btndel" runat="server" Text="DeleteAll" CommandName="delall" />  
                                </th>  
                                <th>  
                                    <asp:Label ID="Editupdate" Text="UpdateAll" runat="server"></asp:Label>  
                                </th>  
                            </tr>  
                    </HeaderTemplate>  
                    <ItemTemplate>  
                        <tr style="background-color:aqua; font-style:italic; text-align: center">  
                            <td>  
                                <asp:Label ID="lbleID" runat="server" Text='<%#Eval("email") %>'></asp:Label>  
                                <asp:TextBox ID="email" runat="server" Text='<%#Eval("email") %>' Visible="false"></asp:TextBox>  
                                
                                <td>  
                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>  
                                    <asp:TextBox ID="hdid" runat="server" Text='<%#Eval("name") %>' Visible="false"></asp:TextBox>  
                                </td>  
                                <td>  
                                    <asp:Label ID="lblsalary" runat="server" Text='<%#Eval("password") %>'></asp:Label>  
                                    <asp:TextBox ID="password" runat="server" Text='<%#Eval("password") %>' Visible="false"></asp:TextBox>  
                                </td>  
                                <td>  
                                    <asp:CheckBox ID="chk" runat="server" />  
                                </td>  
                                <td>  
                                    <asp:Button ID="btndel" runat="server" Text="Delete" CommandName="del" CommandArgument='<%#Eval("EmpID") %>' />  
                                </td>  
                                <td>  
                                    <asp:LinkButton ID="Lbtn1" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>  
                                    <asp:LinkButton ID="LinkButton2" runat="server" Text="Update"></asp:LinkButton>  
                                </td>  
                        </tr>  
                    </ItemTemplate>  
                    <AlternatingItemTemplate>  
                        <tr style="background-color: gray; font-style:italic ;text-align: center">  
                            <td>  
                                <asp:Label ID="lbleID" runat="server" Text='<%#Eval("email") %>'></asp:Label>  
                                <asp:TextBox ID="email" runat="server" Text='<%#Eval("email") %>' Visible="false"></asp:TextBox>  
                                <asp:HiddenField ID="hdid" runat="server" Value='<%#Eval("EmpID") %>' />  
                                <td>  
                                    <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>  
                                    <asp:TextBox ID="name" runat="server" Text='<%#Eval("name") %>' Visible="false"></asp:TextBox>  
                                </td>  
                                <td>  
                                    <asp:Label ID="lblsalary" runat="server" Text='<%#Eval("password") %>'></asp:Label>  
                                    <asp:TextBox ID="password" runat="server" Text='<%#Eval("password") %>' Visible="false"></asp:TextBox>  
                                </td> 
                                <td>  
                                    <asp:CheckBox ID="chk" runat="server" />  
                                </td>  
                                <td>  
                                    <asp:Button ID="btndel" runat="server" Text="Delete" CommandName="del" CommandArgument='<%#Eval("email") %>' />  
                                </td>  
                                <td>  
                                    <asp:LinkButton ID="Lbtn1" runat="server" Text="Edit" CommandName="Edit"></asp:LinkButton>  
                                    <asp:LinkButton ID="LinkButton2" runat="server" Text="Update"></asp:LinkButton>  
                                </td>  
                        </tr>  
                    </AlternatingItemTemplate>  
                </asp:Repeater>  
            </div>  
        </form>  
    </body>  
</asp:Content>
