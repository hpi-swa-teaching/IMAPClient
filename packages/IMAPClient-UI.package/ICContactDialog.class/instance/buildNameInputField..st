toolbuilder
buildNameInputField: builder

	^ builder pluggableInputFieldSpec new
		name: self class nameNameInputField;
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #contactName;
		setText: #name:;
		editText: #name:;
		help: #nameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 0) extent: self guiElementWidth @ self guiElementHeight)