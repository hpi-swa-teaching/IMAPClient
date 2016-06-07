as yet unclassified
buildWith: builder

	| windowSpec  serverAdressInputFieldSpec serverPortInputFieldSpec userInputFieldSpec passwordInputFieldSpec loginButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'IMAP Login';
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
		frame: (self guiElementXOffset @ self guiElementYOffset extent: self guiElementWidth @ self guiElementHeight).
	
	serverPortInputFieldSpec := builder pluggableInputFieldSpec new.
	serverPortInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #serverPort;
		setText: #serverPort:;
		editText: #serverPort:;
		frame: (self guiElementXOffset @ (self guiElementYOffset + 0.13) extent: self guiElementWidth @ self guiElementHeight).
		
	userInputFieldSpec := builder pluggableInputFieldSpec new.
	userInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #username;
		setText: #username:;
		editText: #username:;
		frame: (self guiElementXOffset @ (self guiElementYOffset + 0.33) extent: self guiElementWidth @ self guiElementHeight).
		
	passwordInputFieldSpec := builder pluggableInputFieldSpec new.
	passwordInputFieldSpec
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #password;
		setText: #password:;
		editText: #password:;
		frame: (self guiElementXOffset @ (self guiElementYOffset + 0.46) extent: self guiElementWidth @ self guiElementHeight).
	
	loginButtonSpec := builder pluggableButtonSpec new.
	loginButtonSpec
		model: self;
		frame: (self guiElementXOffset @ (self guiElementYOffset + 0.7) extent: self guiElementWidth @ (self guiElementHeight * 1.3));
		label: 'Login';
		action: #login.
			
	windowSpec children addAll: { loginButtonSpec . serverAdressInputFieldSpec . serverPortInputFieldSpec . userInputFieldSpec . passwordInputFieldSpec }.
	
	^ builder build: windowSpec