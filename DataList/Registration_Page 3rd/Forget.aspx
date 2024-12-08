<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Forget.aspx.cs" Inherits="Registration_Page_3rd.Forget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Forget Pass</h1>
    <table class="table">
        <tr>
          <td>Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>
        <tr> 
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Forget Pass" OnClick="Button1_Click" />
            </td>
        </tr>

         <tr> 
     <td colspan="2">
         <asp:Literal ID="lb_pass" runat="server"></asp:Literal>
     </td>
 </tr>
    </table>
</asp:Content>
