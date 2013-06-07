function StepOrientation(displayText, orientation) {
    this.DisplayText = ko.observable(displayText);
    this.Orientation = ko.observable(orientation);
}

function CommandBarViewModel() {
    // Initializes dummy data
    this.OrientationsArray = [
        new StepOrientation("Horizontal", "hoz"),
        new StepOrientation("Vertical", "var")];

    // Bindings
    this.Orientations = ko.observableArray(this.OrientationsArray);
}