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

require [ 'path2' ], (path2)->
    console.log(path2 + ' loaded')

require [ 'path1' ], (path1)->
    console.log(path1 + ' loaded')

require [ 'package1' ], (pkg1)->
    console.log(pkg1 + ' loaded')