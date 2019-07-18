toolbuilder
buildWith: builder
	
	| window |

	window := builder build: (builder pluggableWindowSpec new
		model: self;
		label: (self data at: 'accountName');
		extent: 200 @ 100;
		children: {
			self buildPasswordField: builder.
			self buildAddPasswordButton: builder}).
			
	self window: window.
	^ window