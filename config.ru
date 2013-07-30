run Proc.new { |env|
  puts env

  body = 'Hello, World!'

  [200, { 'Content-Type' => 'text/plain', 'Content-Length' => body.length.to_s }, [body]]
}
