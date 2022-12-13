#!/bin/sh

generate_list() {
    count=0
    for entry in $( find ./entries -type f ); do
        count=$(( count + 1 ))
        . ${entry}
        entry_name="$( basename ${entry} )"
        [ ${count} -eq 1 ] && first_entry="${entry_name}" && prev_entry="${entry_name}"
        mkdir -p "public/${entry_name}"
        printf "<html><meta http-equiv=\"Refresh\" content=\"0; url='%s'\" /></html>\n" "${url}" \
            > "public/${entry_name}/index.html"
        cp "public/${entry_name}/index.html" "public/${prev_entry}/next.html"
        cp "public/${prev_entry}/index.html" "public/${entry_name}/previous.html"
        prev_entry="${entry_name}"
        printf '<li><a href="%s">%s</a> by %s</li>\n' "${url}" "${title}" "${author}"
        unset url title author
    done
    cp "public/${first_entry}/index.html" "public/${entry_name}/next.html"
    cp "public/${entry_name}/index.html" "public/${first_entry}/previous.html"
}

cat << INDEX_PAGE > public/index.html
<html>
<body>
Total: ${count}
<ol>
$( generate_list )
</ol>
</body
</html>
INDEX_PAGE