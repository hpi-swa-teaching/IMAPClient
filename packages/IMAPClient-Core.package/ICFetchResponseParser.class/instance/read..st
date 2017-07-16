as yet unclassified
read: aChar
	(state = 1)	 ifTrue: [self read1: aChar]  ifFalse: [
	(state = 2)	 ifTrue: [self read2: aChar]  ifFalse: [
	(state = 3)	 ifTrue: [self read3: aChar]  ifFalse: [
	(state = 4)	 ifTrue: [self read4: aChar]  ifFalse: [
	(state = 5)	 ifTrue: [self read5: aChar]  ifFalse: [
	(state = 6)	 ifTrue: [self read6: aChar]  ifFalse: [
	(state = 7)	 ifTrue: [self read7: aChar]  ifFalse: [
	(state = 8)	 ifTrue: [self read8: aChar]  ifFalse: [
	(state = 9)	 ifTrue: [self read9: aChar]  ifFalse: [
	(state = 10) ifTrue: [self read10: aChar] ifFalse: [
	(state = 11) ifTrue: [self read11: aChar] ifFalse: [
			(self throwError)]]]]]]]]]]]