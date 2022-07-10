toolbuilder
buildNavigationPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0 @ 0 extent: 0.25 @ 1);
		children: {
			self buildUserList: builder.
			self buildSettingsList: builder.
			"self buildSaveButton: builder."}