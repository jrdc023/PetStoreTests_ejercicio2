Feature: PetStore API Tests

  # Test 1: Crear un usuario
  Scenario: Crear un usuario
    Given url 'https://petstore.swagger.io/v2/user'
    And request {"id": 12345, "username": "johndoe2","firstName": "John","lastName": "Doe","email": "john.doe@example.com","password": "password123","phone": "123-456-7890","userStatus": 1}
    When method post
    Then status 200
    And match response.message == '12345'

  # Test 2: Buscar el usuario creado
  Scenario: Buscar el usuario creado
    Given url 'https://petstore.swagger.io/v2/user/johndoe2'
    When method get
    Then status 200
    And match response.username == 'johndoe2'
    And match response.email == 'john.doe@example.com'

  # Test 3: Actualizar el nombre y correo del usuario
  Scenario: Actualizar el nombre y correo del usuario
    Given url 'https://petstore.swagger.io/v2/user/johndoe2'
    And request {"id": 12345,"username": 'johndoe3',"firstName": "John","lastName": "Doe","email": "newemail@example.com","password": "password123","phone": "123-456-7890","userStatus": 1}
    When method put
    Then status 200
    And match response.message == '12345'

  # Test 4: Buscar el usuario actualizado
  Scenario: Buscar el usuario actualizado
    Given url 'https://petstore.swagger.io/v2/user/johndoe3'
    When method get
    Then status 200
    And match response.email == 'newemail@example.com'

  # Test 5: Eliminar el usuario
  Scenario: Eliminar el usuario
    Given url 'https://petstore.swagger.io/v2/user/johndoe3'
    When method delete
    Then status 200
    And match response.message == 'johndoe3'
    #And match response.firstName == 'John'
