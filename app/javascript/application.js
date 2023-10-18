// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper"

import "bootstrap"
import "jquery"
import "jquery_ujs"
import "./jquery_ui"
//= require jquery-ui/widgets/sortable
//= require rails_sortable

//= require_tree 
$(function() {
    $('.sortable').railsSortable();
  });