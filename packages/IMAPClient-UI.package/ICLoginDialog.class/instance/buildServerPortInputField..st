toolbuilder
buildServerPortInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverPort;
		setText: #serverPort:;
		editText: #serverPort:;
		help: #serverPortHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 2) extent: self guiElementWidth @ self guiElementHeight)