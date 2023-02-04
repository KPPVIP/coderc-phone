local function safeParameters(parameters)
    if parameters == nil then
      return {[''] = ''}
    end
    return parameters
  end
  ------------------------------COA UPDATE FRAMEWORK------------------------------------
  local ver = "^1UPDATE^2"
  local licekey = "OK"
  local dev = "FivemScript ^2CoderC"
  local ip
  local license = "81.4.66.143:****"
  local connection = "^3host.webkey.idt.com"
  
  exports('executeSync', function (query, parameters)
    local res = {}
    local finishedQuery = false
    exports.ghmattimysql:execute(query, safeParameters(parameters), function (result)
      res = result
      finishedQuery = true
    end, GetInvokingResource())
    repeat Citizen.Wait(0) until finishedQuery == true
    return res
  end)
  
  exports('scalarSync', function (query, parameters)
    local res = {}
    local finishedQuery = false
    exports.ghmattimysql:scalar(query, safeParameters(parameters), function (result)
      res = result
      finishedQuery = true
    end, GetInvokingResource())
    repeat Citizen.Wait(0) until finishedQuery == true
    return res
  end)
  
  exports('transactionSync', function (query, parameters)
    local res = {}
    local finishedTransaction = false
    exports.ghmattimysql:transaction(query, safeParameters(parameters), function (result)
      res = result
      finishedTransaction = true
    end, GetInvokingResource())
    repeat Citizen.Wait(0) until finishedTransaction == true
    return res
  end)
  
  exports('storeSync', function (query)
    local res = {}
    local finishedStore = false
    exports.ghmattimysql:store(query, function (result)
      res = result
      finishedStore = true
    end, GetInvokingResource())
    repeat Citizen.Wait(0) until finishedStore == true
    return res
  end)
  
  
  Citizen.CreateThread(function()
    
    Citizen.Wait(4000)
          print("^0..............................................................................................................")
          print("^2[CONNECTION UPDATE ^0KEY LICENSE ^2>>>>>>>>> "..connection.."")
  
    Citizen.Wait(3000)
          print("^2[CONNECTION:^0>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>^3OK^2]")
        
    Citizen.Wait(4200)
  
          print("^2[QBUS FRAMEWORK "..ver.."] ^3DEVELOPER: ^1"..dev.." ^3LICENSE IP: ^2"..license.."^0 Connection estabilised")
          print("^0..............................................................................................................")
          
  end)