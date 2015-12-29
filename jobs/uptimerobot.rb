require 'uptimerobot'

apiKey = 'u00000-00000000000000000'

SCHEDULER.every '5m', :first_in => 0 do |job|
  client = UptimeRobot::Client.new(apiKey: apiKey)

  raw_monitors = client.getMonitors['monitors']['monitor']

  items = raw_monitors.map { |monitor| 
    { 
      label: monitor['friendlyname'], 
      value: if monitor['status'] == '0' then 'Paused' elsif monitor['status'] == '2' then 'Up' elsif monitor['status'] == '9' then 'Down' else 'Unknown' end      
    }

  }
  send_event('uptimerobot', { items: items } )

end