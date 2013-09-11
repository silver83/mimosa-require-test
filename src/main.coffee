require.config
    packages: [
        name: "package1",
        location: "packages/package1",
        main: "packageMain"
    ]
    paths:
        'path1': 'paths/path1'
        '$': 'vendor/jquery'
    map:
        '*':
            'path3': 'path1'
    shim:
        'vendor/jquery':
            exports: '$'

require [ '$' ], ->
    result = $('#result')

    require [ 'pkgTest' ], (pkgTest)->
        result.append('pkgTest: ' + pkgTest + '<br/>')

    require [ 'mapTest' ], (mapTest)->
        result.append('mapTest: ' + mapTest + '<br/>')

    require [ 'package1/pkgPrefixDep' ], (pkgPrefixDep)->
        result.append('pkgPrefixDepTest: ' + pkgPrefixDep + '<br/>')