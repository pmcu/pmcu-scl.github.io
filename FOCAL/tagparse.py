import os
from xml.etree import ElementTree as ET
mytree = ET.parse('liosta_fcl.xml')
myroot = mytree.getroot()
print(myroot.tag)
for x in myroot[1]:
    print(x.tag,x.attrib)
for x in myroot[1]:
    print(x.text)
