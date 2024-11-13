from pyswip import Prolog

prolog = Prolog()

prolog.consult("base.pl")

aspects = {
    "научн": "Science",
    "дипл": "Diplomacy",
    "воен": "War",
    "культур": "Culture",
    "религ": "Faith",
}


def get_customs_win_leaders(s: str):
    query = ""
    for i in aspects:
        if i in s:
            query += f"strength(Leader, '{aspects[i]}', {aspects[i][0]}), {aspects[i][0]} >= 4,"
    if query == "":
        print("Неудалось расспознать тип победы")
        return
    query = query.rstrip(',') + "."
    result = list(set([result['Leader'] for result in prolog.query(query)]))
    if result == []:
        print("Подходящих лидеров не найдено")
    print(result)


def get_all_leaders() -> list[str]:
    return [result['Leader'] for result in prolog.query("leader(Leader).")]


def get_dict_leaders_in_lowercase_and_uppercase() -> dict[str, str]:
    res = {}
    for leader in get_all_leaders():
        res[leader.lower()] = leader
    return res


def all_about_leader(s: str):
    leader_name = get_dict_leaders_in_lowercase_and_uppercase()[s.lstrip("все о").strip()]
    if leader_name == "":
        print("Лидер не распознан")
        return

    nation = [result['Nation'] for result in prolog.query(f"civilization('{leader_name}', Nation)")]
    if not nation:
        print(f"Лидер '{leader_name}' не найден в базе данных.")
        return

    location = [result['Location'] for result in prolog.query(f"location('{nation[0]}', Location)")]

    difficulty = [result['Difficulty'] for result in prolog.query(f"difficulty('{leader_name}', Difficulty)")]

    strengths = {}
    for aspect in ['Science', 'Diplomacy', 'War', 'Culture', 'Faith']:
        strength = [result['Value'] for result in prolog.query(f"strength('{leader_name}', '{aspect}', Value)")]
        if strength:
            strengths[aspect] = strength[0]

    print(f"Лидер: {leader_name}")
    print(f"Нация: {nation[0]}")
    print(f"Континент: {location[0]}")
    print(f"Сложность: {difficulty[0]}")
    print("Аспекты:")
    for aspect, value in strengths.items():
        print(f"  - {aspect}: {value}")


def get_help():
    return '''Это программа для работы с базой знания пролог по игре Civilisation VI
        Чтобы выйте нажмите Ctrl+C или напишите quit

        Здесь вы можете имена всех лидеров:
            "все лидеры"

        Здесь вы можете узнать всё о лидере:
            "все о <имя лидера>"

        Получить подборку лидеров по требованиям например
        "Подбери лидера для <тип рассматриваемых побед [военной, научной, культурной, дипломатичной, религиозной]> победы"
        или сокращенно
        "лидер для <тип рассматриваемых побед [военной, научной, культурной, дипломатичной, религиозной]>"
        
        чтобы увидеть это окно ещу раз введите: help или помощь
        '''


if __name__ == "__main__":
    print(get_help())
    try:
        while True:
            s = input().lower()
            if str == "quit":
                raise KeyboardInterrupt
            if "лидер для" in s:
                get_customs_win_leaders(s)
            if "все лидеры" in s:
                print(get_all_leaders())
            if "все о" in s or "всё о" in s:
                all_about_leader(s)
            if "помощь" in s or "help" in s:
                print(get_help())


    except KeyboardInterrupt:
        print("Выход")
