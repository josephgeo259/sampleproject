class Github
    include PageObject
    page_url "https://www.github.com"
    expected_title "Search · rspec · GitHub"

    text_field :search_field, name: "q"
    unordered_list :search_button, id: "jump-to-results"

    def search_for?(value)
        goto
        sleep 2 
        search_field_element.send_keys("rspec")
        sleep 2
        search_button_element.when_present.click
        sleep 2
        has_expected_title?
            
    end 
end 