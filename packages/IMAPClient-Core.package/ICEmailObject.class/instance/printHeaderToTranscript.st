print
printHeaderToTranscript

	| headerFields |
	headerFields := self header keys.
	headerFields do: [:headerField |
		Transcript show: headerField, ': ', (self header at: headerField); cr].
	Transcript show: '-------------------------------'; cr