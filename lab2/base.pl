/*
    leader - факт описывающий лидеров представленных в игре
*/

leader('Abraham Lincoln').
leader('Teddy Roosevelt').
leader('Saladin').
leader('Basil II').
leader('Theodora').
leader('Qin Shi Huang').
leader('Wu Zetian').
leader('Yongle').
leader('Cleopatra').
leader('Ramses II').
leader('Elizabeth I').
leader('Victoria').
leader('Frederick Barbarossa').
leader('Ludwig II').
leader('Peter').
leader('Tomyris').
leader('Philip II').
leader('Gilgamesh').
leader('Kristina').
leader('Shaka').

/*
    civilization - факт описывающий во главе какой нации стоит каждый из лидеров
*/
civilization('Abraham Lincoln', 'American').
civilization('Teddy Roosevelt', 'American').
civilization('Saladin', 'Arabian').
civilization('Basil II', 'Byzantine').
civilization('Theodora', 'Byzantine').
civilization('Qin Shi Huang', 'Chinese').
civilization('Wu Zetian', 'Chinese').
civilization('Yongle', 'Chinese').
civilization('Cleopatra', 'Egyptian').
civilization('Ramses II', 'Egyptian').
civilization('Elizabeth I', 'English').
civilization('Victoria', 'English').
civilization('Frederick Barbarossa', 'German').
civilization('Ludwig II', 'German').
civilization('Peter', 'Russian').
civilization('Tomyris', 'Scythian').
civilization('Philip II', 'Spanish').
civilization('Gilgamesh', 'Sumerian').
civilization('Kristina', 'Swedish').
civilization('Shaka', 'Zulu').

/*
    location - факт описывающий на каком материке расположина нация
*/
location('American', 'America').
location('Arabian', 'Asia').
location('Byzantine', 'Asia').
location('Chinese', 'Asia').
location('Egyptian', 'Africa').
location('English', 'Europe').
location('German', 'Europe').
location('Russian', 'Europe').
location('Scythian', 'Asia').
location('Spanish', 'Europe').
location('Sumerian', 'Asia').
location('Swedish', 'Europe').
location('Zulu', 'Africa').

/*
    strength - факт описывающий аспекты лидера, где 1 - он плох, 5 - крутой
    задется как strength(leader, аспек, сила аспекта)
*/
strength('Abraham Lincoln', 'Science', 3).
strength('Abraham Lincoln', 'Diplomacy', 4).
strength('Abraham Lincoln', 'War', 5).
strength('Abraham Lincoln', 'Culture', 2).
strength('Abraham Lincoln', 'Faith', 1).


strength('Teddy Roosevelt', 'Science', 4).
strength('Teddy Roosevelt', 'Diplomacy', 5).
strength('Teddy Roosevelt', 'War', 3).
strength('Teddy Roosevelt', 'Culture', 2).
strength('Teddy Roosevelt', 'Faith', 2).


strength('Saladin', 'Science', 2).
strength('Saladin', 'Diplomacy', 3).
strength('Saladin', 'War', 5).
strength('Saladin', 'Culture', 3).
strength('Saladin', 'Faith', 5).


strength('Basil II', 'Science', 2).
strength('Basil II', 'Diplomacy', 3).
strength('Basil II', 'War', 5).
strength('Basil II', 'Culture', 4).
strength('Basil II', 'Faith', 4).


strength('Theodora', 'Science', 3).
strength('Theodora', 'Diplomacy', 4).
strength('Theodora', 'War', 4).
strength('Theodora', 'Culture', 5).
strength('Theodora', 'Faith', 5).


strength('Qin Shi Huang', 'Science', 5).
strength('Qin Shi Huang', 'Diplomacy', 2).
strength('Qin Shi Huang', 'War', 4).
strength('Qin Shi Huang', 'Culture', 3).
strength('Qin Shi Huang', 'Faith', 1).


strength('Wu Zetian', 'Science', 4).
strength('Wu Zetian', 'Diplomacy', 3).
strength('Wu Zetian', 'War', 4).
strength('Wu Zetian', 'Culture', 5).
strength('Wu Zetian', 'Faith', 2).


strength('Yongle', 'Science', 5).
strength('Yongle', 'Diplomacy', 4).
strength('Yongle', 'War', 3).
strength('Yongle', 'Culture', 4).
strength('Yongle', 'Faith', 2).


strength('Cleopatra', 'Science', 3).
strength('Cleopatra', 'Diplomacy', 4).
strength('Cleopatra', 'War', 3).
strength('Cleopatra', 'Culture', 5).
strength('Cleopatra', 'Faith', 3).


strength('Ramses II', 'Science', 2).
strength('Ramses II', 'Diplomacy', 3).
strength('Ramses II', 'War', 5).
strength('Ramses II', 'Culture', 4).
strength('Ramses II', 'Faith', 4).


strength('Elizabeth I', 'Science', 3).
strength('Elizabeth I', 'Diplomacy', 5).
strength('Elizabeth I', 'War', 4).
strength('Elizabeth I', 'Culture', 4).
strength('Elizabeth I', 'Faith', 2).


