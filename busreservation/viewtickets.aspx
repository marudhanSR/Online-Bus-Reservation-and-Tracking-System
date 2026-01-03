<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewtickets.aspx.cs" Inherits="viewtickets" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript" type="text/javascript">
 
 function dele(id)
  {
   location.href='viewtickets.aspx?id='+id;
  }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<br />
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
              <asp:BoundField DataField="amount" HeaderText="Amount"/>
              <asp:BoundField DataField="noofseats" HeaderText="Seats"/>
                 <asp:BoundField DataField="remainingseats" HeaderText="Remaining Seats"/>
                <asp:BoundField DataField="availabledate" HeaderText="Date"/>
               <asp:TemplateField>
                 <ItemTemplate>
                     <a href="javascript:dele('<%#DataBinder.Eval(Container.DataItem,"id")%>')">
                     Delete</a> &nbsp;&nbsp;
                 </ItemTemplate>
             </asp:TemplateField>
                 </Columns>
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
            <SelectedRowStyle BorderColor="Orange" BackColor="#E2DED6" Font-Bold="True" 
                 ForeColor="#333333"  />
            <HeaderStyle BorderColor="Orange"  HorizontalAlign="Center" BackColor="#5D7B9D" 
                Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView> </asp:Content>

