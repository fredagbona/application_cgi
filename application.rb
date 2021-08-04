require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}
server.mount('/application', WEBrick::HTTPServlet::ERBHandler, 'application.html.erb')

server.mount('/content.cgi', WEBrick::HTTPServlet::CGIHandler, 'content.rb')


server.start