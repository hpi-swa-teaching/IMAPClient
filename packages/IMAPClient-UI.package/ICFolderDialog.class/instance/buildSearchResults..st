toolbuilder
buildSearchResults: builder

	^ builder pluggableTextSpec new
		model: self;
		frame: (0.6 @ 0 extent: 0.2 @ 1);
		setText: #searchResultsString:;
		getText: #searchResultsString;
		help: #emailSearchResultsHelp;		
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false