accessing - email
subject

	^ self email subject ifEmpty: [^ self class defaultSubject]