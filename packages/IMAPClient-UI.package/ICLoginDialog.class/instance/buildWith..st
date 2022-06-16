toolbuilder
buildWith: builder

	| window |
	self inputCollection: OrderedCollection new.
	self doNotCopyFilter: ICDoNotCopyFilter new.
	
	window := (builder build: (builder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		extent: 300 @ 200;
		children: {
			self buildLoginButton: builder.
			self buildServerAdressInputField: builder.
			self buildServerPortInputField: builder.
			self buildUserInputField: builder.
			self buildNameInputField: builder.
			self buildPasswordInputField: builder.
			self buildSslCheckBox: builder}))
		on: #keyStroke
			send: #keyEvent:
			to: self;
		addEventCaptureFilter: self doNotCopyFilter;
		submorphsDo: [:m |
			"add listener to text fields
		and hack to make the checkbox background transparent
		can be removed once PluggableCheckBoxMorph starts using its color selector instead of default mint green
	 	(bug in squeak)"
			m class == PluggableTextMorphPlus ifTrue: [
				self inputCollection add: m.
				m textMorph on: #keyDown send: #keyEvent: to: self].
			m class == PluggableCheckBoxMorph ifTrue: [m color: Color transparent]].
	self loginMorph: window.
	
	^ window