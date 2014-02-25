require 'spec_helper'

describe "Static Pages" do
  let(:base_title) { 'Hartl Tutorial - Sample App' }
  describe 'Home Page' do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it 'should have the base title' do
      visit '/static_pages/home'
      page.should have_selector('title',
        text: "#{base_title}", visible: false)
    end

    it 'should not have a custom title' do
      visit '/static_pages/home'
      page.should_not have_selector('title',
        text: '| Home')
    end
  end

  describe 'Help Page' do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end

    it 'should have the correct title' do
      visit '/static_pages/help'
      page.should have_selector('title',
        text: "#{base_title} | Help", visible: false)
    end
  end

  describe 'About Page' do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About Us')
    end

    it 'should have the correct title' do
      visit '/static_pages/about'
      page.should have_selector('title',
        text: "#{base_title} | About Us", visible: false)
    end
  end

  describe 'Contact Page' do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it 'should have the correct title' do
      visit '/static_pages/contact'
      page.should have_selector('title',
        text: "#{base_title} | Contact", visible: false)
    end
  end

end
