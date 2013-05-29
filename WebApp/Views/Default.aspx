<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>
<%@ Register TagPrefix="UC" TagName="SearchControl" Src="~/Views/Controls/SearchControl.ascx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>HTML5 Demo</title>
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/knockout-2.2.1.js"></script>
    <style>
        body,form
        {
            margin: 0px;
            padding: 0px;
            height: 100%;
            width: 100%;
            text-align: center;
        }

        div
        {
            display: block;
            border-width: 1px;
            border-style: solid;
            border-color: black;
        }

        #searchPanelContainer
        {
            float: left;
            width: 30%;
            height: 100%;
            padding: 0;
            text-align: center;
            background: linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* W3C */
            background: -moz-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* FF3.6+ */
            background: -webkit-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* IE10+ */
            background: #AAD6EB; /* Old browsers */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#AAD6EB', endColorstr='#D1DEEB',GradientType=0 ); /* IE6-9 */
        }

        #mainPanelContainer
        {
            float: right;
            width: 69%;
            height: auto;
            padding: 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <div id="splitter" style="height: 100%; width: 100%;">
            <div id="searchPanelContainer">
                <UC:SearchControl runat="server" ID="searchPanel" />
            </div>
            <div id="mainPanelContainer">
                <div id="commandBar" style="width: 100%; height: 40px">
                    Command Bar
                </div>
                <div id="templateBody" style="width: 100%; height: auto">
                    <canvas id="stepFigures" style="height: 100%"></canvas>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
