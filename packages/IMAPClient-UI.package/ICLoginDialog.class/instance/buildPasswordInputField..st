toolbuilder
buildPasswordInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #password;
		setText: #password:;
		editText: #password:;
		help: #passwordHelpText;
		font: (StrikeFont passwordFontSize: 12);
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 4) extent: self guiElementWidth @ self guiElementHeight)