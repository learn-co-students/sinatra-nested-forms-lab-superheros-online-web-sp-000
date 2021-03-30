describe App do

  describe 'GET /' do
    before do 
      get '/'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'renders super hero form' do 
      expect(last_response.body).to include("Create a Team and Heroes!")
      expect(last_response.body).to include("<form")
    end
  end

  describe 'POST /teams' do
    it 'submits the form' do
      visit '/'
      fill_in("team[name]", :with => "Team Ruby")
      click_button 'submit'

      expect(page).to have_text("Team Ruby") 
    end
  end
  
end
