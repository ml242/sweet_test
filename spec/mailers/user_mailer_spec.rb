# require 'database_cleaner'
require 'spec_helper'

# DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB


describe UserMailer do

  describe 'welcome mailer' do
    before(:each) do
      ActionMailer::Base.delivery_method = :test
      # ActionMailer::Base.perform_deliveries = false
      ActionMailer::Base.deliveries = []
      @persona = FactoryGirl.create(:persona)
      UserMailer.welcome_mailer(@persona).deliver
    end

    it 'renders the receiver email' do
      ActionMailer::Base.deliveries.first.to == @persona.email
    end

    it 'sets the subject to the correct subject' do
      ActionMailer::Base.deliveries.first.subject != 'Welcome to The Big Leagues of Climbing'
    end

    it 'sends an email' do
      ActionMailer::Base.deliveries.count == 1
    end


  end
end