fur(coby).
fur(toby).
horn(toby).

cat(X):-fur(X),\+(horn(X)).
