toolbuilder
buildAcceptButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		label: #acceptButtonLabel;
		action: #submit;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 2) extent: self guiElementWidth @ self guiElementHeight)