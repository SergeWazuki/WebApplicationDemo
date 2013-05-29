<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchControl.ascx.cs" Inherits="WebApp.Views.Controls.SearchPanel" %>

<style>
    td.search-panel-left-column
    {
        text-align: left;
        width: 60px;
    }

    td.search-panel-right-column
    {
        text-align: right;
    }

    div.container
    {
        height: 100%;
        width: auto;
        padding: 5px;
        margin: 0 auto;
        background-color: transparent;
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
    <table style="border-spacing: 5px;">
        <tr>
            <td class="search-panel-left-column">
                <label>Status</label>
            </td>
            <td class="search-panel-right-column">
                <select id="statusesList"
                    data-bind="options: Statuses,
                        optionsText: 'DisplayText',
                        optionValue: 'Status',
                        value: Statuses()[0]"
                    style="width: 150px;">
                </select>
            </td>
        </tr>
        <tr>
            <td class="search-panel-left-column">
                <label>Type</label>
            </td>
            <td class="search-panel-right-column">
                <select id="typesList"
                    data-bind="options: Types,
                        optionsText: 'DisplayText',
                        optionValue: 'Type',
                        value: Types()[0]"
                    style="width: 150px;">
                </select>
            </td>
        </tr>
        <tr>
            <td class="search-panel-left-column">
                <label>Name</label>
            </td>
            <td class="search-panel-right-column">
                <input type="text" id="searchTextBox" style="width: auto" />
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
