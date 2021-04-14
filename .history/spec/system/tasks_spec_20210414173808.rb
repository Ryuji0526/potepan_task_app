require 'rails_helper'

describe 'tasks function', type: :system do
  let(:task_a) {FactoryBot.create(:task, title: 'first task')}


  shared_examples_for 'task displayed' do
    it {
      expect(page).to have_content task_a.title
      expect(page).to have_content task_a.start_date.strftime("%Y年%m月%d日")
      expect(page).to have_content task_a.end_date.strftime("%Y年%m月%d日")
    }
  end

  describe 'index view' do
    context 'when tasks exist' do
      before do
        task_a
        visit root_path
      end

      it_behaves_like 'task displayed'
    end
  end

  describe 'new function' do
    context 'create task without errors' do
      before do
        visit new_task_path
        fill_in 'task[title]', with: task_a.title
        fill_in '開始日', with: task_a.start_date
        fill_in '終了日', with: task_a.end_date
        click_button 'スケジュールを登録する'
      end

      it_behaves_like 'task displayed'
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

  describe 'edit function' do
    context 'edit task without errors' do
      before do
        visit edit_task_path(task_a)
        fill_in 'task[title]', with: task_a.title
        fill_in '開始日', with: task_a.start_date
        fill_in '終了日', with: task_a.end_date
        click_button 'スケジュールを更新する'
      end

      it 'success flash displayed' do
        within '.alert-success' do
          expect(page).to have_content "タスク「#{task_a.title}」を更新しました。"
        end
      end
    end
  end 

  describe 'delete function' do
    context 'de' do
  end
end