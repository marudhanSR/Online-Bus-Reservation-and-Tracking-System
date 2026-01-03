<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addtickets.aspx.cs" Inherits="addtickets" Title="Untitled Page" %>
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

<center><h1 style="font-size:20px; font-family:Arial;">Add Tickets</h1></center>
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
       <asp:Label ID="Label6" runat="server" Text="Travel Name" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="admin"></asp:TextBox>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
     <tr>
   <td>
       <asp:Label ID="Label1" runat="server" Text="Amount" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="admin"></asp:TextBox>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
     <tr>
   <td>
       <asp:Label ID="Label2" runat="server" Text="No of Seats" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="admin"></asp:TextBox>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
   
     <tr>
   <td>
       <asp:Label ID="Label5" runat="server" Text="Date" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="admin"></asp:TextBox> 
       
      <ajax:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox3" Format="dd/MM/yyyy" runat="server" >
        </ajax:CalendarExtender>  
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ValidationGroup="admin"></asp:RequiredFieldValidator>
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
       <asp:Button ID="Button2" runat="server" Text="View"
           Width="120px" Height="30px" BackColor="White" onclick="Button2_Click" />
   </td>
   </tr>
</table>
</asp:Content>

