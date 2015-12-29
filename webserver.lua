print("STARTING UP")
wifi.setmode(wifi.STATION)
wifi.sta.config("Hacklab-Guests","")

led1 = 0
gpio.mode(led1, gpio.OUTPUT)

srv=net.createServer(net.TCP)
srv:listen(80,function(conn)
    conn:on("receive", function(client,request)
        local buf = "";
        local _, _, method, path, vars = string.find(request, "([A-Z]+) (.+)?(.+) HTTP");
        if(method == nil)then
            _, _, method, path = string.find(request, "([A-Z]+) (.+) HTTP");
        end
        local _GET = {}
        if (vars ~= nil)then
            for k, v in string.gmatch(vars, "(%w+)=([^&]+)&*") do
                _GET[k] = v
            end
        end
        buf = buf.."<h1>ESP8266 Web Server</h1>";
        buf = buf.."<p>Blue NodeMCU LED <a href=\"?set1=on\"><button>ON</button></a>&nbsp;<a href=\"?set1=off\"><button>OFF</button></a></p>";
        local _on,_off = "",""
        if(_GET.set1 == "on") then gpio.write(led1, gpio.LOW); end
        if(_GET.set1 == "off") then gpio.write(led1, gpio.HIGH); end

		WebResponse(client, buf);
        collectgarbage();
    end)
end)

function WebResponse(client, buf)
	local hd = "HTTP/1.1 200 OK\r\n"
	hd=hd.."Server: AvESP 0.1\r\n"
	hd=hd.."Content-Length: "..string.len(buf).."\r\n"
	hd=hd.."Content-Type: text/html\r\n"
	hd=hd.."\r\n"
	client:send(hd..buf)
	client:close()
end
