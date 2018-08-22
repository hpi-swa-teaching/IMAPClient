initialization
fetchFlagsOnlyResponse

	^ OrderedCollection newFrom: {
		 '* 1 FLAGS( \Flagged) UID 3'.
		 '* 2 FLAGS( \Flagged) UID 4'.
		'. OK FETCH completed.' }.