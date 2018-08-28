"use strict";

exports.createPeriodicWaveImpl = function (fftc) {
    return function (ctx) {
        return function () {
            const reals = fftc.map(function(e) { return e.real });
            const imags = fftc.map(function(e) { return e.imag });
            return ctx.createPeriodicWave(Float32Array.from(reals), Float32Array.from(imags));
        }
    }
};

exports.setPeriodicWaveImpl = function (wave) {
    return function (node) {
        return function () {
            node.setPeriodicWave(wave);
        }
    }
};