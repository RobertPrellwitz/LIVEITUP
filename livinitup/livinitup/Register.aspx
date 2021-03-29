<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="livinitup.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">

    <table style="width:100%;">
                <tr>
                    <td>Registration Form</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>email address</td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email">user@email.com</asp:TextBox>
                        <asp:Label ID="lblEmail" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">password</asp:TextBox>
                        <asp:Label ID="LblPassword" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>confirm password</td>
                    <td>
                        <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="LblPasswordConfirm" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>register</td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register Now" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
</asp:Content>
