toolbuilder
buildNameInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #accountName;
		setText: #accountName:;
		editText: #accountName:;
		help: #nameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 0) extent: self guiElementWidth @ self guiElementHeight)