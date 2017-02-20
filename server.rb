require 'socket' # Provides TCPServer and TCPSocket classes

if ARGV.empty?
        port = 8080
else
        port = ARGV[0]
end

server = TCPServer.new(port)

loop do
  socket = server.accept

  request = socket.gets

  STDERR.puts request

  response = "Hello World!\n"

  socket.print response

  socket.close
end
