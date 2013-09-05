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


require [ 'pkgTest' ], (pkgTest)->
    console.log('pkgTest: ' + pkgTest)

require [ 'mapTest' ], (mapTest)->
    console.log('mapTest: ' + mapTest)