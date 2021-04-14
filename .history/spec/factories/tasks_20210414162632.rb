FactoryBot.define do
  factory :task do
    title {'test'}
    start_date {'2021/04/15'}
    end_date {'2021/04/16'}
    all_day { true }
    description {'rspec test'}
  end
end