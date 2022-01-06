from seleniumwire import webdriver  # Import from seleniumwire


class SeleniumPlugin:
    def Register_seleniumwire_webdriver(self, library, browser: str, alias: str = "my_alias"):
        """Register a seleniumwire webdriver with alias. Seleniumwire allows
        us to process any driver requests that occur during interaction with
        the browser
        """
        # Create a new instance of the Firefox driver
        self.driver = getattr(webdriver, browser)()
        library.register_driver(self.driver, "my_alias")

    def get_requests(self):
        return self.driver.requests

    def log_requests(self):
        for request in self.driver.requests:
            if request.response:
                print(
                    request.method, request.url, request.response.status_code, request.response.headers["Content-Type"]
                )

    def request_to_api_is_made(self, search_term: str):
        expected_request = f"https://www.google.com/search?q={search_term}"  
        for request in self.driver.requests:
            if (
                request.response
                and expected_request in request.url
                and request.response.status_code == 200
            ):
                return

        raise Exception(f"Expected API call was not made")
