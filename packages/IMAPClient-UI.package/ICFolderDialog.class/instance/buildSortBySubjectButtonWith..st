toolbuilder
buildSortBySubjectButtonWith: builder

	^ self
		buildOptionButtonIn: (0.225 @ 0.0 extent: 0.225 @ 1)
		andLabel: #sortButtonLabelSubject
		andAction: #sortEmailsBySubject
		andBuilder: builder