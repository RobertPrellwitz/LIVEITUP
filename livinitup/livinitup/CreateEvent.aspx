<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="livinitup.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
            width: 150px;
            text-align: right;
        }
        .auto-style10 {
            width: 150px;
            text-align: right;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
            width: 268435376px;
        }
        .auto-style12 {
            width: 106px;
        }
        .auto-style13 {
            height: 40px;
            width: 106px;
        }
        .auto-style14 {
            width: 150px;
            text-align: right;
            height: 45px;
        }
        .auto-style15 {
            height: 45px;
            width: 106px;
        }
        .auto-style16 {
            height: 45px;
            width: 268435376px;
        }
        .auto-style17 {
            width: 150px;
            text-align: right;
            height: 109px;
        }
        .auto-style18 {
            width: 106px;
            height: 109px;
        }
        .auto-style19 {
            height: 109px;
            width: 268435376px;
        }
        .auto-style20 {
            width: 150px;
            text-align: right;
            height: 48px;
        }
        .auto-style21 {
            height: 48px;
            width: 106px;
        }
        .auto-style22 {
            height: 48px;
            width: 268435376px;
        }
        .auto-style23 {
            font-family: "Sitka Display";
            font-weight: bold;
            color: #2780E3;
        }
        .auto-style24 {
            font-family: "Segoe UI Light";
            font-weight: bold;
            color: #2780E3;
        }
        .auto-style25 {
            line-height: 150%;
            text-align: left;
        }
        .auto-style26 {
            font-family: "Segoe UI";
            font-size: large;
            color: #FF0039;
        }
        .auto-style27 {
            font-family: "Segoe UI";
            font-size: small;
            color: #FF0039;
            text-align: left;
        }
        .auto-style28 {
            font-family: "Segoe UI";
            color: #FF0039;
        }
        .auto-style29 {
            width: 268435376px;
        }
        .auto-style30 {
            text-align: left;
            width: 268435376px;
        }
    .auto-style31 {
        font-family: "Segoe UI";
        color: #FF0000;
        border-left-color: #A0A0A0;
        border-right-color: #C0C0C0;
        border-top-color: #A0A0A0;
        border-bottom-color: #C0C0C0;
        padding: 1px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">
    <table class="w-100">
    <tr>
        <td colspan="4">
            <p class="auto-style25">
                <span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create your Event here!</span>&nbsp;&nbsp;&nbsp;
            </p>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <p class="auto-style25">
                <span class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Just fill out this simple form and save - we do the rest! </span>&nbsp;
            </p>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <p class="auto-style25">
                <asp:Label ID="lblError" runat="server" CssClass="auto-style26" Text="Error Label"></asp:Label>
            </p>
        </td>
        <td colspan="2" class="auto-style27">required fields *</td>
    </tr>
    <tr>
        <td class="auto-style14"><span class="auto-style28">*</span>Event Name:&nbsp; </td>
        <td class="auto-style15" colspan="2">
            <asp:TextBox ID="txtEventName" runat="server" ForeColor="#009900"></asp:TextBox>
        </td>
        <td class="auto-style16">
            </td>
    </tr>
    <tr>
        <td class="auto-style6"><span class="auto-style28">*</span>Event Date:&nbsp; </td>
        <td class="auto-style12" colspan="2">
            <asp:TextBox ID="txtEventDate" runat="server" ForeColor="#33CC33" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style30">
            <asp:Label ID="lblDateError" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Event Time:</td>
        <td class="auto-style12" colspan="2">
            <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
        </td>
        <td class="auto-style30">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"><span class="auto-style28">*</span>Event Zipcode:&nbsp; </td>
        <td class="auto-style12" colspan="2">
            <asp:TextBox ID="txtEventLocation" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style29">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style12" colspan="2">
            &nbsp;</td>
        <td class="auto-style30">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp; <span class="auto-style31">*</span>Interest Type</td>
        <td class="auto-style13" colspan="2">
            <asp:DropDownList ID="ddlinterest" runat="server" DataSourceID="SqlDataSource2" DataTextField="Type" DataValueField="InterestID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [InterestID], [Type] FROM [Interest]"></asp:SqlDataSource>
        </td>
        <td class="auto-style11">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style12" colspan="2">
            &nbsp;</td>
        <td class="auto-style29">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style12" colspan="2">
            &nbsp;</td>
        <td class="auto-style29">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">Event Description: </td>
        <td class="auto-style18" colspan="2">
            <asp:TextBox ID="txtEventDescription" runat="server" Height="50px" Width="324px"></asp:TextBox>
        </td>
        <td class="auto-style19">
            </td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style21" colspan="2">
            <asp:Button ID="btnCreateEvent" runat="server" CssClass="offset-sm-0" Font-Bold="True" Font-Italic="True" ForeColor="#0033CC" OnClick="btnCreateEvent_Click" Text="Create Event!" Width="118px" />
        </td>
        <td class="auto-style22">
            </td>
    </tr>
</table>
</asp:Content>
