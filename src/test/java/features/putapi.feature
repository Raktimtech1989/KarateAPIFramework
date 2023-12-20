Feature:	Update API using PUT http

Background:	
  * url 'https://reqres.in/'
  * def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"
* print fullname

* def requestPayload = 
 """
  	{
    "job" : "zion resident"
    }

"""

* set requestPayload.name = fullname
* print requestPayload

  Scenario:	Update a user with the given data 

  Given	path 'api/users/2'
  And request requestPayload
  When method PUT
  Then status 200
  * print response 
  And match response.name == '#present'
  And match response.name == fullname
  

  