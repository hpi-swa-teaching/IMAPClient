toolbuilder
buildWith: builder

	| window| 
	
	self filter: ICDoNotCopyFilter new.
	window := (builder build: (builder pluggableWindowSpec new
			model: self;
			extent: 300 @ 200;
			children: {
				self buildAcceptButton: builder.
				self buildInputField: builder.
				self buildLabel: builder.
			}))
		addEventCaptureFilter: self filter.		
	self inputMorph: window.
		
	^ window