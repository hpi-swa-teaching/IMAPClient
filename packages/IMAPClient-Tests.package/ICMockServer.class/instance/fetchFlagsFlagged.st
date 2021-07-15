accessing
fetchFlagsFlagged

	^ OrderedCollection newFrom: {
		 '* 1 FLAGS( \Flagged) UID 48'.
		'. OK FETCH completed.' }