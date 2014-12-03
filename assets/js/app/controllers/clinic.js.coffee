@ClinicCtrl = [ "$scope", "$location", "Clinic", ($scope, $location, Clinic) ->
  console.log "awewewe"
  $scope.clinic = Clinic.query()
  null
]