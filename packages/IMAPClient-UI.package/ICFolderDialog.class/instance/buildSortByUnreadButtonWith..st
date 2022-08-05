toolbuilder
buildSortByUnreadButtonWith: builder

	^ self
		buildOptionButtonIn: (0.9 @ 0.0 extent: 0.1 @ 1)
		andLabel: #filterButtonLabelUnread
		andAction: #filterEmailsUnread
		andBuilder: builder