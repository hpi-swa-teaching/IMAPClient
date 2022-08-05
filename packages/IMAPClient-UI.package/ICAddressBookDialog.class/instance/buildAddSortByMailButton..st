toolbuilder
buildAddSortByMailButton: builder

	^ self buildButtonWithFrame: (0.6 @ 0 extent: 0.4 @ 1)
				andLabel: #sortByMailButtonLabel
				andAction: #sortByMail
				andBuilder: builder