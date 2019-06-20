toolbuilder
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		closeAction: #closeConnection;
		extent: 1200 @ 600;
		children: {
			self buildNavigationPanel: builder.
			self buildEmailSearch: builder.
			self buildEmailList: builder})