<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="livinitup.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 780px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UniqueContent1" runat="server">
    <table class="w-100">
    <tr>
        <td colspan="2">Create your Event here!</td>
    </tr>
    <tr>
        <td colspan="2">Just fill out this simple form and save - we do the rest!</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Event Name:&nbsp;&nbsp; </td>
        <td>
            <input id="Text1" type="text" /></td>
    </tr>
    <tr>
        <td>Event Date:&nbsp;&nbsp;&nbsp; </td>
        <td>
            <input id="Text2" type="text" /></td>
    </tr>
    <tr>
        <td>Event Location:&nbsp;&nbsp;&nbsp; </td>
        <td>
            <input id="Text3" type="text" /></td>
    </tr>
    <tr>
        <td>Event Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <input id="Text4" type="text" /></td>
    </tr>
    <tr>
        <td>Event Interest:&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td>
            <input id="Text5" type="text" /></td>
    </tr>
    <tr>
        <td>Virtual Event ?</td>
        <td>
            <input id="Checkbox1" type="checkbox" /></td>
    </tr>
    <tr>
        <td>Private Event?</td>
        <td>
            <input id="Checkbox2" type="checkbox" /></td>
    </tr>
</table>
</asp:Content>
