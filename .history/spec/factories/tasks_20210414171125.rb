FactoryBot.define do
  factory :task do
    title {'test'}
    start_date {Time.today}
    end_date {'2021/04/16'}
    all_day { true }
    description {'rspec test'}
  end
end