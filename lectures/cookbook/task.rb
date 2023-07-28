class Task
  attr_reader :description
  # STATE
  # due date -> Date
  # priority -> Integer
  # title  -> String
  # description -> String
  # done       -> boolean
  def initialize(description)
    @description = description
    @done = false
  end

  # BEHAVIORS
  def completed!
    @done = true
  end

  def done?
    @done
  end

  # def description
  #   @description
  # end
end
