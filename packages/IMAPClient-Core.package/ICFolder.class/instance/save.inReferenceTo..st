action - update emails
save: anICEmailCollection inReferenceTo: anotherICEmailCollection
	anICEmailCollection
		do: [:email | 
			| matchingEmail |
			matchingEmail := anotherICEmailCollection
						select: [:each | each equalsExceptFolder: email].
			matchingEmail isEmpty
				ifFalse: [self assert: matchingEmail size = 1 description: 'Critical Error. Only one email should match'.
					email id: matchingEmail first id].
			self endpoint readWriter write: email]