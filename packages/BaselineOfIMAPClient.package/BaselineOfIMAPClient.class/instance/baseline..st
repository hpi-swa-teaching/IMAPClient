baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			spec
				package: 'JSON' with: [ spec file: 'JSON-ul.35'; repository: 'http://www.squeaksource.com/JSON' ];
				baseline: 'Widgets' with: [ spec repository: 'github://hpi-swa/widgets:master/repository'];
				package: 'IMAPClient-Core' with: [ spec requires: #( 'libraries' ) ];
				package: 'IMAPClient-UI';
				package: 'IMAPClient-Protocol';
				package: 'IMAPClient-Tests' with: [ spec requires: #('default')].
			spec
				group: 'default' with: #('IMAPClient-UI' 'IMAPClient-Core' 'IMAPClient-Protocol');
				group: 'Tests' with: #('IMAPClient-Tests');
				group: 'libaries' with: #('JSON' 'Widgets')]
