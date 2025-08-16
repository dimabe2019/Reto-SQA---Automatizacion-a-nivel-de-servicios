Feature: Delete User
  As a test analyst, I want to delete a user to validate its correct operation

  Background:
    * url api.baseUrl
    * def localHeader = read('../../jsonbase/headers/create_user_header.json')
    * def responseCreate = call read('../../karate/crearUsuario/create_user.feature@CreateUserSuccessfully')
    * def numeroId = responseCreate.response.id

    @DeteleSuccessfully
    Scenario: Delete user successfully
      Given path path.listarUsuario + '/' + numeroId
      And headers localHeader
      When method DELETE
      Then status 204

      @DeleteUsuarioSinHeader
      Scenario: Try to delete user without a header
        Given path path.listarUsuario + '/' + numeroId
        When method DELETE
        Then status 401
        And match response.error == "Missing API key"
