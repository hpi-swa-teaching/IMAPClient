toolbuilder
buildInputField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 1) extent: self guiElementWidth @ self guiElementHeight)