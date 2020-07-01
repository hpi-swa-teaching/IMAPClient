toolbuilder
buildEmailSortPanel: builder
	
	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0.05 extent: 0.8 @ 0.05);
		children: {
			self buildButtonSortBy: 'Flag' with: #sortEmailsByFlag with: (0.0 @ 0.0 extent: 0.25 @ 1) with: builder.
			self buildButtonSortBy: 'Subject' with: #sortEmailsBySubject with: (0.25 @ 0.0 extent: 0.25 @ 1) with: builder.
			self buildButtonSortBy: 'Sender' with: #sortEmailsBySender with: (0.5 @ 0.0 extent: 0.25 @ 1) with: builder.
			self buildButtonSortBy: 'Date' with: #sortEmailsByDate with: (0.75 @ 0.0 extent: 0.25 @ 1) with: builder.}