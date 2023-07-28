require_relative './task_view'
require_relative './task'

class TaskController
  # STATE
  def initialize(task_repository)
    @task_repository = task_repository
    @task_view = TaskView.new
  end

  def mark_as_done
    # 1. Display all task tpo the user
    all_tasks = @task_repository.all
    @task_view.display(all_tasks)
    # 2. Ask which one to Mark as done (VIEW)
    index = @task_view.ask_for_index
    # 3. Retrieve the specific task to be marked
    task = @task_repository.find(index)
    # 4. mark as done
    task.completed!
  end

  def list
    # 1. GET THE ARRAY OF ALL TASKS
    all_tasks = @task_repository.all
    # 2. DISPLAY TO THE USER (VIEW)
    @task_view.display(all_tasks)
  end

  def add
    # 1. ask for the task description (VIEW)
    # needs to have access to the view
    task_description = @task_view.ask_for_description
    # 2. Initialize the new task
    task = Task.new(task_description)
    # 3. Ask the repository to add to our array of tasks
    @task_repository.create(task)
  end
end
