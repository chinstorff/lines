require 'colorize'

def text_to_lines (text)
  ret = []
  text.each_line "\n" do |line|
    ret.push line
  end

  return ret
end

def run_lines (lines)
  response = []
  lines.each_with_index do |line, i|
    prompt = "#{i}  "
    
    print prompt.white + line.white
    print prompt
    response.push $stdin.gets.chomp
  end
end

text = File.read(ARGV.first).gsub(/\r\n?/, "\n")

run_lines text_to_lines text
