// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs


function show_more() {
	document.getElementById('show_more').classList.remove('visible');
	document.getElementById('show_more').classList.add('invisible');
	document.getElementById('show_less').classList.remove('invisible');
	document.getElementById('show_less').classList.add('visible');
	document.getElementById('more_locations').classList.remove('invisible');
	document.getElementById('more_locations').classList.add('visible');
}

function show_less() {
	document.getElementById('more_locations').classList.remove('visible');
	document.getElementById('more_locations').classList.add('invisible');
	document.getElementById('show_more').classList.remove('invisible');
	document.getElementById('show_more').classList.add('visible');
	document.getElementById('show_less').classList.remove('visible');
	document.getElementById('show_less').classList.add('invisible');
}
