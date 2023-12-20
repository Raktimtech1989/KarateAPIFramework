Feature:	Create API using POST http - random email concept

Background:	
  * url 'https://gorest.co.in'
  * def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"
* def finalEmail = emailValue.replaceAll("\\s" , "") 
* print finalEmail

* def requestPayload = 
 """
  	{
    "gender" : "male" ,
    "status" : "active"
    }
    
"""

  * requestPayload.name = fullname
  * requestPayload.email = finalEmail
  * print requestPayload


  Scenario:	Create a user with the given data 


  
  Given	path 'public/v2/users'
  And request requestPayload
  And header Authorization = 'Bearer ' + tokenID
  When method POST
  Then status 201
  And match response.id == '#present'
  
