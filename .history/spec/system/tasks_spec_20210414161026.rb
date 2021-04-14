require 'rails_helper'

describe 'tasks function', type: :system do
  describe 'index view' do
    before do
      FactoryBot.create(:task, title: 'first task')
    end
    context 'when tasks exist' do
      it 'tasks display' do
        expect(page).to have_content 'first task'
        expect(page).to have_content '2020年04月15日'
      end
    end
  end

  describe 'create function' do
    context 'form task without errors' do
      before do
        visit tasks_new_path
        fill_in 'タイトル', with: ''
      end

      it '' do
  
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