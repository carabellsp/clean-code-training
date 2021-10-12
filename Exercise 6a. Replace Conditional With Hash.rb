# frozen_string_literal: true

USER_TYPE_AND_ASSOCIATED_RESPONSIBILITIES = {
  attendee: :register,
  speaker: :wake_up,
  matz: :make_tea
}.freeze

def prepare_for_conference(user_type)
  USER_TYPE_AND_ASSOCIATED_RESPONSIBILITIES[user_type]
end

# we want to maintain the open-close principle and ensure the code is less coupled (i.e. more flexible for changing behaviour)
