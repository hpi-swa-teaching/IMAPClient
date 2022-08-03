toolbuilder
buildSortByDateButtonWith: builder

	self buildOptionButtonIn: (0.675 @ 0.0 extent: 0.225 @ 1)
				andLabel: #sortButtonLabelDate
				andAction: #sortEmailsByDate
				andBuilder: builder.
