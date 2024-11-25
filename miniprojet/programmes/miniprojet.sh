#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "$0 ce programme demande un argument."
    exit 1
fi

FICHIER_URLS=$1
line_nb=1

echo "<html>"
echo "<head>
		<meta charset=\"UTF-8\">
</head>"

echo "<body>"
echo "<table>"
echo "<tr> <th>Lignes</th><th>Urls</th>Code<th>Encodage</th><th>Mots</th> </tr>"

while read -r line
do
    code=$(curl -s -I -L -w "%{http_code}" -o /dev/null $line)
    encoding=$(curl -o /dev/null -s -I -L -w "%{content_type}" $line | grep -Po "charset=\S+" | cut -d "=" -f2 | tr -d "\r\n")

    #encoding=$[ encoding:-"N/A" ]

    nb_mots=$(lynx -dump -nolist $line | wc -w)
    
    echo -e "<tr>\n<td>$line_nb</td>\t<td>$line</td>\t<td>$code</td>\t<td>$encoding</td>\t<td>$nb_mots</td>\n</tr>"
    line_nb=$((line_nb+1))
    
done < $FICHIER_URLS

echo "</table>"
echo "</body>"
echo "</html>"
