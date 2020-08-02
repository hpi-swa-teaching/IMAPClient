toolbuilder
buildLoginButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		label: #buttonLabel;
		action: #submit;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 6)
			extent: self guiElementWidth @ (self guiElementHeight * 1.0))