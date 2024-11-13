
/*
	1. определение нации
*/
civilization('Basil II', Civilization).


/*
	2. определение воинственных лидеров
*/
strong_war_leader(Leader).

/*
	3. Создание списка лидеров, чья нация появляется в Азии
*/
findall(Leader, (leader_location(Leader, 'Europe')), Leaders).
/*
	4. Лидеры, которые слабы в вере
*/
strength(Leader, 'Faith', FaithValue),
FaithValue < 3.
/*
	5. самые легкие универсальные лидеры
*/
versatile_leader(Leader),
    difficulty(Leader, Difficulty),
    difficulty_value(Difficulty, Value),
    \+ (versatile_leader(OtherLeader),
        difficulty(OtherLeader, OtherDifficulty),
        difficulty_value(OtherDifficulty, OtherValue),
        OtherValue < Value).