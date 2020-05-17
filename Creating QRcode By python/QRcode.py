import pyqrcode
from pyqrcode import QRCode
s = "Prudhvi Malladi"
url = pyqrcode.create(s)
url.svg("D:/myqr.svg", scale = 8)
