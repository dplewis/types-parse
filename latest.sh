#! /bin/bash

latest(){
local latest=$(npm info parse version)

npm install parse@$latest --save-exact

dts-gen -m parse -o -f temp.d.ts

echo '/* v'$latest$' */\n' > parse.d.ts
cat temp.d.ts >> parse.d.ts

rm temp.d.ts

echo $latest
}

VERSION=$(latest)
echo $VERSION