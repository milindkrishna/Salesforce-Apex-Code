// /services/apexrest/case/{caseid from url}

@RestResource(urlMapping='/case/*')

global with sharing class CaseManagerRestApi {

@HttpGet
    global static Case getCaseId()
    {
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        case result = [select casenumber, subject, status, origin, priority from Case where id=:caseId];
        return result;
    }
    
// /services/apexrest/case/
/* 
 * {

  "sub":"No oppurtunities is displaying",
  "sta":"new",
  "ori":"phone",
  "pri":"high"

}
*/    

@HttpPost
    global static Id createCase(String sub, string sta, string ori, string pri)
    {
        Case thiscase = new Case(subject=sub, status=sta, origin=ori, priority=pri);
        insert thiscase;
        return thiscase.Id;
    }

// /services/apexrest/case/{caseid from url}    

@HttpDelete
    global static void deleteCase()    
    {
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
       Case thiscase = [select id from case where id=:caseId];
        delete thiscase;
    }
    
/* /services/apexrest/case/{if id is present then we can update else insert}
* {

  "id":"500WU00000yCPEiYAO",
  "sub":"No oppurtunities is displaying",
  "sta":"new",
  "ori":"Phone",
  "pri":"Low"

}
 * 
 * 
 * 
*/    

@HttpPut
    global static Id upsertCase(String id, String sub, string sta, string ori, string pri)
        {
        Case thiscase = new Case(Id=id, subject=sub, status=sta, origin=ori, priority=pri);
        upsert thiscase;
        return thiscase.Id;
        }

/*   /services/apexrest/case/{500WU00000yCPEiYAO}
* {

  "status":"working",
  "origin":"Email",
  "priority":"High"

}
 * 
 * 
 * 

*/    

@HttpPatch

    global static Id updateCase()
    {
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
       Case thiscase = [select id from case where id=:caseId];
       Map<String, Object> params = (Map<String, Object>)JSON.deserializeUntyped(request.requestBody.toString()); 
       for(String feildName:params.keySet()) 
       {
           thiscase.put(feildName, params.get(feildName));
       }
        update thiscase;
        return thiscase.Id;
    }
    
}