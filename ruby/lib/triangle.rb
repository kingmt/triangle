module Triangle
  extend self

  ARR = %w( _ * )
  
  def generate_line width
    result = '*'
    ARR.cycle(width-1) do |char|
      result = result + char
    end
    result
  end

  def generate_triangle lines
    line_width = 2 * lines - 1
    result = []
    (1..(lines)).each do |line_number|
      str = generate_line line_number
      result << str.center(line_width)
    end
    result.join "\n"
  end
end
