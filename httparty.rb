require 'httparty'
require 'pp'

class Countries
    include HTTParty

    default_options.update(verify: false) #turn off SLL verification
    base_uri 'https://restcountries.eu/rest/v2'
    format :json
    
    def self.all
        get("/all")
    end

    def self.get_country (country)
        get("/name/#{country}")
    end

end

#pp Countries.all
pp Countries.get_country "Mexico"