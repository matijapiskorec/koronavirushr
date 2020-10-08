
DATE = $(shell date +'%d-%m-%Y')

server: index.html download
	python3 -m http.server

# Create a make rule for downloading data from koronavirus.hr using wget
# Downloading should save the file with the filename of current date, and make a copy without date
# The copy without date is used for visualization, the copy with date is kept but gitignored

download::
	wget -O- https://www.koronavirus.hr/json/?action=po_osobama > koronavirus-hr-po-osobama.json
	cp koronavirus-hr-po-osobama.json koronavirus-hr-po-osobama-$(DATE).json

