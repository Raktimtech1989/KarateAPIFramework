Feature: json feature testing

Scenario:	json reader parser 

* def jsonObject =
"""
[
	{
		"name" : "Raktim" ,
		"city" : "kolkata" ,
		 "age" : 25
	} ,
	
	{
		"name" : "Virat" ,
		"city" : "Delhi" ,
		 "age" : 35
	}
	
]
"""
* print jsonObject
*  print jsonObject[0].name


Scenario: Complex JSOn reader

* def jsonObject =

"""
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}

"""
* print jsonObject
* print jsonObject.menu.id
* print jsonObject.menu.popup.menuitem[0].value


