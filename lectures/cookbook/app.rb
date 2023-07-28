require_relative './router'
require_relative './task_controller'
require_relative './task_repository'

task_repo = TaskRepository.new
task_controller = TaskController.new(task_repo)
router = Router.new(task_controller)
router.run
