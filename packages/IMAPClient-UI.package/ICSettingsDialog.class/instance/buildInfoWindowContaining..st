toolbuilder
buildInfoWindowContaining: aSymbol

	| builder morph |
	builder := ToolBuilder default.
	morph := builder pluggableDialogSpec new
		model: self;
		label: 'Info Window';
		message: aSymbol;
		autoCancel: true;
		buttons: {self buildInfoAcceptButton: builder}.
	
	(builder build: morph) openInWorld