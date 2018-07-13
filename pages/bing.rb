class Bing 
    include PageObject

    expected_title "rspec - Bing"

    text_field :search_field, name: "q"
    button :search_button, id: "sb_form_go"

    def search_for?(value)
        search_field_element.send_keys("rspec")
        sleep 2
        search_button_element.when_present.click
        sleep 5
        has_expected_title?
    end 
end 

