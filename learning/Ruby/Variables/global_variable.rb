$msg = "Server1"

def changemsg
  $msg = "Web server"
  puts "msg after changed #{$msg}"
end
changemsg()
puts "msg #{$msg}"

# msg after changed Web server
# msg Web server