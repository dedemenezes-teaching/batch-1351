class Router

  def initialize(controller)
    @running = true
    @controller = controller
  end

  def run
    # KEEP THE APP RUNNING
    while @running
      # DISPLAY THE OPTIONS
      puts "\n---"
      puts '1. List all tasks'
      puts '2. Add a new task'
      puts '3. Mark as task as done'
      puts '9. Quit'
      # ASK THE USRE WHAT IS THE NEXT ACTION
      action = gets.chomp
      # CALL THE RIGHT CONTROLLER METHOD
      if action == '1'
        @controller.list
      elsif action == '2'
        @controller.add
      elsif action == '3'
        @controller.mark_as_done
      elsif action == '9'
        @running = false
      else
        puts 'Wrong command.'
      end
    end
    puts 'Good bye! zo/'
  end
end
