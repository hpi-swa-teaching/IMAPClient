flag
fetchFlagsResponse

	^ Dictionary newFrom: {
		(ICCommand fetchFlagsForUIDsFrom: 3 to: 4) 
		-> (self fetchFlag: #flagged from: (3 to: 4) asOrderedCollection)}