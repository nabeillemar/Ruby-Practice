=begin

Processing Log-lines

Each log line is a string formatted as "[<LEVEL>]: <MESSAGE> "

* 3 different log levels
    - INFO
    - WARNING
    - ERROR

1. Get Message from a log line
    - ERROR should return message
    - white space should be removed

=end

class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      puts message = @line.gsub(/.*:/,'').strip
    end
  
    def log_level
      raise 'Please implement the LogLineParser#log_level method'
    end
  
    def reformat
      raise 'Please implement the LogLineParser#reformat method'
    end
  end


  LogLineParser.new('[ERROR]: Stack overflow').message
  LogLineParser.new('[WARNING]: Disk almost full').message
  LogLineParser.new("[WARNING]:   \tTimezone not set  \r\n").message