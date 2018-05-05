email selection
labelFor: email

	^ (email subject truncateTo: 80), Character tab, ((email from findBetweenSubStrs: '<>') at: 2), Character tab, email date