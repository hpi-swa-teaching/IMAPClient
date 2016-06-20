initialization
fetchHeaderResponse

	^ OrderedCollection newFrom: {
		'* 42 FETCH (BODY[HEADER.FIELDS ("from" "to" "subject" "date")] {195}'.
		'To: <swt@greensward.de>'.
		'From: =?UTF-8?Q?Alexander_L=c3=b6ser?='.
		'	<alexander.loeser@student.hpi.uni-potsdam.de>'.
		'Subject: Test Mail'.
		'Date: Fri, 10 Jun 2016 12:51:42 +0200'.
		''.
		')'.
		'. OK FETCH completed.' }