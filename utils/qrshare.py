import pyqrcode
from pyqrcode import QRCode
the_qrcode_url = ""
from os.path import exists
if(exists("/content/app/front_url")):
    with open('/content/app/front_url') as f:
        the_qrcode_url = f.readlines()[0].replace("\n","")

from IPython.display import clear_output
import pyqrcode
import png
from PIL import Image

s = the_qrcode_url
print(s)
url = pyqrcode.create(s)

#saving image
img = "qr-code.png"
url.png(img, scale=4)
#opening image
im=Image.open(img)
#show
#from IPython.display import Image, display
#display(Image(filename=img))