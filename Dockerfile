FROM hgfkeep/mwget
COPY down.sh down.sh
COPY filelist.txt filelist.txt
CMD sh down.sh