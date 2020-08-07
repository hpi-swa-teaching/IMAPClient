helper
changeInputField: currentIndex

	| correctSubmorph text |

	"last element has no successor"
	(self inputCollection size > (currentIndex))
		ifTrue: [
			"find submorph with same symbol as successor"
			correctSubmorph := self inputCollection detect: [:each | 
					(each getTextSelector = (self symbolArray at: (currentIndex + 1)))]. 	
		
		"get text of next input field - to select it"
		text := self perform: (correctSubmorph getTextSelector).
		text ifNotNil:[
			text ifNotEmpty: [
					"select text of morph"
					correctSubmorph textMorph editor selectInterval: (1 to: (text size))]].
		
		correctSubmorph grabKeyboard]