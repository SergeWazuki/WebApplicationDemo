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
    this.StatusesArray = [
        new WFStatus("All", "all"),
        new WFStatus("Active", "active"),
        new WFStatus("Inactive", "inactive")];

    this.TypesArray = [
        new WFType("Standard", "std"),
        new WFType("Periodic", "prd"),
        new WFType("Training", "trn")];

    // Bindings
    this.Statuses = ko.observableArray(this.StatusesArray);
    this.Types = ko.observableArray(this.TypesArray);
}