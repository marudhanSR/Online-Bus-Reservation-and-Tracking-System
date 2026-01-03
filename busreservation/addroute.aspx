<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addroute.aspx.cs" Inherits="addroute" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet"href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#TextBox3").datepicker();
            //              dateFormat: 'dd/MM/yyyy'
        });
       
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <ajax:ToolkitScriptManager ID="toolkit1" runat="server"></ajax:ToolkitScriptManager>

<center><h1 style="font-size:20px; font-family:Arial;">Add Routes</h1></center>
 <table align="center">
   <tr>
   <td>
       <asp:Label ID="Label3" runat="server" Text="From Place" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="admin">
       <asp:ListItem Text="Select"></asp:ListItem>
       <asp:ListItem Text="Chennai"></asp:ListItem>
       <asp:ListItem Text="Madurai"></asp:ListItem>
       <asp:ListItem Text="Coimbatore"></asp:ListItem>
       <asp:ListItem Text="Bangalore"></asp:ListItem>
       <asp:ListItem Text="Dindugal"></asp:ListItem>
       </asp:DropDownList>      
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td>
       <asp:Label ID="Label4" runat="server" Text="To Place" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
    <asp:DropDownList ID="DropDownList2" runat="server" ValidationGroup="admin">
       <asp:ListItem Text="Select"></asp:ListItem>
       <asp:ListItem Text="Chennai"></asp:ListItem>
       <asp:ListItem Text="Madurai"></asp:ListItem>
       <asp:ListItem Text="Coimbatore"></asp:ListItem>
       <asp:ListItem Text="Bangalore"></asp:ListItem>
       <asp:ListItem Text="Dindugal"></asp:ListItem>
       </asp:DropDownList>        
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
     <tr>
   <td>
       <asp:Label ID="Label6" runat="server" Text="Stops" ForeColor="Black" 
           Font-Bold="True"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="admin" Height="75px" 
           Width="189px"></asp:TextBox>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
     <tr>
   <td>
       <asp:Label ID="Label1" runat="server" Text="Hotels" ForeColor="Black" 
           Font-Bold="True"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="admin" Height="74px" 
           Width="246px"></asp:TextBox>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
     
   </table>
   <table align="center">
   <tr>
   <td>
       <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="admin" 
           Width="120px" Height="30px" BackColor="White" onclick="Button1_Click" />
   </td>
    <td>
        &nbsp;</td>
   </tr>
</table>
</asp:Content>

