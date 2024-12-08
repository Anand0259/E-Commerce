<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration_Page_3rd.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1><b><u>Mini Project of Registration Page</u></b></h1> <!-- yha <b> aur <u> bold aur line use kr diye h acha lgne ke liye-->
    <h1>Create A Account</h1>
    <table class="table">
        <tr>
            <th>Name</th>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <!-- ab hr jgh validation lga rhe h-->
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" SetFocusOnError="true" ToolTip="Enter Name" ErrorMessage="Enter the Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
     <th>Email</th>
     <td>
         <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
       </td>
             <td>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter the Email Address" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="true" ToolTip="Enter Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
    </tr>
         <tr>
     <th>DOB</th>
        <td>
         <asp:TextBox ID="txtdob" TextMode="Date" runat="server"></asp:TextBox>
        </td>
     </tr>
         <tr>
     <th>Qualification</th>
       <td>
         <asp:DropDownList ID="dd_qual" runat="server">
             <asp:ListItem>
                 Select Qual
             </asp:ListItem>
            <asp:ListItem>10th</asp:ListItem>
             <asp:ListItem>12th</asp:ListItem>
             <asp:ListItem>B.Sc</asp:ListItem>
             <asp:ListItem>MCA</asp:ListItem>
         </asp:DropDownList>
        </td>
     </tr>
         <tr>
      <th>Attach Doc</th>
    <td>
         <asp:FileUpload ID="FileUpload1" runat="server" />
       </td>
     </tr>
         <tr>
     <th>Password</th>
     <td>
         <asp:TextBox ID="txtpass" TextMode="Password" runat="server"></asp:TextBox>
      </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Password" ControlToValidate="txtpass" SetFocusOnError="true" ToolTip="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
    </tr>
      <tr>
       <td>Gender</td>
          <td>
              <asp:RadioButton ID="RadioButton1" runat="server" Text="Male"/>
          </td>
   </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="bt_Create" runat="server" Text="Create Account" OnClick="bt_Create_Click" />
            </td>
        </tr>
         <tr>
    <td colspan="2">
      <a href="Login.aspx">Account is already created </a></td>
</tr>
         <tr>
     <td colspan="2">
         <asp:Literal ID="Literal1" runat="server"></asp:Literal>
     </td>
 </tr>
    </table>
</asp:Content>
