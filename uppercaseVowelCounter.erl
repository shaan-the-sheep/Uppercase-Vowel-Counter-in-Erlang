% Public function that counts the total number of uppercase vowels in a given string

% Entry point func that initialises count to 0
count_uppercase_vowels(String) ->
    count_uppercase_vowels(String, 0).

% Base case: if the string (list of characters) is empty, return the current count
count_uppercase_vowels([], Count) ->
    Count;

% Recursive case: take the first character (Char) and the rest of the string (Rest)
% If Char is an uppercase vowel, increment the count and recursively call with Rest
% Otherwise, continue recursion without incrementing the count
count_uppercase_vowels([Char | Rest], Count) ->
    case is_uppercase_vowel(Char) of
        true -> count_uppercase_vowels(Rest, Count + 1);
        false -> count_uppercase_vowels(Rest, Count)
    end.

% Helper function to check if a character is an uppercase vowel
is_uppercase_vowel(Char) ->
    Char =:= $A orelse
    Char =:= $E orelse
    Char =:= $I orelse
    Char =:= $O orelse
    Char =:= $U.



