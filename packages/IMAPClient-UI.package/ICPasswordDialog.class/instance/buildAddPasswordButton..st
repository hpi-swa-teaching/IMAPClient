toolbuilder
buildAddPasswordButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0 @ 0.5 extent: 1 @ 0.4);
		label: 'login';
		action: #login