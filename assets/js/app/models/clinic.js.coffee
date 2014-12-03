App.factory "Clinic", [ "$resource", ($resource) ->
  Clinic = $resource "http://172.16.8.83:3001/:id",
                      {id: "@id"}
                      {update: {method: "PUT"}}
                      {headers:
                        {
                         'common': 'api-ajax'
                         'Authorization': 'test'
                        }
                      }
  return Clinic
]