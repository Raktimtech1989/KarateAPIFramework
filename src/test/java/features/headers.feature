Feature:	GET API header Feature

Scenario: get user header details
Given header Content-Type = 'application/json; charset=utf-8'

And url baseUrl
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse


Scenario: get user header details part2
* def request_headers = {Content-Type: 'application/json; charset=utf-8'}
Given headers request_headers
* print baseUrl 
When url baseUrl
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse


Scenario: get request heade with configure keyword
* configure headers = {Content-Type: 'application/json; charset=utf-8' , Connection: 'keep-alive'}

Given url baseUrl
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse