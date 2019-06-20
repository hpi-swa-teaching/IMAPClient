toolbuilder
buildEmailButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0 @ 0 extent: 0.15 @ 0.05);
		label: 'Update';
		action: #update