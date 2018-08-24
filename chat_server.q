/Chat server script

show "Hello there, this is a simple chat server script"
show "------------------------------------------------"


/Setting up a socket
\p 4242

logins: (`int$())!`symbol$()

rsvp:{[arg] outArg::arg; if[logins[.z.w]=`;(neg .z.w)(`echo;"Not Logged in!");:"Break"];{[x] (neg x) (`echo; (((string logins[.z.w]),": ",outArg)))} each (key logins)}

slogin: {[l] show l,`$" is trying to log in"; (neg .z.w) (`echo;l,`$" is trying to log in!");$[logins[.z.w]<>` ;show "Already logged in";[show "Login successful!";logins[.z.w]:l;{[x] (neg x) (`echo; (((string logins[.z.w]),": has logged in!")))} each (key logins)]]}

slogout: {[arg] if[logins[.z.w]=`;(neg .z.w)(`echo;"Not Logged in!");:"Break"];show logins[.z.w],`$" is logging out";o::logins[.z.w]; `logins set (logins _ .z.w);{[x] (neg x) (`echo; (((string o),": has logged out!")))} each (key logins)}

sdm: {[who;m]if[logins[.z.w]=`;(neg .z.w)(`echo;"Not Logged in!");:"Break"]; show logins[.z.w],`$" is dm'ing user ",string who; (neg logins?who)(`echo;(string logins[.z.w]),"(dm): ",m);(neg .z.w)(`echo;(string logins[.z.w]),"(dm): ",m)}