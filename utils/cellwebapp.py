from IPython.display import clear_output
import ipywidgets as widgets
from IPython.display import IFrame
clear_output()
the_front_url = ""
from os.path import exists
if(exists("/content/app/front_url")):
    with open('/content/app/front_url') as f:
        the_front_url = f.readlines()[0].replace("\n","")
IFrame(src=the_front_url, width='80%', height='300px')