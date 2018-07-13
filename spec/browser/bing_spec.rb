describe Bing do 
    before(:each) do
        @browser = Watir::Browser.new(:chrome)
        @browser.goto("https://www.bing.com")
        @page = Bing.new(@browser)
    end

    after(:each) do 
        @browser.close
    end 

    describe "Search for rspec on bing" do 
        it "Should return back multiple results" do 
            expect(@page.search_for?("rspec")).to be (true)
        end 
    end
end 
