<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Registration_Page_3rd.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Dashboard</h1>
    <p>Welcome to My Page, <asp:Literal ID="lbname" runat="server"></asp:Literal>
  <!-- welcome to my page ke aage name lane ke liye literal le rhe -->
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
        <!-- ye line logout ka option aaye uske liye likh rhe h -->
    </p>
</asp:Content>
