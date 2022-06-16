toolbuilder
buildEmailInputField: builder

	^ builder pluggableInputFieldSpec new
		name: self class nameEmailInputField;
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #email;
		setText: #email:;
		editText: #email:;
		help: #emailHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 1) extent: self guiElementWidth @ self guiElementHeight)