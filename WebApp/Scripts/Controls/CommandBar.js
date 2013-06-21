var StepOrientation = new Enum({
    Horizontal: 0,
    Vertical: 1
});

function CommandBarViewModel() {
    // Bindings
    this.Orientation = ko.observable(StepOrientation);
}