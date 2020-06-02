FILE=/test.sh
if test -f "$FILE"; then
    node /api/login-node-master/src/server.js
else
    touch /test.sh
fi