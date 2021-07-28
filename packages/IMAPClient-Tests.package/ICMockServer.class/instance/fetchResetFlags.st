flag
fetchResetFlags

	^ self acceptedFlags collect: [:aFlag|
			(ICCommand resetFlag: aFlag for: '47') 
			-> (self fetchFlag: aFlag from: 48 asOrderedCollection)] as: Dictionary