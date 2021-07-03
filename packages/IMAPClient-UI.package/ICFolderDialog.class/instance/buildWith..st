toolbuilder
buildWith: builder

	self initializeSynchTime.
	^ builder build: (builder pluggableWindowSpec new
		model: self;
		label: #dialogTitle;
		closeAction: #closeConnection;
		extent: 1200 @ 600;
		children: {
			self buildNavigationPanel: builder.
			self buildEmailTopPanel: builder.
			self buildEmailList: builder.
			self buildEmailSortPanel: builder})