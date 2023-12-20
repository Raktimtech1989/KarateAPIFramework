Feature:	Gneerate random data using datafaker library

Scenario:	Create simple JSON object - DataFaker

* def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"


* set jsonObjectPayload
	|	path	|value	|
	|id	|	idValue	|
	|name	|fullname	|
	|email	|emailValue	|
	
* print jsonObjectPayload

Scenario:	Create complex JSON object & JSON array - DataFaker

* def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"


* set jsonObjectPayload
	|	path	|value	|
	|id	|	idValue	|
	|name	|fullname	|
	|email	|emailValue	|
	|city.name	|	'kolkata'	|
	|city.zip	|	700024	|
	
* print jsonObjectPayload


Scenario:	Create complex JSON array - DataFaker

* def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"


* set jsonObjectPayload
	|	path	|value	|
	|id	|	idValue	|
	|name	|fullname	|
	|city.zip	|	700024	|
	|address[0].primary.salary	|	1200	|
	|address[0].primary.designation	|	'Manager'	|
	
	

Scenario:	Create complex JSON array nested - DataFaker

* def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"


* set jsonObjectPayload
	|	path	|0	|	1	|
	|id	|	12	|	13	|
	|name	|fullname	|	"virat"	|
		
* print jsonObjectPayload


Scenario:	Create complex JSON array empty - DataFaker

* def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"


* set jsonObjectPayload
	|	path	|0	|	1	|
	|id	|	12	|		|
	|name	|fullname	|	"virat"	|
		
* print jsonObjectPayload


Scenario:	Create complex JSON array null - DataFaker

* def dataFaker = Java.type("net.datafaker.Faker")
* def dataFakerObject = new dataFaker()
* def idValue = dataFakerObject.number().randomNumber()
* def fullname =  dataFakerObject.name().fullName()
* def emailValue = fullname + "@gmail.com"


* set jsonObjectPayload
	|	path	|0	|	1	|
	|id	|	12	|	(null)	|
	|name	|fullname	|	"virat"	|
		
* print jsonObjectPayload


Scenario:	Manipulate existing JSON

* def existingJsonObject = {name: "raktim"}

* set existingJsonObject
	|	path	|value	|	
	|id	|	12	|	
	|name	|'raktim sarkar'	|
		
* print existingJsonObject


Scenario:	Manipulate existing JSON - set with JSON Path

* def existingJsonObject = {name: "raktim"}

* set existingJsonObject.details
	|	path	|value	|	
	|id	|	12	|	
	|name	|'raktim sarkar'	|
		
* print existingJsonObject


Scenario:	Manipulate existing JSON - set with JSON file

* def existingJsonObject = read('file:src/test/resources/payloads/jsonpayload.json')

* set existingJsonObject.details
	|	path	|value	|	
	|id	|	12	|	
	|name	|'raktim sarkar'	|
		
* print existingJsonObject