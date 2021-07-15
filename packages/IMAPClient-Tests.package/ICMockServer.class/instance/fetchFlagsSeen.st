accessing
fetchFlagsSeen

	^ OrderedCollection newFrom: {
		 '* 1 FLAGS(\Seen) UID 48'.
		'. OK FETCH completed.' }