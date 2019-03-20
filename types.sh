#! /bin/bash

types(){
local new_version=$(npm info parse version)
local old_version=$(getVersion parse.d.ts)
# echo 'v'$old_version$'\n' | cat parse.d.ts > temp && mv temp parse-old.d.ts
# echo '/* v'$old_version$' */\n' > temp

# npm install parse@$latest --save-exact
# dts-gen -m parse -o
# comm -3 parse-old.d.ts parse.d.ts > compare.ts
echo $new_version
echo $old_version
}
getVersion() {
	# The version number on the first line.
	head -1 $1 | sed 's/[^0-9.]//g'
}
PARSE_CHANGES=$(types)
echo $PARSE_CHANGES