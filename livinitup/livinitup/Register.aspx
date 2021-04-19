<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="livinitup.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            font-family: "Segoe UI";
            font-size: medium;
            color: #165BA8;
        }
        .auto-style5 {
            width: 465px;
            font-family: "Segoe UI";
            font-size: medium;
            color: #165BA8;
        }
        .auto-style6 {
            height: 38px;
            font-family: "Segoe UI";
            font-size: medium;
            color: #165BA8;
        }
        .auto-style7 {
            font-family: "Segoe UI";
            font-size: medium;
            color: #165BA8;
            width: 469px;
        }
        .auto-style8 {
            font-family: "Segoe UI";
            font-size: medium;
            color: #165BA8;
            width: 511px;
        }
        .auto-style9 {
            line-height: 150%;
            text-align: right;
        }
        .auto-style10 {
            line-height: 150%;
            text-align: center;
        }
        .auto-style11 {
            height: 38px;
            width: 495px;
        }
        .auto-style12 {
            width: 495px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">

    <table style="width:100%;">
                <tr>
                    <td class="auto-style6" colspan="2">
                        <p class="auto-style10">
                            Registration Form</p>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <p class="auto-style9">
                            email address</p>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email">user@email.com</asp:TextBox>
                        <asp:Label ID="lblEmail" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <p class="auto-style9">
                            password</p>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">password</asp:TextBox>
                        <asp:Label ID="LblPassword" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <p class="auto-style9">
                            confirm password</p>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="LblPasswordConfirm" runat="server" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <p class="auto-style9">
                            register</p>
                    </td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register Now" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
</asp:Content>
