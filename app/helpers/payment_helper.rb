module PaymentHelper
  def month_options
    Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{i+1} - #{name}", i+1]}
  end

  def year_options
    (Date.today.year..(Date.today.year+10)).to_a
  end
end
