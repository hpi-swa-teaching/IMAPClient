accessing
fetchSwitchFlags: aCommand

	^ self acceptedFlags collect: [:aFlag|
			aCommand
			-> (self fetchFlag: aFlag from: 48 asOrderedCollection)] as: Dictionary