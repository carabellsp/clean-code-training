# frozen_string_literal: true

class TipsProcessor

  def initialize(form:)
    @form = form
  end

  def call
    SmsNotifier.new.call(text: sms_text)
  end

  private

  attr_reader :form

  def sms_text
    "You tips have been processed. Total amount is: #{total_amount}"
  end

  def total_amount
    CalculateTotal.new(form: form).call
  end

end

class CalculateTotal

  TAX = 0.05

  def initialize(form:)
    @amount = form.amount
    @discount_percentage = form.discount_percentage
    @tip_percentage = form.tip_percentage
  end

  def call
    amount + tax - discount + tip
  end

  private

  attr_reader :tax, :discount_percentage, :tip_percentage

  def tax
    amount * TAX
  end

  def discount
    amount * (discount_percentage / 100.0)
  end

  def tip
    amount * (tip_percentage / 100.0)
  end

end
