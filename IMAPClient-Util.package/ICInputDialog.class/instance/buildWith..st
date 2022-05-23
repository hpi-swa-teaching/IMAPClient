toolbuilder
buildWith: builder

	| window| 
	
	window := (builder build: (builder pluggableWindowSpec new
			model: self;
			extent: 300 @ 200;
			children: {
				self buildAcceptButton: builder.
				self buildInputField: builder.
				self buildLabel: builder.
			})).
	self inputMorph: window.
		
	^ window