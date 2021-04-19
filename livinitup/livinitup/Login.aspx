<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="livinitup.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-right: 123;
        }
    .auto-style4 {
        width: 7%;
    }
    .auto-style5 {
        width: 41%;
    }
    .auto-style6 {
        font-family: "Segoe UI";
        color: #2780E3;
    }
    .auto-style7 {
        font-size: medium;
    }
    .auto-style8 {
        font-size: medium;
        font-family: "Segoe UI";
        color: #2780E3;
    }
    .auto-style9 {
        font-family: "Segoe UI";
        color: #165BA8;
    }
    .auto-style10 {
        line-height: 150%;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">
    <table class="auto-style5">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style9">
            <p class="auto-style10">
                Please Login</p>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <p class="auto-style10">
            </p>
        </td>
        <td>
            <p class="auto-style10">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </p>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><span class="auto-style6"></td>
        <td class="auto-style7">email</span></td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><span class="auto-style6"></td>
        <td class="auto-style7">password</span></td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><span class="auto-style6"></td>
        <td class="auto-style7"></span>
            <p class="text-sm-center">
            </p>
        </td>
        <td>
            <p class="text-sm-center">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </p>
        </td>
    </tr>
</table>
</asp:Content>
