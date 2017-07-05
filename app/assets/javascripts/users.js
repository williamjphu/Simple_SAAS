$(document).ready(function() {
	Stripe.setPublisherableKey($('meta[name="stripe-key"]').attr('content'));

	// Watch for a form submission
	$("#form-submit-btn").click(function(event)) {
		event.preventDefault();

		// Disable the   submit button: avoid multiple clicks 
		$('input[type=submit]').prop('disabled', true);
		var error = false;
		var ccNum = $('#card_number').val(),
			cvcNum = $('#card_cvv').val(),
			expMonth = $('#card_month').val(),
			expYear = $('#card_year').val();

		if (!error) {
			// Get the Stripe token:
			Stripe.createToken({
				number: ccNum,
				cvc: cvcNum,
				exp_month: expMonth;
				exp_year: expYear
			}, stripeResponseHandler);
		}

		return false;
	});

	// Helper functiobn
	function stripeResponseHandler(status, response) {
		// Get a reference to the form
		var f = $('#new_user');

		// Get the token from the response
		var token = response.id;

		// Add token to the form
		f.append('<input type="hidden" name="user[stripe_card_token]" value="' + token + '" />');

		// Submit form
		f.get(0).submit();
	}
});