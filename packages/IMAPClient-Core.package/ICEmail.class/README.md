An ICEmail is an object resembling an email residing on a remote server. This is automatically created when calling ICFolder>>fetchHeaders.

Instance Variables
	body:		The body of the ICEmail. ICEmail>>retrieveBody needs to be called to fill the body.
	folder:		The ICFolder this ICEmail resides in.
	header:		The header of the ICEmail. This gets parsed into the instance variables date, from, to and subject.
	date:		https://tools.ietf.org/html/rfc2822#page-14, date represents the local time and the zone is the timezone information.
			