# koronavirushr

**koronavirushr** je vizualizacija podataka o osobama zaraženima korona virusom u Hrvatskoj. Podaci su preuzeti s [koronavirus.hr](https://koronavirus.hr). Vizualizacija koristi [D3](http://d3js.org/) za prikaz i [Crossfilter](http://square.github.io/crossfilter/) za filtriranje podataka. Programski kod je većinom preuzet sa službenog [Crossfilter primjera](http://square.github.io/crossfilter/). 

Strojno čitljivi podaci se mogu preuzeti sa sljedećeg linka:
```
https://www.koronavirus.hr/json/?action=po_osobama
```

Za lokalno testiranje vizualizaciju možete posjetiti na [localhost:8000](http://localhost:8000) nakon što pokrenete lokalni statični server, primjerice Pythonov ugrađeni server:
```
python -m SimpleHTTPServer
```

Uz programski kod dolazi i Makefile pa vizualizaciju možete pokrenuti i s [make](https://www.gnu.org/software/make/) programom - u tom slučaju prije pokretanja servera downloadat će se najnoviji podaci s [koronavirus.hr](https://koronavirus.hr) uz pomoć [wget](https://www.gnu.org/software/wget/) programa.

Vizualizacija je također [dostupna online](http://matijapiskorec.github.io/koronavirushr/) na [GitHub Pages](https://pages.github.com/). Pokušavamo ju držati up-to-date s najnovijim podacima.


