email access
subject

	^ self email subject ifEmpty: [^ self class defaultSubject]