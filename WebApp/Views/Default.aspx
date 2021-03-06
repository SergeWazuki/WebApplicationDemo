﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>
<%@ Register TagPrefix="UC" TagName="SearchControl" Src="~/Views/Controls/SearchControl.ascx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>HTML5 Demo</title>
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/jquery-ui-1.10.3.min.js"></script>
    <script src="../Scripts/jquery-ui-1.10.3.js"></script>
    <script src="../Scripts/knockout-2.2.1.js"></script>
    <script src="../Scripts/modernizr-2.6.2.js"></script>
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
            background-clip: padding-box;
            border-bottom-right-radius: 10px;
            border-top-right-radius: 10px;
            overflow: hidden;
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
    <script type="text/javascript">
        $(document).ready(function () {
        });
    </script>
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
