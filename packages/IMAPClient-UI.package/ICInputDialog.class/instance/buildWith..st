toolbuilder
buildWith: builder

	| window |
	window := (builder build: (builder pluggableWindowSpec new
		model: self;
		extent: self windowExtend;
		label: #label;
		children: {self buildAcceptButton: builder. self buildInputField: builder }))
		on: #keyStroke
			send: #keyEvent:
			to: self;
		submorphsDo: [:m |
			m class == PluggableTextMorphPlus ifTrue: [
				m textMorph on: #keyDown send: #keyEvent: to: self]].

	self inputMorph: window.
	
	^ window