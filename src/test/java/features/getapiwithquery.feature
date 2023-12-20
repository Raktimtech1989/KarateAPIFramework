Feature: GE API with query params

Scenario: get api query
* def query = {page:2}

Given url 'https://reqres.in/api/users'
And params query
When method GET
Then status 200
* print response


