toolbuilder
buildInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #input;
		setText: #input:;
		editText: #input:;
		help: #helpText;
		font: (StrikeFont passwordFontSize: 12);
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 1) extent: self guiElementWidth @ self guiElementHeight)