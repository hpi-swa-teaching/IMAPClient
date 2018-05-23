folder selection
emailsOfSelectedFolder

	self selectedFolder ifNil: [ ^ OrderedCollection new ].
	"^ (OrderedCollection newFrom: (self selectedFolder emails)) addLast: (ICLoadOlderMail instanceFor: self selectedFolder)"
	(self selectedFolder emails last == (ICLoadOlderMail instanceFor: self))
		ifFalse: [self selectedFolder emails add: (ICLoadOlderMail instanceFor: self)].
	^ self selectedFolder emails