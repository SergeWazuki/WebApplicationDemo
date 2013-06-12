function WFStatus(displayText, status) {
    this.DisplayText = ko.observable(displayText);
    this.Status = ko.observable(status);
}

function WFType(displayText, type) {
    this.DisplayText = ko.observable(displayText);
    this.Type = ko.observable(type);
}

function SearchViewModel() {
    // Initializes dummy data
    var statusesArray = [
        new WFStatus("All", "all"),
        new WFStatus("Active", "active"),
        new WFStatus("Inactive", "inactive")];

    var typesArray = [
        new WFType("Standard", "std"),
        new WFType("Periodic", "prd"),
        new WFType("Training", "trn")];

    // Bindings
    this.Statuses = ko.observableArray(statusesArray);
    this.Types = ko.observableArray(typesArray);
}