require 'rack'
run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["<div class='bop'><h5>I'm a micro service: #{env['SERVER_NAME']}, identifier: #{env['TYPE']}</h5></div>"]]}
