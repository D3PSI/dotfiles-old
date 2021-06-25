python 
import sys

sys.path.append('/home/d3psi/.config/Epic/GDBPrinters/')

from UE4Printers import register_ue4_printers
register_ue4_printers(None)
print("Registered pretty printers for UE4 classes")

end
