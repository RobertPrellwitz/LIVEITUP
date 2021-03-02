<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="livinitup.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
            width: 458px;
            text-align: right;
        }
    .auto-style8 {
           border-radius: 10px;
           background-color:antiquewhite;
           color:darkseagreen;
           border-color:cadetblue;
           text-align:center
        }
        .auto-style10 {
            width: 458px;
            text-align: right;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style12 {
            width: 470px;
        }
        .auto-style13 {
            height: 40px;
            width: 470px;
        }
        .auto-style14 {
            width: 458px;
            text-align: right;
            height: 45px;
        }
        .auto-style15 {
            height: 45px;
            width: 470px;
        }
        .auto-style16 {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">
    <table class="w-100">
    <tr>
        <td colspan="3">Create your Event here!</td>
    </tr>
    <tr>
        <td colspan="3">Just fill out this simple form and save - we do the rest!</td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">Event Name:&nbsp; </td>
        <td class="auto-style15">
            <input class="auto-style8" id="txtEventName" type="text" value="Event Name Here" /></td>
        <td class="auto-style16">
            </td>
    </tr>
    <tr>
        <td class="auto-style6">Event Date:&nbsp; </td>
        <td class="auto-style12">
            <input class="auto-style8" id="txtEventDate" type="text" aria-atomic="False" value="mm/dd/yy" /></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Event Location:&nbsp; </td>
        <td class="auto-style12">
            <input class="auto-style8" id="txtLocationName" type="text" /></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Event Time:&nbsp; </td>
        <td class="auto-style12">
            <input class="auto-style8" id="txtEventTime" type="text" value="HH:MM" /></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">Event Interest:&nbsp; </td>
        <td class="auto-style13">
            <input class="auto-style8" id="txtEventType" type="text" /></td>
        <td class="auto-style11">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Virtual Event ?</td>
        <td class="auto-style12">
            <input id="cbxVirtual" type="checkbox" /></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Private Event?</td>
        <td class="auto-style12">
            <input id="cbxPrivate" type="checkbox" /></td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
