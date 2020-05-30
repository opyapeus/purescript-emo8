"use strict";

exports.emo8RetinaImpl = function (elem) {
    return function (rect) {
        return function () {
            var wrapper = document.createElement('div');
            wrapper.style.position = 'absolute';
            wrapper.style.top = '50%';
            wrapper.style.left = '50%';
            wrapper.style.transform = 'translate(-50%,-50%)';
            wrapper.style.maxWidth = '100%';
            wrapper.style.maxHeight = '100%';
            wrapper.style.width = rect.width.toString() + 'px';
            wrapper.style.height = rect.height.toString() + 'px';
            elem.parentNode.insertBefore(wrapper, elem);
            wrapper.appendChild(elem);
        }
    }
}
