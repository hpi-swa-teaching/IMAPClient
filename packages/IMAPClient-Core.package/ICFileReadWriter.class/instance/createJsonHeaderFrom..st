write file
createJsonHeaderFrom: aDictionary

	|jsonFile|
	aDictionary ifNil: [ ^ nil ].
	Transcript cr; cr.
	Transcript show: JsonObject ; cr .
	Transcript show:( JsonObject newFrom: {
		#date ->  (aDictionary at: #date).
		#from -> (aDictionary at: #from).
		#subject -> (aDictionary at: #subject).
		#to -> (aDictionary at: #to) }).
	
	jsonFile := JsonObject newFrom: {
		#date ->  (aDictionary at: #date).
		#from -> (aDictionary at: #from).
		#subject -> (aDictionary at: #subject).
		#to -> (aDictionary at: #to) }.
		
	^jsonFile    