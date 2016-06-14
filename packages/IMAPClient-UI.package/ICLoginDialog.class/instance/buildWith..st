user interface
buildWith: builder

	| windowSpec  serverAdressInputFieldSpec serverPortInputFieldSpec userInputFieldSpec passwordInputFieldSpec loginButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		extent: 300 @ 200;
		children: OrderedCollection new.
		
	serverAdressInputFieldSpec := builder pluggableInputFieldSpec new.
	serverAdressInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverAddress;
		setText: #serverAddress:;
		editText: #serverAddress:;
		help: #serverAdressHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 0) extent: self guiElementWidth @ self guiElementHeight).
	
	serverPortInputFieldSpec := builder pluggableInputFieldSpec new.
	serverPortInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverPort;
		setText: #serverPort:;
		editText: #serverPort:;
		help: #serverPortHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 1) extent: self guiElementWidth @ self guiElementHeight).
		
	userInputFieldSpec := builder pluggableInputFieldSpec new.
	userInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #username;
		setText: #username:;
		editText: #username:;
		help: #usernameHelpText;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 2) extent: self guiElementWidth @ self guiElementHeight).
		
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
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 3) extent: self guiElementWidth @ self guiElementHeight).
	
	loginButtonSpec := builder pluggableButtonSpec new.
	loginButtonSpec
		model: self;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 4.2) extent: self guiElementWidth @ (self guiElementHeight * 1.3));
		label: 'Login';
		action: #login.
			
	windowSpec children addAll: { loginButtonSpec . serverAdressInputFieldSpec . serverPortInputFieldSpec . userInputFieldSpec . passwordInputFieldSpec }.
	
	^ builder build: windowSpec