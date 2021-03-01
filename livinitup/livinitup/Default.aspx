<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="livinitup.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="StyleSheet.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>LiveItUp!</title>
</head>
<body>
    <div class="container-fluid align-content-center">
    <h1 class="text-primary text-center">LiveItUp!</h1>
        <p class="text-danger text-center">Your source for everything interesting locally!</p>

        </div>
    <form id="form1" runat="server">
        <div>
        </div>
       
        <asp:Panel ID="Panel1" runat="server" Height="454px" Width="142px">
            <asp:LinkButton class="btn btn-outline-primary" ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            <br />
            <asp:LinkButton class="btn btn-outline-info" ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
            <br />
            <asp:LinkButton class="btn btn-outline-success" ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
        </asp:Panel>
    </form>
</body>
</html>
