toolbuilder
buildSslCheckBox: builder
	
	^ builder pluggableCheckBoxSpec new
		model: self;
		label: #sslCheckBoxLabel;
		color: Color transparent;
		state: #ssl;
		action: #toggleSSL;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 5) extent: self guiElementWidth @ self guiElementHeight)