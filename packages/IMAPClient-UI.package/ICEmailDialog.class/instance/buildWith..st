toolbuilder
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		extent: 600 @ 400;
		children: {
			self buildSenderLabel: builder.
			self buildSubject: builder.
			self buildRecipient: builder.
			self buildBody: builder})