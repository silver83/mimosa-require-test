require.config
    packages: [
        name: "package1",
        location: "packages/package1",
        main: "packageMain"
    ]
    paths:
        'path1': 'paths/path1'
    map:
        '*':
            'path2': 'path1'

result = $('#result')

require [ 'pkgTest' ], (pkgTest)->
    result.append('pkgTest: ' + pkgTest + '<br/>')

require [ 'mapTest' ], (mapTest)->
    result.append('mapTest: ' + mapTest + '<br/>')