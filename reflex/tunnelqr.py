from IPython.display import clear_output, Image, display
from pyngrok import ngrok
import pyqrcode
import png
from PIL import Image
import os
ngrok_auth_token = ""
the_qrcode_url = ""
ngrok_auth_token = os.environ.get("NGROK_KEY", "xxxx")
ngrok.set_auth_token(ngrok_auth_token)
ngrok.kill()
frontend_url = ngrok.connect(3000, bind_tls=True).public_url
backend_url = ngrok.connect(8000, bind_tls=True).public_url
os.environ["API_URL"] = backend_url # setup for backend of reflex app
tunnels = ngrok.get_tunnels()
display_str = "backend_url = {}\n, frontend_url = {}\n".format(backend_url, frontend_url)

pyqrcode.create(frontend_url).png("frontend-qr-code.png",scale=3)
pyqrcode.create(backend_url).png("backend-qr-code.png",scale=3)
frontend_im=Image.open("frontend-qr-code.png")
backend_im=Image.open("backend-qr-code.png")

clear_output()
print("backend_url\n {}".format(backend_url))
print("backend QRCode")
display(backend_im)
print("")
print("")
print("frontend_url\n {}".format(frontend_url))
print("frontend QRCode")
display(frontend_im)

print("""
There are 3 steps you should do if you want your tunnel works well when you are developing a web app.
Step 1. Please open backend_url in your browser and click the blue button `Visit Site`
Step 2. Please open frontend_url in your browser and click the blue button `Visit Site`
Step 3. Run the following cell, named Terminal, and try to run the snake-game web app
Step 3.1.  # cd app/examples/snakegame/
Step 3.2.  # reflex init && reflex run
Step 3.3.  Use your browser to open frontend_url and play the snake-game. If it works, then you can start to develop.

Troubleshooting:
If you cannot see the switch turn on when clicking the `Run` button, that means Ngrok detects the IP of your colab runtime and 
add a more vital constraint to limit your tunnels. That's why it doesn't work. The way to solve this issue is to 
Disconnect and delete runtime. And Reconnect. And it would be best if you reinstalled the environment again.
""")

pass
