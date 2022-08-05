toolbuilder
buildSortByFlagButtonWith: builder

	^ self
		buildOptionButtonIn: (0.0 @ 0.0 extent: 0.225 @ 1)
		andLabel: #sortButtonLabelFlag
		andAction: #sortEmailsByFlag
		andBuilder: builder