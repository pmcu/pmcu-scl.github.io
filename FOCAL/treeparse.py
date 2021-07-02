import os
from xml.etree import ElementTree

file_name = 'liosta_fcl.xml'

dom = ElementTree.parse(file_name)

focail = dom.findall('fcl')
for s in focail:
    foc = s.find('focal').text
    scéal = s.find('scl').text
    sampla = s.find('sampla').text

    print('* {}\n {}\n {}\n'.format(
        foc, scéal, sampla
        ))
