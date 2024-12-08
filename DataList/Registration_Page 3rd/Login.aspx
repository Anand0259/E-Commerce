<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registration_Page_3rd.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login Page </h1>
    <table class="table">
        <tr>
            <th>UserName</th>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
          </tr>
              <tr>
               <th>Pass</th>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
       </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            Remember Pass</td>  <!-- yha ek hi pass check aur remember krna h isliye ek <td> ke ander pura likhe h-->
        </tr>
        <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        </td>
            </tr>
         <tr>
          <td>
         <a href="Registration.aspx">Create a Account</a>
         </td>
             <td><a href="Forget.aspx">Forget Pass ?</a></td>
       </tr>
     </table>
  </asp:Content>
