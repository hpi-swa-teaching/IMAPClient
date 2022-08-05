toolbuilder
buildAddSortByNameButton: builder

	^ self
				buildButtonWithFrame: (0.2 @ 0 extent: 0.4 @ 1)
				andLabel: #sortByNameButtonLabel
				andAction: #sortByName
				andBuilder: builder.