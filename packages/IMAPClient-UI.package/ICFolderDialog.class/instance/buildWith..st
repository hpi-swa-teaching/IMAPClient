toolbuilder
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		closeAction: #closeConnection;
		extent: 1200 @ 600;
		children: {
			self buildNavigationPanel: builder.
			self buildEmailTopPanel: builder.
			self buildEmailList: builder.
			self buildEmailSortPanel: builder})