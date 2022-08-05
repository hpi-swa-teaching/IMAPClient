toolbuilder
buildOptionPanelButtons: builder
	
	^ {self buildSortByFlagButtonWith: builder.
			self buildSortBySubjectButtonWith: builder.
			self buildSortBySenderButtonWith: builder.
			self buildSortByDateButtonWith: builder.
			self buildSortByUnreadButtonWith: builder}
	