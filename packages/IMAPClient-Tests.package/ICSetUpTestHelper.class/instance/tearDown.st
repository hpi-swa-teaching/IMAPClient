running
tearDown

	self emails do: [:email | self deleteEmail: email].
	self emails: OrderedCollection new.
	self resetCurrentMailID.
	self initialize
	 