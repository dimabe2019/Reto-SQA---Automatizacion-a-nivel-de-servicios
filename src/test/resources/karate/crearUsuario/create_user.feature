Feature: Create user
  As a test analyst, I want to create a user to validate if the service
  meets the specifications

  Background:
    * url api.baseUrl
    * path path.listarUsuario
    * def localHeader = read('../../jsonbase/headers/create_user_header.json')
    * def jsonRequest = read('../../jsonbase/request/create_user_body.json')
    * def jsonRequest2 = read('../../jsonbase/request/create_user_body2.json')
    * def jsonResponse = read('../../jsonbase/response/response_fail1.json')
    * def ruta = '../../jsonbase/response/create_response_successfull.json'

    @CreateUserSuccessfully
    Scenario: Create User successfully
      Given headers localHeader
      And request jsonRequest
      When method POST
      And retry until responseStatus != 400
      Then status 201
      #* karate.set('create_response_successfull.json',ruta,response)
      #* karate.write(response, 'resources/jsonbase/response/create_response_successfull.json')
      And match response.name == jsonRequest.name
      And match response.job == jsonRequest.job
      And match response.id == '#present'


      @DataEspacialName
      Scenario: I entered special characters in the name field
        Given headers localHeader
        And request jsonRequest2
        When method POST
        Then status 201
        And match response.name == jsonRequest2.name

        @HeadersIncompleto
        Scenario: Create user without header in the request
          Given request jsonRequest
          When method POST
          Then status 401
          And match response.error == jsonResponse.error

