toolbuilder
buildWith: builder

	| window windowSpec emailButtonSpec addAccountButtonSpec userListSpec folderTreeSpec emailListSpec emailSearchSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		closeAction: #closeConnection;
		extent: 1200 @ 600.
		
	userListSpec := self buildUserList: builder.
	emailButtonSpec :=self buildEmailButton: builder.
	addAccountButtonSpec := self buildAddAccountButton: builder.
	folderTreeSpec := self buildFolderTree: builder.
	emailSearchSpec := self buildEmailSearch: builder.
	emailListSpec := self buildEmailList: builder.
	
	windowSpec children 
		addAll: {emailButtonSpec . addAccountButtonSpec . userListSpec . folderTreeSpec . emailListSpec . emailSearchSpec}.
	
	window := builder build: windowSpec.
	
	^ window