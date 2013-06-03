<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchControl.ascx.cs" Inherits="WebApp.Views.Controls.SearchPanel" %>

<style>
    td.search-panel-left-column
    {
        padding-left: 5px;
        text-align: left;
        width: 60px;
    }

    td.search-panel-right-column
    {
        text-align: right;
        width: 250px;
    }

    div.container
    {
        border: none;
        height: 100%;
        width: auto;
        padding: 10px;
        margin: 0 auto;
        background: linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* W3C */
        background: -moz-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* FF3.6+ */
        background: -webkit-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, #AAD6EB 56%, #D1DEEB 12%); /* IE10+ */
        background: #AAD6EB; /* Old browsers */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#AAD6EB', endColorstr='#D1DEEB',GradientType=0 ); /* IE6-9 */
    }
</style>
<script src="../../Scripts/SearchControl.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        ko.applyBindings(new SearchViewModel());
    });
</script>
<div class="container">
    <h1 style="text-align: left; color: darkblue; font-size: large">Search</h1>
    <table style="border-spacing: 5px; padding: 5px;">
        <tr>
            <td class="search-panel-left-column">
                <label>Status</label>
            </td>
            <td class="search-panel-right-column" style="width: 250px">
                <select id="statusesList"
                    data-bind="options: Statuses,
                        optionsText: 'DisplayText',
                        optionValue: 'Status',
                        value: Statuses()[0]"
                    style="width: 150px">
                </select>
            </td>
        </tr>
        <tr>
            <td class="search-panel-left-column">
                <label>Type</label>
            </td>
            <td class="search-panel-right-column" style="width: 250px">
                <select id="typesList"
                    data-bind="options: Types,
                        optionsText: 'DisplayText',
                        optionValue: 'Type',
                        value: Types()[0]"
                    style="width: 150px">
                </select>
            </td>
        </tr>
        <tr>
            <td class="search-panel-left-column">
                <label>Name</label>
            </td>
            <td class="search-panel-right-column" style="width: 250px">
                <input type="text" id="searchTextBox" style="width: 60%" />
                &nbsp;
                <button id="searchButton" style="width: 70px">Search</button>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <select id="templateList" size="40" style="width: 100%"></select>
            </td>
        </tr>
    </table>
</div>
