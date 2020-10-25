require 'rails_helper'

describe 'レビュー投稿のテスト' do
  before do
    visit new_user_session_path
    fill_in 'user[name]', with: user.name
    fill_in 'user[password]', with: user.password
    click_button 'ログイン'
  end

  descrive 'メニュー詳細ページ' do
    context 'メニュー詳細ページに遷移する' do
      before do
        visit public_menu_path(menu.id)
      end

      it '投稿に成功する' do
        expect(response.status).to eq 200
        # fill_in 'review[review_image]'
        # fill_in 'review[comment]', with: Faker::Lorem.characters(number: 1000)
        # click_button 'このメニューのレビューを投稿する'
        # expect(page).to have_content 'successfully'
      end
      it '投稿に失敗する' do
        click_button 'このメニューのレビューを投稿する'
        expect(page).to have_content 'error'
        expect(current_path).to eq('/public/reviews')
      end
    end
  end
end
