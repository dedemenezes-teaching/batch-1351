# FIRST THING ALWAYS :=> MODEL
# MVC
# MODE
# VIEW
# CONTROLLER
# require_relative './task'
require_relative './task_repository'
require_relative './task_controller'
# require_relative './task_view'

# AS AN USER I CAN ADD A NEW TASK
# AS AN USER I CAN SEE ALL TASKS
# AS AN USER I CAN MARK A TASK AS DONE

task_repository = TaskRepository.new

controller = TaskController.new(task_repository)

controller.add
controller.add

controller.mark_as_done
# controller.list

p task_repository.all
















# task_view = TaskView.new

# task_description = task_view.ask_for_description
# # p task_description
# task_one = Task.new(task_description)
# # task_two = Task.new(???)
# p task_one

# # puts "#{task_one.description} is #{task_one.done? ? 'done' : 'not done'}"

# task_repository = TaskRepository.new
# # p task_repository

# task_repository.create(task_one)
# task_repository.create(task_two)

# # p task_repository


# tasks = task_repository.all

# task_view.display(tasks)
# 1 - NAME
# 2 - NAME
# p tasks
