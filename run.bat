@set path = %path%;%~dp0
start ipfs init
start ipfs daemon
for /f "tokens=3,4" %%a in ('"reg query HKEY_CLASSES_ROOT\http\shell\open\command"') do (set SoftWareRoot=%%a %%b)
start "" % SoftWareRoot % "http://localhost:8080/ipns/Qmbg2F7oQHrrbbkvZekKZ9USTMap513KBo8Q17VmpAXhq4"
