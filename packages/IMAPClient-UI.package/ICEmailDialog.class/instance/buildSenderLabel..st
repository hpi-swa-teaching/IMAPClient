toolbuilder
buildSenderLabel: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		color: #checkBoxColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #sender;
		frame: (0 @ 0 extent: 1 @ 0.0666)