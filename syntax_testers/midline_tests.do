Here is some test text with inline commands. It could regress if there
were problems with the prefix: regress still highlights after a :which
is annoying, but to be expected because prefix commands are a mess

capture regress
capt : regress
quietly regress
noisily regress
by: noi regress // legal but not allowed by us
regress
by: regress
by: levelsof
levelsof
  quietly   levelsof
qui qui
fug: regress
foo regress
fug regress
capture noisily {
   oops need
   }
capture noisily regress --- igit

fff ml max

fooey regress // this is regress

** old-style regexp
quietly areg
fooey areg // this is areg
