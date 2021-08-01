action - update emails
startUIDFor: aNumber

	| allUIDs |
	
	allUIDs := self endpoint currentUIDsFor: self.
	(allUIDs size - aNumber) strictlyPositive
		ifTrue: [^ allUIDs at: (allUIDs size - aNumber)]
		ifFalse: [^ (allUIDs first) - 1]