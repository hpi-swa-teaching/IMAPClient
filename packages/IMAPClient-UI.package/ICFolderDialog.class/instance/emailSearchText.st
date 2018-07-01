toolbuilder
emailSearchText

	self filterString isEmpty
		ifTrue: [^ 'Suche ...']
		ifFalse: [^ self filterString]