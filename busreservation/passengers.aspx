<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="passengers.aspx.cs" Inherits="passengers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1 style="font-size:20px; font-family:Arial;">Passengers Register</h1></center>
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
    <tr>
   <td>
       <asp:Label ID="Label1" runat="server" Text="Gender" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>

       <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="admin" Width="200px" Height="35px">
       <asp:ListItem Text="Male"></asp:ListItem>
       <asp:ListItem Text="Female"></asp:ListItem>
       </asp:DropDownList>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td>
       <asp:Label ID="Label2" runat="server" Text="Address" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="35px" TextMode="MultiLine" ValidationGroup="admin"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr>
   <td>
       <asp:Label ID="Label5" runat="server" Text="Phoneno" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox4" runat="server" Width="200px" Height="35px" ValidationGroup="admin"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ValidationGroup="admin"></asp:RequiredFieldValidator>
   </td>
   </tr>
     <tr>
   <td>
       <asp:Label ID="Label6" runat="server" Text="Email ID" ForeColor="black" Font-Bold="true"></asp:Label>
   </td>
   <td>
       <asp:TextBox ID="TextBox5" runat="server" Width="200px" Height="35px" ValidationGroup="admin"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ValidationGroup="admin"></asp:RequiredFieldValidator>
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
   <tr>
   <td>
       <asp:Button ID="Button2" runat="server" Text="Login"
           Width="120px" Height="30px" BackColor="White" onclick="Button2_Click" />
   </td>
   </tr>
</table>
</asp:Content>

