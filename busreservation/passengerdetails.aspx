<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="passengerdetails.aspx.cs" Inherits="passengerdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1 style="font-size:20px; font-family:Arial;">Passengers Details</h1></center>

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
              <asp:BoundField DataField="username" HeaderText="Username"/>
              <asp:BoundField DataField="gender" HeaderText="Gender"/>
              <asp:BoundField DataField="address" HeaderText="Address"/>
              <asp:BoundField DataField="phoneno" HeaderText="Phoneno"/>
              <asp:BoundField DataField="emailid" HeaderText="Email ID"/>
             <asp:BoundField DataField="regdate" HeaderText="Date"/>
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