strength('Victoria', 'Science', 4).
strength('Victoria', 'Diplomacy', 5).
strength('Victoria', 'War', 3).
strength('Victoria', 'Culture', 3).
strength('Victoria', 'Faith', 2).


strength('Frederick Barbarossa', 'Science', 3).
strength('Frederick Barbarossa', 'Diplomacy', 2).
strength('Frederick Barbarossa', 'War', 5).
strength('Frederick Barbarossa', 'Culture', 3).
strength('Frederick Barbarossa', 'Faith', 1).


strength('Ludwig II', 'Science', 4).
strength('Ludwig II', 'Diplomacy', 3).
strength('Ludwig II', 'War', 3).
strength('Ludwig II', 'Culture', 5).
strength('Ludwig II', 'Faith', 2).


strength('Peter', 'Science', 5).
strength('Peter', 'Diplomacy', 4).
strength('Peter', 'War', 3).
strength('Peter', 'Culture', 4).
strength('Peter', 'Faith', 2).


strength('Tomyris', 'Science', 2).
strength('Tomyris', 'Diplomacy', 2).
strength('Tomyris', 'War', 5).
strength('Tomyris', 'Culture', 3).
strength('Tomyris', 'Faith', 1).


strength('Philip II', 'Science', 3).
strength('Philip II', 'Diplomacy', 4).
strength('Philip II', 'War', 4).
strength('Philip II', 'Culture', 3).
strength('Philip II', 'Faith', 5).


strength('Gilgamesh', 'Science', 5).
strength('Gilgamesh', 'Diplomacy', 3).
strength('Gilgamesh', 'War', 5).
strength('Gilgamesh', 'Culture', 3).
strength('Gilgamesh', 'Faith', 2).

strength('Kristina', 'Science', 4).
strength('Kristina', 'Diplomacy', 5).
strength('Kristina', 'War', 2).
strength('Kristina', 'Culture', 5).
strength('Kristina', 'Faith', 3).


strength('Shaka', 'Science', 2).
strength('Shaka', 'Diplomacy', 2).
strength('Shaka', 'War', 5).
strength('Shaka', 'Culture', 2).
strength('Shaka', 'Faith', 1).




/*

    difficulty - факт описывающий сложность лидера

    difficulty_value - это факт описывающий сложность, вторым термом вводится значение сложности, где 1 - легкий, 3-сложный

*/

difficulty('Abraham Lincoln', 'Medium').
difficulty('Teddy Roosevelt', 'Easy').
difficulty('Saladin', 'Hard').
difficulty('Basil II', 'Hard').
difficulty('Theodora', 'Medium').
difficulty('Qin Shi Huang', 'Easy').
difficulty('Wu Zetian', 'Medium').
difficulty('Yongle', 'Medium').
difficulty('Cleopatra', 'Medium').
difficulty('Ramses II', 'Hard').
difficulty('Elizabeth I', 'Medium').
difficulty('Victoria', 'Easy').
difficulty('Frederick Barbarossa', 'Hard').
difficulty('Ludwig II', 'Medium').
difficulty('Peter', 'Medium').
difficulty('Tomyris', 'Hard').
difficulty('Philip II', 'Easy').
difficulty('Gilgamesh', 'Medium').
difficulty('Kristina', 'Easy').
difficulty('Shaka', 'Hard').

difficulty_value('Easy', 1).
difficulty_value('Medium', 2).
difficulty_value('Hard', 3).


/*

   поиск континета по лидеру

*/
leader_location(Leader, Location) :-
    civilization(Leader, Nation),
    location(Nation, Location).


/*

  поиск воинствующих лидеров

*/
strong_war_leader(Leader) :-
    strength(Leader, 'War', Value),
    Value >= 4.

/*

  поиск научных лидеров, с маленькой верой

*/
science_focused_leader(Leader) :-
    strength(Leader, 'Science', ScienceValue),
    strength(Leader, 'Faith', FaithValue),
    ScienceValue >= 4,
    FaithValue < 3.
/*

  поиск культурных лидеров

*/
cultural_leader(Leader) :-
    strength(Leader, 'Culture', Value),
    Value >= 4.
/*

  поиск дипломатичных лидеров

*/
diplomatic_leader(Leader) :-
    strength(Leader, 'Diplomacy', Value),
    Value >= 4.

/*

  поиск универсальных лидеров

*/
versatile_leader(Leader) :-
    strength(Leader, 'Science', S),
    strength(Leader, 'Diplomacy', D),
    strength(Leader, 'War', W),
    strength(Leader, 'Culture', C),
    strength(Leader, 'Faith', F),
    S >= 3, D >= 3, W >= 3, C >= 3, F >= 3.


/*

  поиск самых легких универсальных лидеров

*/
easiest_versatile_leader(Leader) :-
    versatile_leader(Leader),
    difficulty(Leader, Difficulty),
    difficulty_value(Difficulty, Value),
    \+ (versatile_leader(OtherLeader),
        difficulty(OtherLeader, OtherDifficulty),
        difficulty_value(OtherDifficulty, OtherValue),
        OtherValue < Value).
