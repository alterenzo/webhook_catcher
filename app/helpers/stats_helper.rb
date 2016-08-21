module StatsHelper
  def rate_to_percent(rate)
    number_to_percentage(rate * 100, precision: 1, strip_insignificant_zeros: true)
  end
end
