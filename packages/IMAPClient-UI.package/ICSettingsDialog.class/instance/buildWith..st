toolbuilder
buildWith: builder

	| window |
	window := builder build: (builder pluggableWindowSpec new
		model: self;
		label: #dialogTitle;
		extent: 600 @ 300;
		children: {
			self buildNavigationPanel: builder.
			}).
	self settingsDialogMorph: window.
	
	^ window