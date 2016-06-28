accessing
labelFor: email

	^ email subject, Character tab, email from, Character tab, (email date copyFrom: 1 to: (email date size - 6))