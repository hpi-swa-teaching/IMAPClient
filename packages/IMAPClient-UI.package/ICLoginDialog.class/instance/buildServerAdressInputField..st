toolbuilder
buildServerAdressInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverAddress;
		setText: #serverAddress:;
		editText: #serverAddress:;
		help: #serverAdressHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 1) extent: self guiElementWidth @ self guiElementHeight)