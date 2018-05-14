baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
				package: 'JSON' with: 
					[ spec file: 'JSON-ul.35';	
       					repository: 'http://www.squeaksource.com/JSON' ];
                package: 'IMAPClient-Core';
		    package: 'IMAPClient-UI';
                package: 'IMAPClient-Tests' with: [ spec requires: #('default' 'libaries') ].
            spec
                group: 'default' with: #('IMAPClient-Core' 'IMAPClient-UI');
                group: 'Tests' with: #('IMAPClient-Tests');
				group: 'libaries' with: #('JSON')
			]