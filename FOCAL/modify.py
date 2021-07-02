import os
from xml.etree import ElementTree as ET
mytree = ET.parse('liosta_fcl.xml')
myroot = mytree.getroot()
for x in myroot.iter('sampla'):
    a = str(x.text)+'\nDescription added'
    x.text=str(a)
    x.set('updated','yes')
mytree.write('new.xml')
