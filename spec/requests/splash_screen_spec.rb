RSpec.describe 'SplashScreens', type: :request do
  describe 'GET /index' do


    it 'renders correct template' do
      get my_page_path
      expect(response).to render_template(:index)
    end

    it "renders correct content" do
      get my_page_path
      expect(response.body).to include('Types')
    end
  end
end
