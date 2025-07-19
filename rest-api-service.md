Expose class rest service :

define class - global , method - global static, and annotation 

@RestResource(urlMapping='/Account/*')
global with sharing class restresource {

@HttpGet
global static Account getRecord(){
	// Add code
}
}

https://yourInstance.salesforce.com/services/apexrest/Account/*


other methods:

@HttpGet
@HttpPost
@HttpDelete
@HttpPut - upsert
@HttpPatch - update


Expose class as SOAP service:

global with sharing class SOAPService {
	webservice static Account getRecord(String id)
{
	// add code
}
}
