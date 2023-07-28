class TaskRepository
  # STATE
  # AN ARRAY -> store INSTANCES of Task
  def initialize
    @tasks = []
  end

  # BEHAVIORS
  def create(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end


end
