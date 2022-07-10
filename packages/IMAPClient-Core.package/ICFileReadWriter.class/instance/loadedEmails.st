accessing
loadedEmails

	^ loadedEmails ifNil: [ loadedEmails:= OrderedCollection new]