validation
isValid

	| valid |
	
	valid := true.
	
	(self username ~= self class initialUsername)
		ifFalse: [
			UserDialogBoxMorph inform: 'Please input a username' title: ''.
			valid := false].
	
	(self password ~= self class initialPassword)
		ifFalse: [
			UserDialogBoxMorph inform: 'Please input a password' title: ''.
			valid := false].
		
	^ valid