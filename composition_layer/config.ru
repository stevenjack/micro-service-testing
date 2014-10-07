require 'rack'

proc = Proc.new do |env|

  data = <<-eos
  <html>
    <body>
      <head>
        <title>Page composition</title>
      </head>
      <style type="text/css">
        .bop {
          width: 45%;
          float: left;
          margin-right: 5%;
        }
      </style>
      <div class="container">
        <esi:include src="http://localhost:9293"/>
        <esi:include src="http://localhost:9294"/>
        <esi:include src="http://localhost:9295"/>
        <esi:include src="http://localhost:9296"/>
      </div>
    </body>
  </html>
  eos

  [
    200, 
    {"Content-Type" => "text/html"}, 
    [data]
  ]

end

run proc
