
DATE = $(shell date +'%d-%m-%Y')

server: index.html download
	python3 -m http.server 8001

# Create a make rule for downloading data from koronavirus.hr using wget
# Downloaded json is split into multiple rows to make git versioning easier
# Downloading should save the file with the filename of current date, and make a copy without date
# The copy without date is used for visualization, the copy with date is kept but gitignored

download::
	wget -O- https://www.koronavirus.hr/json/?action=po_osobama | sed 's/},{/},\n{/g' > koronavirus-hr-po-osobama.json
	cp koronavirus-hr-po-osobama.json backup/koronavirus-hr-po-osobama-$(DATE).json

update: download
	git add koronavirus-hr-po-osobama.json
	git commit -m "Update data"
	git push -u origin main
