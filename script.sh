#! /bin/bash

curl -H "Accept-Charset: UTF-8" -L https://www.sismap.gob.do/Central/Home/About | 
sed -e 's/&#225;/á/g' -e 's/&#233;/é/g' -e 's/&#237;/í/g' -e 's/&#243;/ó/g' -e 's/&#250;/ú/g' -e 's/&#241;/ñ/g' -e 's/&#218;/Ú/g' -e 's/&#211;/Ó/g' -e 's/&#205;/Í/g' -e 's/&#201;/É/g' -e 's/&#193;/Á/g' -e 's/&quot;/“/g'|
grep -oP '(?<=<li>)[^<]+(?<!<\/li>)(?=<\/li>)' > instituciones.txt

