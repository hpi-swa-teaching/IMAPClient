toolbuilder
buildButtonSortBy: aFrame with: aLabel with: anAction with: builder with: aChangeLabel
	
	^ builder pluggableButtonSpec new
		model: self;
		frame: aFrame;
		label: aLabel;
		action: anAction;
		changeLabelWhen: aChangeLabel