FactoryBot.define do
  factory :task do
    title {'test'}
    start_date {Time.today}
    end_date {Time.today.since()}
    all_day { true }
    description {'rspec test'}
  end
end