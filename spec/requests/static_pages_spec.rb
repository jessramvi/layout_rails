require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Demo App') }

    it { should have_selector('title', text: full_title('')) }
  end

  describe "Help page" do
    it "should have the h1 'Ayuda'" do
      visit help_path
      page.should have_selector('h1', text:'Ayuda')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', 
                    text: "Tutorial Ruby on Rails de la Demo App | Ayuda")
  end

  describe "About page" do
    it "should have the h1 'Sobre Nosotros'" do
      visit about_path
      page.should have_selector('h1', text:'Sobre Nosotros')
    end

    it "should have the title 'Sobre Nosotros'" do
      visit about_path
      page.should have_selector('title',
                    text: "Tutorial Ruby on Rails de la Demo App | Sobre Nosotros")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contacto'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contacto')
    end

    it "should have the title 'Contacto'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Tutorial Ruby on Rails de la Demo App | Contacto")
end
