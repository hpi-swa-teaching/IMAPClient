action - sorting/filter
changeFilter: aText

	self
		filterString: aText asString;
		changed: #emailsOfSelectedFolder;
		changed: #searchResultsString