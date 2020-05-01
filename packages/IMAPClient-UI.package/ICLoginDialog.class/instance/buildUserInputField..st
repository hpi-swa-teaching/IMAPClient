toolbuilder
buildUserInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #username;
		setText: #username:;
		editText: #username:;
		help: #usernameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 3) extent: self guiElementWidth @ self guiElementHeight)