#!/bin/bash
for elem in $@; do
    if [ -d $elem ];
    then ( echo -e "chmod +rx $elem" ; sudo chmod +rw $elem ; ./doit.sh $elem/* ) ;
    else ( echo -e "chmod +r $elem" ; sudo chmod +r $elem );
    fi;
done;
