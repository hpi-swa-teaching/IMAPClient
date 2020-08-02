login
loginWithPassword: aText

	aText ifNil: [
		self inform: 'Please put in a password'.
		^ self].
	self password: aText.
	self login