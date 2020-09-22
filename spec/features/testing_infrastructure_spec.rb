feature "Testing infrastructure" do
    scenario 'does the index page display index?' do
        visit('/index')
        expect(page).to have_content "Index"
    end
end
  