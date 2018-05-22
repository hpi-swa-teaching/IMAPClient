toolbuilder
buildWith: builder

	| windowSpec  serverAdressInputFieldSpec serverPortInputFieldSpec userInputFieldSpec passwordInputFieldSpec sslCheckBoxSpec loginButtonSpec window saveCredentialsBoxSpec |
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
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 2.2) extent: self guiElementWidth @ self guiElementHeight).
		
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
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 3.2) extent: self guiElementWidth @ self guiElementHeight).
	
	sslCheckBoxSpec := builder pluggableCheckBoxSpec new.
	sslCheckBoxSpec
		model: self;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 4.4) extent: self guiElementWidth @ self guiElementHeight);
		label: #sslCheckBoxLabel;
		color: #checkBoxColor;
		state: #ssl;
		action: #toggleSSL.
			
		
	saveCredentialsBoxSpec := builder pluggableCheckBoxSpec new.
	saveCredentialsBoxSpec
		model: self;
		frame: ((self guiElementXOffset + 0.4) @ (self guiElementYOffsetOf: 4.4) extent: self guiElementWidth @ self guiElementHeight);
		label: #credentialsCheckBoxLabel;
		color: #checkBoxColor;
		state: #credentials;
		action: #toggleCredentials.	
		
		
	loginButtonSpec := builder pluggableButtonSpec new.
	loginButtonSpec
		model: self;
		frame: (self guiElementXOffset @ (self guiElementYOffsetOf: 5.5) extent: self guiElementWidth @ (self guiElementHeight * 1.3));
		label: 'Login';
		action: #login.
			
	windowSpec children addAll: { loginButtonSpec . serverAdressInputFieldSpec . serverPortInputFieldSpec . userInputFieldSpec . passwordInputFieldSpec . sslCheckBoxSpec . saveCredentialsBoxSpec }.

	window := builder build: windowSpec.
	
	self inputCollection: OrderedCollection new.
	
	"hack to make the checkbox background transparent"
	"can be removed once PluggableCheckBoxMorph starts using its color selector instead of default mint green (bug in squeak)"
	window submorphsDo: [ :m |
		(m class == PluggableTextMorphPlus)
			ifTrue: [self inputCollection add: m].
		(m class == PluggableCheckBoxMorph)
			ifTrue: [m color: Color transparent] ].
	self halt.
	^ window