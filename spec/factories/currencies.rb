FactoryBot.define do
  factory :currency, class: Currency do
    full_name "Crrency #{Time.now.to_i}"
    short_name "CUR #{Time.now.to_i}"
  end
end
