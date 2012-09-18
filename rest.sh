#!/bin/sh
echo -e "\nList all wines :"
curl -G --data-urlencode 'q=[:find ?w_name ?c_name :where [?w :wine/name ?w_name] [?w :wine/color ?c] [?c :i18n/en ?c_name]]' --data-urlencode 'args=[{:db/alias "wi3/wi3ne"}]' http://localhost:7891/api/query

echo -e "\nWhich wine has ** rate :"
curl -G --data-urlencode 'q=[:find ?w_name :where [_ :rates/** ?w] [?w :wine/name ?w_name]]' --data-urlencode 'args=[{:db/alias "wi3/wi3ne"}]' http://localhost:7891/api/query
echo -e "\nWho rates Ch Mauriac with **** :"
curl -G --data-urlencode 'q=[:find ?n :where [?p :rates/**** ?w] [?p :person/username ?n] [?w :wine/name "Château Mauriac"]]' --data-urlencode 'args=[{:db/alias "wi3/wi3ne"}]' http://localhost:7891/api/query
