define ['jquery', 'templates'], ($, templates) ->

  class ExampleView

    render: (element) ->
      $(element).append templates.example({name:'LoDash', css:'pure CSS'})
      $(element).append templates['another-example']({name:'LoDash'})

  ExampleView