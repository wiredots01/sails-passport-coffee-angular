App.config [ "$routeProvider", "$locationProvider", "$httpProvider", ($routeProvider, $locationProvider, $httpProvider) ->
  $locationProvider.html5Mode(true)

  $httpProvider.defaults.transformRequest.push (data, headersGetter) ->
    utf8_data = data
    unless angular.isUndefined(data)
      d = angular.fromJson(data)
      d["utf8"] = "&#9731;"
      utf8_data = angular.toJson(d)
      wiredots = 'test'
    utf8_data

  # delete $httpProvider.defaults.headers.common['X-Requested-With']

  $routeProvider
  .when "/",
    template: JST["assets/templates/assets/js/app/views/clinic/index.html"]()
    controller: "ClinicCtrl"

  .when "/doctors",
    template: JST["assets/templates/assets/js/app/views/doctors/index.html"]()
    controller: "DoctorsCtrl"



  .otherwise redirectTo: '/'

]

.run ["$http", ($http) ->
  $http.defaults.headers.common["api-ajax"] = true

  return
]
