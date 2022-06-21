toolbuilder
buildEmailOptionPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.2 @ 0.05 extent: 0.8 @ 0.05);
		children: {
			self
				buildOptionButtonIn: (0.0 @ 0.0 extent: 0.225 @ 1)
				with: #sortButtonLabelFlag
				with: #sortEmailsByFlag
				with: builder.
			self
				buildOptionButtonIn: (0.225 @ 0.0 extent: 0.225 @ 1)
				with: #sortButtonLabelSubject
				with: #sortEmailsBySubject
				with: builder.
			self
				buildOptionButtonIn: (0.45 @ 0.0 extent: 0.225 @ 1)
				with: #sortButtonLabelSender
				with: #sortEmailsBySender
				with: builder.
			self
				buildOptionButtonIn: (0.675 @ 0.0 extent: 0.225 @ 1)
				with: #sortButtonLabelDate
				with: #sortEmailsByDate
				with: builder.
			self
				buildOptionButtonIn: (0.9 @ 0.0 extent: 0.1 @ 1)
				with: #filterButtonLabelUnread
				with: #filterEmailsUnread
				with: builder}