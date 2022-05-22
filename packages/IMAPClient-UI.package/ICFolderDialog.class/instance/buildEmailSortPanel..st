toolbuilder
buildEmailSortPanel: builder

	
	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0.05 extent: 0.8 @ 0.05);
		children:{
			self buildButtonSortBy: (0.0 @ 0.0 extent: 0.25 @ 1) with: #sortButtonLabelFlag with: #sortEmailsByFlag with: builder with: #sortButtonLabelFlagUpdate.
			self buildButtonSortBy: (0.25 @ 0.0 extent: 0.25 @ 1) with: #sortButtonLabelSubject with: #sortEmailsBySubject with: builder with: #sortButtonLabelSubjectUpdate.
			self buildButtonSortBy: (0.5 @ 0.0 extent: 0.25 @ 1) with: #sortButtonLabelSender with: #sortEmailsBySender with: builder with: #sortButtonLabelSenderUpdate.
			self buildButtonSortBy: (0.75 @ 0.0 extent: 0.25 @ 1) with: #sortButtonLabelDate with: #sortEmailsByDate with: builder with: #sortButtonLabelDateUpdate.}.