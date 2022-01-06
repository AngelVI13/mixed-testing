from seleniumwire import webdriver  # Import from seleniumwire  
import time

# Create a new instance of the Firefox driver  
driver = webdriver.Firefox()  

# Go to the Google home page  
driver.get('https://www.google.com')  
time.sleep(60)
//*[@id="L2AGLb"]
# Access and print requests via the `requests` attribute  
for request in driver.requests:  
	if request.response:  
		print(  
            request.method,
			request.url,  
			request.response.status_code,  
			request.response.headers['Content-Type'])  

driver.close()
