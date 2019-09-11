// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import './bootstrap_custom.js'

import '../stylesheets/application'
import React from 'react';
import { render } from 'react-dom';
import MyEditor from '../components/MyEditor';
document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById("container-c56e9b2")
  if (container) {
    render(<MyEditor/>, container);
  }
})

// https://stackoverflow.com/a/11257495
window.onerror = function(errorMessage, errorUrl, errorLine) {
    jQuery.ajax({
        type: 'POST',
        url: '/pages/log_error',
        data: {
            msg: errorMessage,
            url: errorUrl,
            line: errorLine
        },
        success: function() {
            if (console && console.log) {
                console.log('JS error report successful.');
            }
        },
        error: function() {
            if (console && console.error) {
                console.error('JS error report submission failed!');
            }
        }
    });
    // Dont prevent firing of default error handler.
    return false;
};
