flag
fetchResetFlags: anUID with: aMessageID

	^ self acceptedFlags
		collect: [:aFlag | (ICCommand resetFlag: aFlag for: aMessageID asString) -> (self fetchFlag: aFlag from: anUID asNumber asOrderedCollection)]
		as: Dictionary