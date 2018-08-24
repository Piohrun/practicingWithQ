/Chat server script

show "Hello there, this is a simple chat server"
show "------------------------------------------------"

/Setting up a socket
\p 4242

logins: (`int$())!`symbol$()

rsvp:{[message]
      if[logins[.z.w]=`;(neg .z.w)(`echo;"Not Logged in!");:"Break"];
      {[message;x] (neg x) (`echo; (((string logins[.z.w]),": ",message)))}[message] each (key logins)}

slogin:{[login]
       show login,`$" is trying to log in"; (neg .z.w) (`echo;login,`$" is trying to log in!");
       $[logins[.z.w]<>` ;show "Already logged in";[show "Login successful!";logins[.z.w]:login;
       {[x] (neg x) (`echo; (((string logins[.z.w]),": has logged in!")))} each (key logins)]]}

slogout:{[arg]
        if[logins[.z.w]=`;(neg .z.w)(`echo;"Not Logged in!");:"Break"];
        show logins[.z.w],`$" is logging out";o::logins[.z.w]; `logins set (logins _ .z.w);
        {[x] (neg x) (`echo; (((string o),": has logged out!")))} each (key logins)}

sdm:{[who;m]
    if[logins[.z.w]=`;(neg .z.w)(`echo;"Not Logged in!");:"Break"];
    if[(logins?who) = 0Ni; show "No such user!";(neg .z.w) (`echo;`$"There is no such user!");:"Break"];
    show logins[.z.w],`$" is dm'ing user ",string who; (neg logins?who)(`echo;(string logins[.z.w]),"(dm): ",m);
    (neg .z.w)(`echo;(string logins[.z.w]),"(dm): ",m)}