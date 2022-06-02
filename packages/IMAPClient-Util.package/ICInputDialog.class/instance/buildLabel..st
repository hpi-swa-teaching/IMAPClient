toolbuilder
buildLabel: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		color: #checkBoxColor;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #label;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 0) extent: self guiElementWidth @ self guiElementHeight)