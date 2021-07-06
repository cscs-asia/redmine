$(document).ready(function() {
	$('a.register').remove();

	$('#login-form').prependTo('#login-container');
	$('.logo_login').prependTo('#login-container');

	$('#login-form form').hide();
	$('#login-password-button').click(() => {
		$('#login-password-button').remove();
		$('#login-form form').show();
	});
});