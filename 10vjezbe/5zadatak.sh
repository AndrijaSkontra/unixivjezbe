echo "unesi ime datoteka"

read ime

function postoji {
    local datoteka=$1
    if [ -e "${datoteka}" ]; then
        echo "datoteka postoji"
    else
        touch "${datoteka}" && echo "datoteka je kreirana"
    fi
}

function prava {
    local datoteka=$1
    ls -l | grep "${datoteka}"

    echo "zelis li promjeniti prava datoteke? (da/ne)"
    read odgovor

    if [ "${odgovor}" == "da" ]; then
        echo "unesi prava datoteke"
        read prava
        chmod "${prava}" "${datoteka}"
        echo "prava datoteke su promjenjena"
    fi
}

postoji $ime

prava $ime
