toolbuilder
buildPasswordField: builder

	^ builder pluggableInputFieldSpec new
		model: self;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		getText: #password;
		setText: #loginWithPassword:;
		editText: #password:;
		font: (StrikeFont passwordFontSize: 12);
		help: 'Password';
		frame: (0 @ 0.05 extent: 1 @ 0.4)