<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="searchbus.aspx.cs" Inherits="searchbus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1 style="font-size:20px; font-family:Arial;">View Tickets</h1></center>
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
   </table>
    <table align="center">
   <tr>
   <td>
       <asp:Button ID="Button1" runat="server" Text="Search" ValidationGroup="admin" 
           Width="120px" Height="30px" BackColor="White" onclick="Button1_Click" />
   </td>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Registerd Mobile No "></asp:TextBox>  
       <asp:Button ID="Button2" runat="server" Text="Get Sms" 
           onclick="Button2_Click" />
   </td>
   </tr>
</table>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" 
       PageSize="5" onselectedindexchanged="GridView1_SelectedIndexChanged1" 
              Height="198px" Font-Bold="True"  HorizontalAlign="Center" 
            CellPadding="4" GridLines="None" 
         style="width: 983px;" 
                ForeColor="#333333" >
            <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333"/>
                <Columns>
              <asp:BoundField DataField="id" HeaderText="S.No" />
              <asp:BoundField DataField="fromplace" HeaderText="From Place"/>
              <asp:BoundField DataField="toplace" HeaderText="To Place"/>
                <asp:BoundField DataField="travelname" HeaderText="Travel Name"/>
              <asp:BoundField DataField="amount" HeaderText="Amount"/>
       
              <asp:BoundField DataField="remainingseats" HeaderText="Remaining"/>
             <asp:BoundField DataField="availabledate" HeaderText="Date"/>
                 </Columns>
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
            <SelectedRowStyle BorderColor="Orange" BackColor="#E2DED6" Font-Bold="True" 
                 ForeColor="#333333"  />
            <HeaderStyle BorderColor="Orange"  HorizontalAlign="Center" BackColor="#5D7B9D" 
                Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView> 
</asp:Content>

