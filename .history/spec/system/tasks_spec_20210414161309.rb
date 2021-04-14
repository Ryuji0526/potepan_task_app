require 'rails_helper'

describe 'tasks function', type: :system do
  describe 'index view' do
    before do
      FactoryBot.create(:task, title: 'first task')
    end
    context 'when tasks exist' do
      it 'tasks displayed' do
        expect(page).to have_content 'first task'
        expect(page).to have_content '2020年04月15日'
      end
    end
  end

  describe 'create function' do
    context 'form task without errors' do
      before do
        visit tasks_new_path
        fill_in 'タイトル', with: 'first test'
        fill_in '開始日', with: '2021/04/08'
        fill_in '終了日', with: '2021/04/08'
        click_button 'スケジュールを登録する'
      end

      it 'new task displayed' do
        expect(page).to have_content 'first test'
        expect(page).to have_content '2021年04月08日'
        expect(page).to have_content '2021年04月08日'
      end
    end


    context 'form task with errors' do
      before do

      end
      it '' do
  
      end
    end
  end
end