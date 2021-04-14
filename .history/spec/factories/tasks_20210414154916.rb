FactoryBot.define do
  factory :test do
    title {'test'}
    start_date {'2020/04/15'}
    end_date {'2020/04/16'}
    all_day { true }
    description { }
  end
end