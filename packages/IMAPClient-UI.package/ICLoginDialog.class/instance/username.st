accessing
username

	^ username
			ifNil: [ ^ self defaultUsername ]