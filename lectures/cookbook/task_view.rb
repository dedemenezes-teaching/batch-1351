class TaskView
  # NO INITIALIZE (dumb class)
  # JUST BEHAVIORS!

  def display(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} - #{task.done? ? '[X]' : '[ ]'} #{task.description}"
    end
  end

  # 1 - [ ] - finish TODO app

  def ask_for_description
    puts "Description?"
    return gets.chomp
  end

  def ask_for_index
    puts 'Index?'
    gets.chomp.to_i - 1
  end
end
