/**
 * Shim for crypto and other Node.js modules in React Native
 * This file must be imported at the very top of index.js
 */

// Polyfill for Buffer
if (typeof global.Buffer === 'undefined') {
    global.Buffer = require('buffer').Buffer;
}

// Polyfill for process
if (typeof global.process === 'undefined') {
    global.process = require('process');
} else if (!global.process.version) {
    global.process.version = 'v16.0.0';
}
global.process.browser = false;

// Polyfill for crypto (needed by crypto-js)
if (typeof global.crypto === 'undefined') {
    global.crypto = {
        getRandomValues: function (arr) {
            // Simple random implementation
            for (let i = 0; i < arr.length; i++) {
                arr[i] = Math.floor(Math.random() * 256);
            }
            return arr;
        }
    };
}

// Ensure btoa/atob are available
if (typeof global.btoa === 'undefined') {
    global.btoa = function (str) {
        return Buffer.from(str, 'binary').toString('base64');
    };
}

if (typeof global.atob === 'undefined') {
    global.atob = function (str) {
        return Buffer.from(str, 'base64').toString('binary');
    };
}

console.log('[Shim] Crypto polyfills loaded');
