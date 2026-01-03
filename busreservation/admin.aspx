<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1 style="font-size:20px; font-family:Arial;">Admin Login</h1></center>
 <table align="center">
   <tr>
   <td>
       <asp:Label ID="Label3" runat="server" Text="Username" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="35px" ValidationGroup="admin"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td>
       <asp:Label ID="Label4" runat="server" Text="Passsword" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="35px" TextMode="Password" ValidationGroup="admin"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
   </table>
   <table align="center">
   <tr>
   <td>
       <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="admin" 
           Width="120px" Height="30px" BackColor="White" onclick="Button1_Click" />
   </td>
   </tr>
</table>
</asp:Content>

