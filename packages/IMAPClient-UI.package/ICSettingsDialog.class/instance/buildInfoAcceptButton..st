toolbuilder
buildInfoAcceptButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		label: 'ok';
		action: #accept