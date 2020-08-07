toolbuilder
buildEmailSortPanel: builder
	
	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0.05 extent: 0.8 @ 0.05);
		children: {
			self buildButtonSortBy: (0.0 @ 0.0 extent: 0.25 @ 1) with: 'Flag' with: #sortEmailsByFlag with: builder.
			self buildButtonSortBy: (0.25 @ 0.0 extent: 0.25 @ 1) with: 'Subject' with: #sortEmailsBySubject with: builder.
			self buildButtonSortBy: (0.5 @ 0.0 extent: 0.25 @ 1) with: 'Sender' with: #sortEmailsBySender with: builder.
			self buildButtonSortBy: (0.75 @ 0.0 extent: 0.25 @ 1) with: 'Date' with: #sortEmailsByDate with: builder.}