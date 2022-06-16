flag
fetchSetFlags

	^ self acceptedFlags
		collect: [:aFlag | (ICCommand setFlag: aFlag for: '47') -> (self fetchFlag: aFlag from: 48 asOrderedCollection)]
		as: Dictionary