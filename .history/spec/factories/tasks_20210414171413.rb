FactoryBot.define do
  factory :task do
    title {'test'}
    start_date {Date.current}
    end_date {Time.today.since(3.days)}
    all_day { true }
    description {'rspec test'}
  end
end