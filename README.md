MEFD Wiki Scraper
===

What is this and why would I ever use it?
---
Some background: Mount Erie Fire Department (MEFD) has an awesome [handbook](https://handbook.mteriefire.com)
in mediawiki, which contains SOPs, information on equipment we carry, and
other very useful information. Sometimes one might want to reference the
handbook without a robust internet connection (I'm looking at you,
Bowman Bay). The idea of this scraper is to download a snapshot of the wiki
for offline use on mobile devices.

The standard download format for full wikis in the mediawiki ecosystem is a
ZIM file (.zim). You can read all about what's in a zim file and how to
manipulate them on the [OpenZIM
wiki](https://www.openzim.org/wiki/OpenZIM).

This repository uses the priceless tool `mwoffliner` to generate a zim file
for the MEFD wiki. Read all about it in its [GitHub
repository](https://github.com/openzim/mwoffliner). You can install
`mwoffliner` globally by running `npm i -g mwoffliner` on a system with
`npm` set up.

How to run the scraper
---
Ensure `mwoffliner` is installed on your system. You can check by running
`mwoffliner --help`.

To run the scraper:
```
./scrape.sh youremail@example.com
```
By default, it will put the resulting .zim file in a directory called
`out`.

The email address is just passed to the API as a sort of "this is who's
hitting every page in the wiki" thing.

How to view the offline file
---
Download Kiwix for your platform and import the file.

* Mac: File -> Open -> select output file.
* iPhone: AirDrop the file to your phone, save it in files, ensure the
    Kiwix app is installed. In the app, go to Libraries, then add, then
    select the newly-downloaded .zim file and choose "move to Kiwix"
    (unless you want a copy in files too, but I promise zim files are not
    useful on their own). To actually open it, tap on MEFD in your library,
    then choose Open Main Page.
    
But I don't *want* to run the scraper! Can I just download a zim file?
---
Sure! Download a possibly-out-of-date zim file at
[https://wxyzeph.com/mefd-latest.zim](https://wxyzeph.com/mefd-latest.zim).
If you want a more up-to-date version of the wiki, hassle Zeph for an update.
