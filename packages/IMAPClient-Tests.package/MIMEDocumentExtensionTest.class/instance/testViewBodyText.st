testing
testViewBodyText
	
	self shouldnt: [(MIMEDocument new content: 'hello world') viewBody] raise: Exception.