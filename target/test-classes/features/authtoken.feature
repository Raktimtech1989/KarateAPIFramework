Feature: 	Token header validation


Scenario: get tokenID details

* print tokenID
* def query = {x-api-key: "PMAK-6577ee41c1e93c3774ec6ceb-9f984e2eda978f2b8e101f228ce84f35c6"}

Given url 'https://api.getpostman.com/workspaces'
And params query
When method GET
* print response
Then status 401
* def resObject = response
* print resObject
* print resObject.error.message
* match resObject.error.message == 'Invalid API Key. Every request requires a valid API Key to be sent.'

