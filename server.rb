require 'socket' # Provides TCPServer and TCPSocket classes

server = TCPServer.new('localhost', 8000)

loop do
  socket = server.accept

  request = socket.gets

  STDERR.puts request

  response = "Hello World Again!\n"

  socket.print response

  socket.close
end
