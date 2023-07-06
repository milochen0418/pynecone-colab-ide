# /content/app/append.py
from os.path import exists
if(exists("/content/app/url")):
    with open('/content/app/url') as f:
        the_url = f.readlines()[0].replace("\n","")
        config.api_url = the_url
        print(config.api_url)