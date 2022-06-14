toolbuilder
buildAcceptButton: builder

	^ builder pluggableButtonSpec new
		name: self class nameAcceptButton;
		model: self;
		label: #acceptLabel;
		action: #accept;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 2)
			extent: self guiElementWidth @ (self guiElementHeight * 1.0))