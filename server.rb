require 'socket' # Provides TCPServer and TCPSocket classes

server = TCPServer.new(8080)

loop do
  socket = server.accept

  request = socket.gets

  STDERR.puts request

  response = "Hello World!\n"

  socket.print response

  socket.close
end
