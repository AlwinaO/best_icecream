# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
        I created a CLI class that calls the methods for interacting with the application and the methods in the CLI class collaborate with the Parlor class.

- [x] Pull data from an external source
        I used Nokogiri to scrape date from "https://ny.eater.com/maps/best-new-ice-cream-shops-new-york-city".

- [x] Implement both list and detail views
        In the CLI class, I start the CLI with listing the ice cream parlors (list_parlors method) and then in the menu method I puts out the details for each parlor.
