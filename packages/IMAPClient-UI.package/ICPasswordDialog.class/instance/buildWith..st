toolbuilder
buildWith: builder
	
	| newWindow |

	newWindow := builder build: (builder pluggableWindowSpec new
		model: self;
		label: (self accountInfo accountName);
		extent: 200 @ 100;
		children: {
			self buildPasswordField: builder.
			self buildAddPasswordButton: builder}).
			
	self window: newWindow.
	^ newWindow