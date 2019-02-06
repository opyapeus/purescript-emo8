"use strict";

exports.setItemImpl = function (key) {
    return function (value) {
        return function () {
            localStorage.setItem(key, value);
        }
    }
}

exports.removeItemImpl = function (key) {
    return function () {
        localStorage.removeItem(key);
    }
}

exports.getItemImpl = function (nothing) {
    return function (just) {
        return function (key) {
            return function () {
                const m = localStorage.getItem(key);
                return m == null ? nothing : just(m);
            }
        }
    }
}
