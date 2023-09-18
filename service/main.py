import time
import requests


while True:
    response = requests.get("https://www.google.com")
    print(response.text)
    
    with open("storage/log.txt", "a") as f:
        f.write(response.text)
    
    # sleep for 5 seconds
    time.sleep(5)
