<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="SearchEvent.aspx.cs" Inherits="livinitup.SearchEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 196px;
        }
        .auto-style9 {
            width: 231px;
        }
        .auto-style10 {
            width: 68px;
        }
        .auto-style11 {
            margin-right: 0px;
        }
        .auto-style12 {
            line-height: 150%;
            text-align: left;
        }
        .auto-style13 {
            font-family: "Segoe UI";
            font-size: large;
            font-style: italic;
            text-decoration: underline;
        }
        .auto-style14 {
            width: 6px;
        }
        .auto-style15 {
            width: 207px;
        }
        .auto-style16 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style13" colspan="7">
                <p class="auto-style12">
                    <strong>Search for an Event</strong></p>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Event Keyword/Type: </strong></td>
            <td class="auto-style14" colspan="3">
                <p class="auto-style12">
                    <asp:TextBox ID="txtEventSearchType" runat="server"></asp:TextBox>
                </p>
            </td>
            <td class="auto-style15" colspan="2"><strong>Location (zip):</strong></td>
            <td>
                <p class="auto-style12">
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                    <strong>
                    <asp:Label ID="lblZipError" runat="server"></asp:Label>
                    </strong>
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Date range</strong></td>
            <td class="auto-style10" colspan="2">
                <asp:Calendar ID="calStartDate" runat="server" CssClass="auto-style11" Height="16px" Width="16px" OnSelectionChanged="calStartDate_SelectionChanged"></asp:Calendar>
            </td>
            <td class="auto-style10" colspan="3">to</td>
            <td>
                <asp:Calendar ID="calEndDate" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9" colspan="5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="123px" OnClick="btnSearch_Click" />
            </td>
            <td colspan="3">
                <strong><em>
                <asp:Label ID="lblSearchResults" runat="server" CssClass="auto-style16" Text="Search Results"></asp:Label>
                </em></strong>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="7">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
