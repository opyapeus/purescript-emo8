/* global exports */
"use strict";

exports.textBaselineImpl = function (ctx) {
    return function () {
        return ctx.textBaseline;
    }
};

exports.setTextBaselineImpl = function (ctx) {
    return function (textBaseline) {
        return function () {
            ctx.textBaseline = textBaseline;
        }
    }
};