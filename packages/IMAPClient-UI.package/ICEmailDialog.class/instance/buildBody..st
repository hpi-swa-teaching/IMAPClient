toolbuilder
buildBody: builder

	^ builder pluggableTextSpec new
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #body;
		frame: (0 @ 0.2 extent: 1 @ 0.8)