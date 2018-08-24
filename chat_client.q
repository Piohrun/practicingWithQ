/Chat client script

show ""
show "------------------------------------------------"
show "SUPER CHAT"
show "------------------------------------------------"
show ""

h: hopen `::4242

echo:{show x}

login: {[l] (neg h) (`slogin;l)}

chat: {[m] (neg h) (`rsvp;m)}

logout: {[arg] (neg h) (`slogout;arg)}

dm: {[who;m] (neg h) (`sdm;who;m)}

show "Connection has been successful!"
show "Have fun!"
show "------------------------------------------------"
show "COMMANDS:"
show "login[`yourName] - for logging in to the chat"
show "chat \"text here\"- for sending messages"
show "dm[toWho,what] - for sending DMs"
show "logout[] - for logging out"
show "------------------------------------------------"
show ""