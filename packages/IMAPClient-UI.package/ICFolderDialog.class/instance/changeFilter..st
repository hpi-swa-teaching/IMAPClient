action - sorting
changeFilter: aText
	self
		filterString: aText asString;
		changed: #emailsOfSelectedFolder;
		changed: #searchResultsString
		