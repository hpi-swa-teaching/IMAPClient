toolbuilder
buildButton: aFrame with: aName with: aLabel with: anAction with: builder
	
	^ builder pluggableButtonSpec new
		name: aName;
		model: self;
		frame: aFrame;
		label: aLabel;
		action: anAction;
		changeLabelWhen: #addressBook