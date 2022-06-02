support
keystroke: keyValue

	^ KeyboardEvent new
		setType: #keystroke
		buttons: 0 "no modifiers"
		position: 0@0
		keyValue: keyValue
		hand: HandMorphForEventTests new
		stamp: Time millisecondClockValue