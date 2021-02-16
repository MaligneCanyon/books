$LOGGING = true # global const
$indent_count = 0 # global var
def log(block_desc, &block)
  if $LOGGING
    indent_str = "  "*$indent_count
    puts indent_str + "Beginning '#{block_desc}'"
    $indent_count += 1
    rtn_val = block.call
    $indent_count -= 1
    puts indent_str + "Ending '#{block_desc}'; returning: #{rtn_val}"
  else
    block.call
  end
end


log "outer block" do
  log "inner block" do
    log "deep block" do
      "%.6f" % Math::PI
    end
    str = "that's a good little block" # log the return value from this code
  end
  number = 1 # log the return value from this code
end
