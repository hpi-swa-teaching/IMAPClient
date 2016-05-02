baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'IMAPClient-Core';
                package: 'IMAPClient-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('IMAPClient-Core');
                group: 'Tests' with: #('IMAPClient-Tests') ]
