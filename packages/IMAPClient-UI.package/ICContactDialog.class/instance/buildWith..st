toolbuilder
buildWith: builder

	| window |
	window := (builder build: (builder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		extent: 300 @ 120;
		children: {self buildNameInputField: builder. self buildEmailInputField: builder. self buildAcceptButton: builder}))
		on: #keyStroke
			send: #keyEvent:
			to: self;
		submorphsDo: [:m | m class == PluggableTextMorphPlus ifTrue: [m textMorph on: #keyDown send: #keyEvent: to: self]].
	
	^ window