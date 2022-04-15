def execute(&block)
  block
end

p execute { puts "Hello from inside the execute method!" }

# outputs nothing (proc is never called)
# rtns address/id of the proc (rtns the proc obj)