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


% Public function that counts the number of occurrences of each uppercase vowel in a string

% Initialises the counts for each vowel as a tuple
count_uppercase_vowels(String) ->
    count_uppercase_vowels(String, {0, 0, 0, 0, 0}).

% Base case: if the string is empty, return the current counts of vowels as a tuple
count_uppercase_vowels([], Counts) ->
    Counts;

% Recursive case: take the first character (Char) and the rest of the string (Rest)
% Update the vowel counts accordingly and recursively process the rest of the string
count_uppercase_vowels([Char | Rest], Counts) ->
    UpdatedCounts = update_counts(Char, Counts),
    count_uppercase_vowels(Rest, UpdatedCounts).

% Function that updates the counts of each vowel based on the current character
% If the character is an uppercase vowel, increment its respective count in the tuple
update_counts(Char, {A, E, I, O, U}) ->
    case is_uppercase_vowel(Char) of
        true ->
            case Char of
                $A -> {A + 1, E, I, O, U};    
                $E -> {A, E + 1, I, O, U};    
                $I -> {A, E, I + 1, O, U};   
                $O -> {A, E, I, O + 1, U};    
                $U -> {A, E, I, O, U + 1}     
            end;
        false -> {A, E, I, O, U}             
    end.

% Helper function to check if a character is an uppercase vowel
is_uppercase_vowel(Char) ->
    Char =:= $A orelse
    Char =:= $E orelse
    Char =:= $I orelse
    Char =:= $O orelse
    Char =:= $U.


