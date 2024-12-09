% Zodiac sign ranges and their information
zodiac(aries, "March 21", "April 19", "Courageous, determined, confident, enthusiastic, optimistic, honest, and passionate.").
zodiac(taurus, "April 20", "May 20", "Reliable, patient, practical, devoted, responsible, and stable.").
zodiac(gemini, "May 21", "June 20", "Gentle, affectionate, curious, adaptable, and quick learner.").
zodiac(cancer, "June 21", "July 22", "Tenacious, highly imaginative, loyal, emotional, sympathetic, and persuasive.").
zodiac(leo, "July 23", "August 22", "Creative, passionate, generous, warm-hearted, cheerful, and humorous.").
zodiac(virgo, "August 23", "September 22", "Loyal, analytical, kind, hardworking, and practical.").
zodiac(libra, "September 23", "October 22", "Cooperative, diplomatic, gracious, fair-minded, and social.").
zodiac(scorpio, "October 23", "November 21", "Resourceful, brave, passionate, stubborn, and true friend.").
zodiac(sagittarius, "November 22", "December 21", "Generous, idealistic, and great sense of humor.").
zodiac(capricorn, "December 22", "January 19", "Responsible, disciplined, self-control, and good managers.").
zodiac(aquarius, "January 20", "February 18", "Progressive, original, independent, and humanitarian.").
zodiac(pisces, "February 19", "March 20", "Compassionate, artistic, intuitive, gentle, wise, and musical.").

% Start goal
start :-
    write("Enter your birth date (1-31): "), nl,
    read(Date), nl,
    write("Enter your birth month (1-12): "), nl,
    read(Month), nl,
    determine_zodiac(Date, Month, Zodiac, Description),
    write("Your zodiac sign is: "), write(Zodiac), nl,
    write("Zodiac description: "), write(Description), nl.

% Determine the zodiac sign based on date and month
determine_zodiac(Date, Month, Sign, Description) :-
    zodiac(Sign, StartDate, EndDate, Description),
    within_range(Date, Month, StartDate, EndDate).

% Check if the given date is within a range
within_range(Date, Month, StartDate, EndDate) :-
    % Parse start and end dates
    split_string(StartDate, " ", "", [StartDayStr, StartMonth]),
    split_string(EndDate, " ", "", [EndDayStr, EndMonth]),
    number_string(StartDay, StartDayStr),
    number_string(EndDay, EndDayStr),
    % Convert month names to numbers
    month_number(StartMonth, StartMonthNum),
    month_number(EndMonth, EndMonthNum),
    (
        (Month = StartMonthNum, Date >= StartDay);   % In start month, after or on start day
        (Month = EndMonthNum, Date =< EndDay);       % In end month, before or on end day
        (Month > StartMonthNum, Month < EndMonthNum) % Between start and end months
    ).

% Month name to number mapping
month_number("January", 1).
month_number("February", 2).
month_number("March", 3).
month_number("April", 4).
month_number("May", 5).
month_number("June", 6).
month_number("July", 7).
month_number("August", 8).
month_number("September", 9).
month_number("October", 10).
month_number("November", 11).
month_number("December", 12).
