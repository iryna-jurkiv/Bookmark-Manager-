feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager'do
  visit ('/bookmarks/new')
  fill_in('url', with: 'http://makersacademy.com')
  fill_in('title', with: 'Makers Academy')
  click_button('Submit')

  expect(page).to have_link('Makers Academy', href:'http://makersacademy.com')
  end

  scenario 'The bookmark must be a valid URL' do
     visit('/bookmarks/new')
     fill_in('title', with: 'not a real bookmark')
     fill_in('url', with: 'not a real bookmark')
     click_button('Submit')

     expect(page).not_to have_content "not a real bookmark"
     expect(page).to have_content "You must submit a valid URL."
   end
 end
