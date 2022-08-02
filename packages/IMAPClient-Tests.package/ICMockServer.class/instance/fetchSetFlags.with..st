flag
fetchSetFlags: anUID with: aMessageID

	^ self acceptedFlags
		collect: [:aFlag | (ICCommand setFlag: aFlag for: aMessageID asString) -> (self fetchFlag: aFlag from: anUID asNumber asOrderedCollection)]
		as: Dictionary