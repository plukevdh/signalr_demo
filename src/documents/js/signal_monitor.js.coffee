infoEl = $('#stati')

$.connection.hub.url = "https://nuget-rai.bfgdev.com/api/signalr/hubs"

statusHub = $.connection.status
statusHub.client.updateStatus = (data) ->
  console.log(data)
  infoEl.append("<div class='update'>Status: #{data.synchronizationState} Total: #{data.totalPackages}</div>")

$.connection.hub.start()
  .done -> console.log('Connected to Klondike')
  .fail -> console.log('Could not Connect!')
