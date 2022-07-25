toolbuilder
buildWith: builder

	| window |
	window := builder build: (builder pluggableWindowSpec new
		model: self;
		label: #dialogTitle;
		closeAction: #closeFolderDialog;
		extent: 1200 @ 600;
		children: {
			self buildNavigationPanel: builder.
			self buildEmailTopPanel: builder.
			self buildEmailList: builder.
			self buildEmailOptionPanel: builder}).
	self folderDialogMorph: window.
	
	^ window