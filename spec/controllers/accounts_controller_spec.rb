require 'rails_helper'

describe AccountsController do
  describe '#show' do
    context 'json' do
      before do
        @account ||= Account.first
        get :show, {:id => @account.id, :format => :json}
        @body ||= JSON.parse(response.body)
      end
      context 'attributes' do
        it 'wraps response in data key' do
          expect(@body).to have_key('data')
        end

        %w(id balance account_type_id created_at updated_at bank_id type).each do |attr|
          it "has #{attr} key" do
            expect(@body['data']).to have_key attr
          end

          it "has #{attr} value" do
            expect(@body['data'][attr]).to be_present
          end
        end
      end

      context 'associations' do
        it 'has some' do
          data = @body['data']
          expect(data).to have_key('links')
        end

        it 'has correct ones' do
          links = @body['data']['links']
          expect(links).to have_key('bank')
          expect(links).to have_key('user')
        end
      end
    end
  end
end
