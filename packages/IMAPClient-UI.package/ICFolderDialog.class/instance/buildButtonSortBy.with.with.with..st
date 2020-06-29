toolbuilder
buildButtonSortBy: aLabel with: anAction with: aFrame with: builder
	
	^ builder pluggableButtonSpec new
		model: self;
		frame: aFrame;
		label: aLabel;
		action: anAction