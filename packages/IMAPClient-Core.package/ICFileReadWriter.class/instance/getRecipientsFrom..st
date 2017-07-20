read file
getRecipientsFrom: aJsonObject

	| recipients | 
	aJsonObject ifNil: [ ^ nil ].
	
	recipients := OrderedCollection new.
	aJsonObject do: [ :eachRecipient | recipients add: eachRecipient ].
	
	^ recipients