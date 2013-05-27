<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>HTML5 Demo</title>
    <script type="text/javascript" src="scripts/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="scripts/knockout-2.2.1.js"></script>
    <style>
        body
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
            float: left;
            border-width: 0.1em;
            border-style: solid;
            border-color: black;
        }

        #searchPanel
        {
            width: 29%;
            height: 100%;
            padding: 5px;
        }

        #mainPanel
        {
            width: 69%;
            height: 100%;
        }
    </style>
    <script type="text/javascript">
        function WFStatus(displayText, status) {
            this.DisplayText = ko.observable(displayText);
            this.Status = ko.observable(status);
        }

        function ViewModel() {
            this.Statuses = ko.observableArray([
                new WFStatus("All", "all"),
                new WFStatus("Active", "active"),
                new WFStatus("Inactive", "inactive")]);
        }

        onload = function () {
            ko.applyBindings(new ViewModel());
        };
    </script>
</head>
<body>
    <form id="form" runat="server">
        <div id="splitter" style="height: 100%; width: 100%;">
            <div id="searchPanel">
                <h1 style="text-align: left; color: darkblue; font-size: large">Search</h1>
                <table>
                    <tr>
                        <td>
                            <label>Status</label>
                        </td>
                        <td style="text-align: right">
                            <select id="statusesList" style="width: 150px;">
                                <%--<option value="all" selected style="color: GrayText">All</option>--%>
                                <option data-bind="text: DisplayText, value: Status, selected: Status == 'all'"></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Type</label>
                        </td>
                        <td style="text-align: right">
                            <select id="typeList" style="width: 150px;">
                                <option value="all" selected style="color: GrayText">All</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Name</label>
                        </td>
                        <td style="text-align: right">
                            <input type="text" id="searchBox" style="width: 200px" />
                            &nbsp;
                    <button id="searchButton" style="width: 50px">Search</button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <select id="templateList" size="40" style="width: 100%"></select>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="mainPanel">
                <div id="designerHeader" style="width: 100%; height: 40px"></div>
                <div id="designerBody" style="width: 100%; height: 100%">
                    <canvas id="stepFigures" style="height: 100%"></canvas>
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
