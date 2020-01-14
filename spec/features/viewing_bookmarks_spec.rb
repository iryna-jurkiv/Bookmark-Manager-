feature 'Visting Bookmarks' do
  scenario 'See Bookmark Manager' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'See Bookmark urls' do
    visit '/bookmarks'
    expect(page).to have_content "www.makersacademy.com"
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.yahoo.com"
  end
end
