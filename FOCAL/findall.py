import os
from xml.etree import ElementTree as ET
mytree = ET.parse('liosta_fcl.xml')
myroot = mytree.getroot()

for x in myroot.findall('fcl'):
    item = x.find('focal').text
    sampla = x.find('sampla').text
    print(item,':',sampla)
