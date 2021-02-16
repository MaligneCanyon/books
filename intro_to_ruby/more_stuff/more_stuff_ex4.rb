def execute(&block)
  block.call # must explicitly call the proc
end

execute { puts "Hello from inside the execute method!" }