% Rule for resistors in series: Re = R1 + R2
resistance(series, R1, R2, Re) :-
    Re is R1 + R2.

% Rule for resistors in parallel: Re = (R1 * R2) / (R1 + R2)
resistance(parallel, R1, R2, Re) :-
    Re is (R1 * R2) / (R1 + R2).

% Calculation for the given circuit
equivalent_resistance(Re) :-
    resistance(parallel, 10, 40, R3),   % Lower half: 10 || 40
    resistance(series, R3, 12, R4),    % Series: R3 + 12
    resistance(parallel, R4, 30, Re).  % Parallel: R4 || 30
