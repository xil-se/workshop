function on_connect()
  print("Connected to wifi as: " .. wifi.sta.getip())
  ssid,password,bssid_set,bssid = wifi.sta.getconfig()
  print(
      "\nCurrent Station configuration:"
    .."\nSSID : "..ssid
    .."\nPassword  : "..password
    .."\nBSSID_set  : "..bssid_set
    .."\nBSSID: "..bssid.."\n"
  )
end

enduser_setup.start(on_connect)
