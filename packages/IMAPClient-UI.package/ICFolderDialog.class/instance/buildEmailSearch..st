toolbuilder
buildEmailSearch: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		frame: (0.2 @ 0 extent: 0.8 @ 0.05);
		editText: #changeFilter:;
		setText: #filterString:;
		getText: #filterString;
		help: #emailSearchHelp;		
		askBeforeDiscardingEdits: true;
		indicateUnacceptedChanges: false