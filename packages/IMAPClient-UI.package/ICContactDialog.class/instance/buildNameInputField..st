toolbuilder
buildNameInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #contactName;
		setText: #contactName:;
		editText: #contactName:;
		help: #nameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 0) extent: self guiElementWidth @ self guiElementHeight)