accessing
fetchSetFlags

	^ self acceptedFlags collect: [:aFlag|
			(ICCommand setFlag: aFlag for: '47') 
			-> (self fetchFlag: aFlag)] as: Dictionary