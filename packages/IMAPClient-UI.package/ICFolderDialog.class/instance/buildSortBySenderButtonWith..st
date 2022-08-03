toolbuilder
buildSortBySenderButtonWith: builder

	self buildOptionButtonIn: (0.45 @ 0.0 extent: 0.225 @ 1)
				andLabel: #sortButtonLabelSender
				andAction: #sortEmailsBySender
				andBuilder: builder.
