# frozen_string_literal: true

class PhoneNumberFormatValidator < ActiveModel::Validator
  PHONE_REGEX = /^[0-9]{9}$/

  def validate(record)
    unless phone_number_valid_or_missing(record)
      record.errors[:phone_number] << "invalid phone number format"
    end
  end

  private

  def phone_number_valid_or_missing(record)
    record.phone_number.nil? || record.phone_number =~ PHONE_REGEX
  end
end
