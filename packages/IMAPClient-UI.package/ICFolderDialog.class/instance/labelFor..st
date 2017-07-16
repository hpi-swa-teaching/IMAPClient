email selection
labelFor: email

	^ (email subject truncateTo: 80), Character tab, ((email from subStrings: '<') at: 1), Character tab, email date