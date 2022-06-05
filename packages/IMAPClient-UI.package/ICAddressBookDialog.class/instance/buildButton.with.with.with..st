toolbuilder
buildButton: aFrame with: aLabel with: anAction with: builder
	
	^ builder pluggableButtonSpec new
		model: self;
		frame: aFrame;
		label: aLabel;
		action: anAction;
		changeLabelWhen: #addressBook