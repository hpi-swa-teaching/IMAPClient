accessing
addAccount: anAccount

	self at: anAccount put: OrderedCollection new.
	^ self at: anAccount