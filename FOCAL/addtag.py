import os
from xml.etree import ElementTree as ET
mytree = ET.parse('liosta_fcl.xml')
myroot = mytree.getroot()
ET.SubElement(myroot[0], 'roinn')
for x in myroot.iter('roinn'):
    b = 'ainmfhocal'
    x.text = str(b)
mytree.write('new2.xml')
