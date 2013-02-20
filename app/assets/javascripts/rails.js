/*
 * Rails.js 0.0.1 - jQuery Dispatcher for Rails
 *
 * Copyright (c) 2008 Nando Vieira (simplesideias.com.br)
 * Dual licensed under the MIT (MIT-LICENSE.txt)
 * and GPL (GPL-LICENSE.txt) licenses.
 *
 */
var Rails = {
    ALIASES: {
        'create': 'new',
        'update': 'edit'
    },
    
    logger: function() {
        try {
            if (!location.href.match(/^http:\/\/(localhost|127.0.0.1)/) || !window.console) {
                return;
            }

            var args = arguments;
            var type = args.shift();
            console[type].apply(window, args);
        } catch (e) {
            null;
        }
    },
    
    dispatcher: function() {
        var controller_name = $('head meta[name=rails-controller]').attr('content');
        var action_name = $('head meta[name=rails-action]').attr('content');
        
        action_name = Rails.ALIASES[action_name] || action_name;
        
        try {
            Rails.before();
        } catch (e) {
            Rails.logger('debug', 'Rails#before', e.message);
        }
        
        try {
            Rails[controller_name].before();
        } catch (e) {
            Rails.logger('debug', 'Rails#' + controller_name + '#before', e.message);
        }
        
        try {
            Rails[controller_name][action_name].call();
        } catch (e) {
            Rails.logger('debug', 'Rails#' + controller_name + '#' + action_name, e.message);
        }
    }
};

// start dispatcher
$(document).ready(Rails.dispatcher);