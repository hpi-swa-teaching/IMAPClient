accessing
fetchResetFlags

	^ self acceptedFlags collect: [:aFlag|
			(ICCommand resetFlag: aFlag for: '47') 
			-> (self fetchFlag: aFlag)] as: Dictionary