toolbuilder
buildEmailTopPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0 extent: 0.8 @ 0.05);
		children: {
			self buildEmailSearch: builder.
			self buildSearchResults: builder.
			self buildLoadOlderEmailsButton: builder}