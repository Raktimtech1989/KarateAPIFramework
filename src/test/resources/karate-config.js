function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 

var config = { 
env: env, 
myVarName: 'hello karate', 
	baseUrl: 'https://reqres.in/api/users?page=2',
	tokenID: '9114ef137e7ad964937982da2ee6b7f27805a47d6c8a9f2e4c805c99997ce840'
}

if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 
} else if (env == 'e2e') { 
// customize 
} 
return config; 
}