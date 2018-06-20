as yet unclassified
buildWith: builder
	
	| window windowSpec passwordField button |

	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: (self data at: 'name');
		extent: 200 @ 100;
		children: OrderedCollection new.
		
	passwordField := builder pluggableInputFieldSpec new.
	passwordField
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #password;
		setText: #password:;
		editText: #password:;
		font: (StrikeFont passwordFontSize: 12);
		help: 'Password';
		frame: (0 @ 0.05 extent: 1 @ 0.4).
		
	button := builder pluggableButtonSpec new.
	button
		model: self;
		frame: (0 @ 0.5 extent: 1 @ 0.4);
		label: 'login';
		action: #login.
			
	windowSpec children addAll: { passwordField . button}.

	window := builder build: windowSpec.
	self window: window.
	^ window