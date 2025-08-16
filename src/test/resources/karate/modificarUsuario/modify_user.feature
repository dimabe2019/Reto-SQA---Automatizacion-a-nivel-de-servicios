Feature: Modify User
  As a test analyst, I want to test the user modification
  service to validate its response

  Background:
  * url api.baseUrl
  * def jsonRequest = read('../../jsonbase/request/create_user_body.json')
  * def localHeader = read('../../jsonbase/headers/create_user_header.json')
  * def responseCreate = call read('../../karate/crearUsuario/create_user.feature@CreateUserSuccessfully')
  * def numeroId = responseCreate.response.id


    @ModifySuccessfully
    Scenario: Modify name exitosamente
      * set jsonRequest.name = 'Diego'
      Given path path.listarUsuario + '/' + numeroId
      And request jsonRequest
      And headers localHeader
      When method PUT
      And retry until responseStatus != 400
      Then status 200


  @ModifyJobSuccessfully
  Scenario: Modify Job exitosamente
    * set jsonRequest.job = 'QA Automation'
    Given path path.listarUsuario + '/' + numeroId
    And request jsonRequest
    And headers localHeader
    When method PUT
    And retry until responseStatus != 400
    Then status 200

    @DataIncompletaId
    Scenario: Entering the ID to be modified is incorrect
      * set jsonRequest.job = 'QA Automation'
      Given path path.listarUsuario + numeroId
      And request jsonRequest
      And headers localHeader
      When method PUT
      Then status 404



