initialization
fetchHeadersWithRangeResponse

	^#('* 3 FETCH (BODY[HEADER.FIELDS ("from" "to" "subject" "date")] {179}'.
	'To: <john.doe@example.com>'
	'From: Jan <jan.janssen@example.com>'
	'Subject: lorem ipsum'
	'Date: Fri, 10 Jun 2016 12:51:42 +0200'
	'UID 1'
	')'
	'* 4 FETCH (BODY[HEADER.FIELDS ("from" "to" "subject" "date")] {165}'
	'To: <jan.janssen@example.com>'
	'From: John <john.doe@example.com>'
	'Subject: dolor sit amet'
	'Date: Sun, 12 Jun 2016 12:51:42 +0200'
	'UID 2'
	')'
	'. OK FETCH completed.')