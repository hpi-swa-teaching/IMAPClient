baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
		    package: 'JSON' with: [ spec file: 'JSON-ul.35'; repository: 'http://www.squeaksource.com/JSON' ];
		    package: 'Collections' with: [ spec file: 'Collections-ul.796'; repository: 'http://source.squeak.org/trunk' ];
		    package: 'Network' with: [ spec file: 'Network-tpr.226'; repository: 'http://source.squeak.org/trunk' ];
	          package: 'IMAPClient-Core';
		    package: 'IMAPClient-UI';
                package: 'IMAPClient-Tests' with: [ spec requires: #('default' 'libaries') ].
            spec
                group: 'default' with: #('IMAPClient-UI' 'IMAPClient-Core');
                group: 'Tests' with: #('IMAPClient-Tests');
		    group: 'libaries' with: #('JSON' 'Collections' 'Network')
	]