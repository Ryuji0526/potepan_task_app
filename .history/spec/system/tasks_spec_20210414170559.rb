require 'rails_helper'

describe 'tasks function', type: :system do
  let(:task_a) {FactoryBot.create(:task, title: 'first task')}

  describe 'index view' do
    context 'when tasks exist' do
      before do
        task_a
      end
      it 'tasks displayed' do
        visit root_path
        expect(page).to have_content 'first task'
        expect(page).to have_content '2021年04月15日'
        expect(page).to have_content '2021年04月16日'
      end
    end
  end

  describe 'create function' do
    context 'form task without errors' do
      before do
        visit new_task_path
        fill_in 'task[title]', with: 'first test'
        fill_in '開始日', with: '002021/04/13'
        fill_in '終了日', with: '002021/04/14'
        click_button 'スケジュールを登録する'
      end

      it 'new task displayed' do
        expect(page).to have_content 'first test'
        expect(page).to have_content '2021年04月13日'
        expect(page).to have_content '2021年04月14日'
      end
    end


    context 'form task with errors' do
      before do
        visit new_task_path
        fill_in "task[title]", with: ' '
        fill_in '開始日', with: '002021/04/08'
        fill_in '終了日', with: '002021/04/01'
        click_button 'スケジュールを登録する'
      end
      it 'task does not display' do
        within '#error_explanation' do
          expect(page).to have_content 'タイトルを入力してください'
          expect(page).to have_content '開始日は、今日より前(過去)の日付を入力できません。'
          expect(page).to have_content '終了日は、開始日より後の日付を入力してください'
        end
      end
    end
  end
end