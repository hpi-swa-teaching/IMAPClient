toolbuilder
buildWith: builder

	| windowSpec senderLabelSpec subjectSpec bodySpec recipientSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self dialogTitle;
		children: OrderedCollection new;
		extent: 600 @ 400.
		
	senderLabelSpec := builder pluggableInputFieldSpec new.
	senderLabelSpec
		model: self;
		color: #getColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #getSender;
		frame: (0 @ 0 extent: 1 @ 0.0666).
	
	subjectSpec := builder pluggableInputFieldSpec new.
	subjectSpec
		model: self;
		color: #getColor;
		readOnly: true;
		font: (Preferences standardDefaultTextFont emphasized: 1);
		indicateUnacceptedChanges: false;
		getText: #getSubject;
		frame: (0 @ 0.0666 extent: 1 @ 0.0666).
		
	recipientSpec := builder pluggableInputFieldSpec new.
	recipientSpec
		model: self;
		color: #getColor;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #getRecipients;
		frame: (0 @ 0.1333 extent: 1 @ 0.0666).
		
	bodySpec := builder pluggableTextSpec new.
	bodySpec
		model: self;
		readOnly: true;
		indicateUnacceptedChanges: false;
		getText: #getBody;
		frame: (0 @ 0.2 extent: 1 @ 0.8).

	windowSpec children addAll: { senderLabelSpec . subjectSpec . recipientSpec . bodySpec }.
	
	^ builder build: windowSpec
	