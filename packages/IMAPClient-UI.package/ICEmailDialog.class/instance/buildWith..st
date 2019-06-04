toolbuilder
buildWith: builder

	| window windowSpec senderLabelSpec subjectSpec bodySpec recipientSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		extent: 600 @ 400.
		
	senderLabelSpec := builder pluggableInputFieldSpec new.
	senderLabelSpec
		model: self;
		color: #checkBoxColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #sender;
		frame: (0 @ 0 extent: 1 @ 0.0666).
	
	subjectSpec := builder pluggableInputFieldSpec new.
	subjectSpec
		model: self;
		color: #checkBoxColor;
		readOnly: true;
		font: (Preferences standardDefaultTextFont emphasized: 1);
		indicateUnacceptedChanges: false;
		getText: #subject;
		frame: (0 @ 0.0666 extent: 1 @ 0.0666).
		
	recipientSpec := builder pluggableInputFieldSpec new.
	recipientSpec
		model: self;
		color: #checkBoxColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #recipients;
		frame: (0 @ 0.1333 extent: 1 @ 0.0666).
		
	bodySpec := builder pluggableTextSpec new.
	bodySpec
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #body;
		frame: (0 @ 0.2 extent: 1 @ 0.8).

	windowSpec children addAll: {senderLabelSpec . subjectSpec . recipientSpec . bodySpec}.
	
	window := builder build: windowSpec.
	
	self changed: #checkBoxColor.
	
	^ window