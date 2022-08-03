toolbuilder
buildButtonWithFrame: aFrame andName: aString andLabel: aLabel andAction: aSymbol andBuilder: builder

	^ builder pluggableButtonSpec new
		name: aString;
		model: self;
		frame: aFrame;
		label: aLabel;
		action: aSymbol;
		changeLabelWhen: #addressBook