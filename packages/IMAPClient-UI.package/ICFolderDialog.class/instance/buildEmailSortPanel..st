toolbuilder
buildEmailSortPanel: builder
	
	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0.05 extent: 0.8 @ 0.05);
		children: {
			self buildButtonSortBy: 'Subject' with: #sortEmailsBySubject with: (0.0 @ 0.0 extent: 0.5 @ 1) with: builder.
			self buildButtonSortBy: 'Date' with: #sortEmailsByDate with: (0.5 @ 0.0 extent: 0.5 @ 1) with: builder.}