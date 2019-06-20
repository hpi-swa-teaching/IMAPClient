toolbuilder
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		closeAction: #closeConnection;
		extent: 1200 @ 600;
		children: {
			self buildUserList: builder.
			self buildEmailButton: builder.
			self buildAddAccountButton: builder.
			self buildFolderTree: builder.
			self buildEmailSearch: builder.
			self buildEmailList: builder})