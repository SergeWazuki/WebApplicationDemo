/// <reference path="../../Views/Controls/DrawingPanel.html" />

function StepModel(title, order) {
    /// <param name="title" type="String">The step's title.</param>
    /// <param name="order" type="Number">The step's order.</param>
    // The title.
    this.Title = title;
    this.Order = order;
}

function WorkflowModel(name, type) {
    this.Name = ko.observable(name);
    this.Type = ko.observable(type);
    this.Steps = ko.observableArray();
}

function CanvasUtility() {
    var canvas = document.getElementById("stepFigures");
    var ctx = canvas.getContext("2d");
    var self = this;

    ko.bindingHandlers.workflowChanged = {
        init: function (element, valueAccessor) {
            self.initialize(element, valueAccessor);
        },
        update: function (element, valueAccessor) {
            self.draw(element, valueAccessor);
        }
    };
}

CanvasUtility.prototype.initialize = function (canvas, valueAccessor) {
    /// <summary>
    /// Initializes the canvas.
    /// </summary>
    /// <param name="canvas" type="HTMLCanvasElement">The canvas element.</param>
    /// <param name="valueAccessor">The value accessor.</param>
}

CanvasUtility.prototype.draw = function (canvas, valueAccessor) {
    /// <summary>
    /// 
    /// </summary>
    /// <param name="canvas" type="HTMLCanvasElement">The canvas element.</param>
    /// <param name="valueAccessor">The value accessor.</param>

}

CanvasUtility.prototype.drawStep = function (ctx, step, orientation) {
    /// <summary>
    /// Draws a step following a specific orientation.
    /// </summary>
    /// <param name="ctx" type="CanvasRenderingContext2D">The 2d context of the canvas.</param>
    /// <param name="step" type="StepModel.prototype.constructor"></param>
    /// <param name="orientation"></param>
    var startX = 100;
    var startY = 100;
    var endX = startX + 200;
    var endY = startY + 220;

    ctx.moveTo(startX, startY);
    ctx.strokeRect(startX, startY, startX + endX, startY + endY);
}