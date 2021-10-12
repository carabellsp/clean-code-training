# frozen_string_literal: true

def benefit_rate
  return 0.5 if employee_on_vacation? && length_of_vacation > 1.week

  1.0
end

# assuming there is an employee_on_vacation? method & length_of_vacation variable stored elsewhere in the codebase
