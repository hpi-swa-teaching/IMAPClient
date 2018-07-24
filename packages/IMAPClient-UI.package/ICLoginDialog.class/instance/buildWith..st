toolbuilder
buildWith: builder

	| windowSpec nameInputFieldSpec serverAdressInputFieldSpec serverPortInputFieldSpec userInputFieldSpec passwordInputFieldSpec sslCheckBoxSpec loginButtonSpec window |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		extent: 300 @ 200;
		children: OrderedCollection new.
		
	nameInputFieldSpec := builder pluggableInputFieldSpec new.
	nameInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #accountName;
		setText: #accountName:;
		editText: #accountName:;
		help: #nameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 0) extent: self guiElementWidth @ self guiElementHeight).	
		
	serverAdressInputFieldSpec := builder pluggableInputFieldSpec new.
	serverAdressInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverAddress;
		setText: #serverAddress:;
		editText: #serverAddress:;
		help: #serverAdressHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 1) extent: self guiElementWidth @ self guiElementHeight).
	
	serverPortInputFieldSpec := builder pluggableInputFieldSpec new.
	serverPortInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverPort;
		setText: #serverPort:;
		editText: #serverPort:;
		help: #serverPortHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 2) extent: self guiElementWidth @ self guiElementHeight).
		
	userInputFieldSpec := builder pluggableInputFieldSpec new.
	userInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #username;
		setText: #username:;
		editText: #username:;
		help: #usernameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 3) extent: self guiElementWidth @ self guiElementHeight).
		
	passwordInputFieldSpec := builder pluggableInputFieldSpec new.
	passwordInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #password;
		setText: #password:;
		editText: #password:;
		help: #passwordHelpText;
		font: (StrikeFont passwordFontSize: 12);
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 4) extent: self guiElementWidth @ self guiElementHeight).
	
	sslCheckBoxSpec := builder pluggableCheckBoxSpec new.
	sslCheckBoxSpec
		model: self;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 5) extent: self guiElementWidth @ self guiElementHeight);
		label: #sslCheckBoxLabel;
		color: #checkBoxColor;
		state: #ssl;
		action: #toggleSSL.
					
		
	loginButtonSpec := builder pluggableButtonSpec new.
	loginButtonSpec
		model: self;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 6) extent: self guiElementWidth @ (self guiElementHeight * 1.0));
		label: #getButtonLabel;
		action: #login.
			
	windowSpec children addAll: { loginButtonSpec . serverAdressInputFieldSpec . serverPortInputFieldSpec . userInputFieldSpec . 
								     nameInputFieldSpec . passwordInputFieldSpec . sslCheckBoxSpec }.

	window := builder build: windowSpec.
	
	window on: #keyStroke send: #keyEvent: to: self.
	self loginMorph: window.
	self inputCollection: OrderedCollection new.
	
	"add listener to text fields
	and hack to make the checkbox background transparent
	can be removed once PluggableCheckBoxMorph starts using its color selector instead of default mint green
	 (bug in squeak)"
		
	window submorphsDo: [:m |
		(m class == PluggableTextMorphPlus)
			ifTrue: [self inputCollection add: m.
					m textMorph on: #keyDown send: #keyEvent: to: self].
		(m class == PluggableCheckBoxMorph)
			ifTrue: [m color: Color transparent]].
		
	^ window