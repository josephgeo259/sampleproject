describe Github do 
    before(:each) do
        @browser = Watir::Browser.new(:chrome)
    end

    after(:each) do 
        @browser.close
    end 

    describe "Search for rspec on bing" do 
        it "Should return back multiple results" do
            on(Github) do |page| 
                expect(page.search_for?("rspec")).to be (true)
            end 
        end 
    end
end 