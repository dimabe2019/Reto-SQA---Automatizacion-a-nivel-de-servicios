Feature: List users
  As a test analyst, I want to see the user list to validate this information

  Background:
    * url api.baseUrl
    * path path.listarUsuario
    * def pag = test.pagina
    * def pagIncorrecto = test.paginaInc
    * def msgError = test.mensajeError
    * def localHeader = read('../../jsonbase/headers/create_user_header.json')
    * def emailRegex = '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$'

    @ListUsersSuccessfully
    Scenario: List users successfully
      Given param page = pag
      And retry until responseStatus != 401
      When method GET
      Then status 200
      And match response.page == pag

      @EnterIncorrectParam
      Scenario: Enter an incorrect value in the parameter
        Given param page = pagIncorrecto
        When method GET
        Then status 401
        And match response.error == msgError

        @ValidarFormatEmail
        Scenario: Validate if the email format is correct
          Given param page = pag
          And headers localHeader
          When method GET
          Then status 200
          And match each response.data[*].email == '#regex ' + emailRegex

