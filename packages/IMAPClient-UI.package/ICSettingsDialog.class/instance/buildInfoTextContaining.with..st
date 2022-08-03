toolbuilder
buildInfoTextContaining: aSymbol with: builder

	^ builder pluggableTextSpec new
		model: self;
		getText: aSymbol;
		setText: #doNothing;
		frame: (0.1 @ 0.1 corner: 0.9 @ 0.5);
		indicateUnacceptedChanges: false