toolbuilder
buildEmailTopPanel: builder

	"This is needed, so the resize handles appear on the load older emails button"

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0 extent: 0.8 @ 0.05);
		children: {
			self buildEmailSearch: builder.
			self buildLoadOlderEmailsButton: builder}