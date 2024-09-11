 #!/bin/bash
DIR=/mnt
SYMDIR=/mnt/symlinks/blackhole
LIBDIR=/mnt/plex
ZURGDIR=/mnt/zurg

##############################
# Create Symlink Path        #
# if the path exist it will  #
# not create                 #
##############################

##############№########
## Symlinks Directory #
#######################

if [ ! -d "$SYMDIR" ]; then
    mkdir -p "$SYMDIR" && mkdir -p "$SYMDIR/sonarr" && mkdir -p "$SYMDIR/radarr"
    echo "Directory $SYMDIR created."
    echo "Directory $SYMDIR/sonarr created."
    echo "Directory $SYMDIR/radarr created."
else
    echo "Directory $SYMDIR already exists."
fi
##################
# Plex Directory #
##################
if [ ! -d "$LIBDIR" ]; then
    mkdir -p "$LIBDIR" && mkdir -p "$LIBDIR/Movies" && mkdir -p "$LIBDIR/Shows"
    echo "Directory $LIBDIR created."
    echo "Directory $LIBDIR/movies created."
    echo "Directory $LIBDIR/shows created."
else
    echo "Directory $LIBDIR already exists."
fi

###################
## Zurg Directory #
###################
if [ ! -d "$ZURGDIR" ]; then
    mkdir -p "$ZURGDIR"
    echo "Directory $ZURGDIR created."
else
    echo "Directory $ZURGDIR already exists."
fi
