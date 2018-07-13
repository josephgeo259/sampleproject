class Google 
    include PageObject

    expected_title "rspec - Google Search"

    text_field :search_field, name: "q"
    button :search_button, value: "Google Search"
    
    def search_for?(value)
        search_field_element.send_keys("rspec")
        sleep 2
        search_button_element.when_present.click
        sleep 2
        has_expected_title?
    end
end 