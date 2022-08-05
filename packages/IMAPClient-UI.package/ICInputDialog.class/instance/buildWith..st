toolbuilder
buildWith: builder

	| window |
	window := (builder build: (builder pluggableWindowSpec new
		label: self class dialogTitle;
		model: self;
		extent: self windowExtend;
		name: self class dialogTitle;
		children: {self buildAcceptButton: builder. self buildInputField: builder}))
		on: #keyStroke
			send: #keyEvent:
			to: self;
		submorphsDo: [:m |  (m respondsTo: #TextMorph) ifTrue: [m textMorph on: #keyDown send: #keyEvent: to: self]].
	
	self inputMorph: window.
	
	^ window