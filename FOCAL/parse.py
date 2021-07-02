from bs4 import BeautifulSoup
with open('liosta_fcl.xml','r') as f:
    data = f.read()

Bs_data = BeautifulSoup(data, "xml")
b_sml = Bs_data.find_all('sampla')
print(b_sml)
