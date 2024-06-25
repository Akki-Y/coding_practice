time = Time.new
puts "current time :" + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name

# [sec,min,hour,day,month,year,wday,yday,isdst,zone]
time = Time.new
values = time.to_a
p values

# Setting a specific time zone
time_in_zone = time.getlocal("-04:00")
puts time_in_zone

# Time.utc or Time.local functions to get different format of dates
time = Time.new
values = time.to_a
puts Time.utc(*values)

# Returns number of seconds since epoch
time = Time.now.to_i  
puts time

# Convert number of seconds into Time object.
Time.at(time)
puts time

# Returns second since epoch which includes microseconds
time = Time.now.to_f
puts time


#Timezones and Daylight Savings Time

time = Time.new

# Here is the interpretation
time.zone       # => "UTC": return the timezone
time.utc_offset # => 0: UTC is 0 seconds offset from UTC
time.zone       # => "PST" (or whatever your timezone is)
time.isdst      # => false: If UTC does not have DST.
time.utc?       # => true: if t is in UTC time zone
time.localtime  # Convert to local timezone.
time.gmtime     # Convert back to UTC.
time.getlocal   # Return a new Time object in local zone
time.getutc     # Return a new Time object in UTC

# Formatting times and dates
time = Time.new
puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")


# Time arthimetic
now = Time.now          # Current time
puts "now:  #{now}"

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff