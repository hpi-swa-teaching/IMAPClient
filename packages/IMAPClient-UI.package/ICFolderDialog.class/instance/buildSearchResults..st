toolbuilder
buildSearchResults: builder

	^ builder pluggableTextSpec new
		model: self;
		frame: (0.75 @ 0 extent: 0.05 @ 1);
		getText: #searchResultsString;	
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		readOnly: true;
		color: #searchResultsColor