toolbuilder
buildRecipient: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		color: #checkBoxColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #recipients;
		frame: (0 @ 0.1333 extent: 1 @ 0.0666)