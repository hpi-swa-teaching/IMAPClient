toolbuilder
buildOptionButtonIn: aFrame andLabel: aLabel andAction: anAction andBuilder: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: aFrame;
		label: aLabel;
		action: anAction;
		changeLabelWhen: #optionPanelButtonLabelUpdate