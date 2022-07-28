flag
fetchFlagsResponse

	^ Dictionary newFrom: {
		(ICCommand fetchFlagsForUIDsFrom: 3 to: 3) -> (self fetchFlag: #deleted from: (3 to: 3) asOrderedCollection) .
		(ICCommand fetchFlagsForUIDsFrom: 4 to: 4) -> (self fetchFlag: #deleted from: (4 to: 4) asOrderedCollection) .
		(ICCommand fetchFlagsForUIDsFrom: 3 to: 4) -> (self fetchFlag: #flagged from: (3 to: 4) asOrderedCollection) . 
		(ICCommand fetchAllFlags) -> (self fetchFlag: #flagged from: (3 to: 4) asOrderedCollection)}