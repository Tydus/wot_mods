﻿/**
 * Color settings.
 * Настройки цветов.
 */
{
  // Color values for substitutions.
  // Значения цветов для подстановок.
  "def": {
    "al": "0x96FF00", // ally       / союзник
    "sq": "0xFFCB00", // squadman   / взводный
    "tk": "0x00EAFF", // teamKiller / тимкиллер
    "en": "0xF50800", // enemy      / противник
    "pl": "0xFFDD33", // player     / игрок
	"my_sq": "0xFFCB00", // пользовательский цвет совзводного
	"my_sq2": "0x0059FF", // пользовательский цвет урона по совзводному
    // Dynamic color by various statistical parameters.
    // Динамический цвет по различным статистическим показателям.
    "colorRating": {
      "undefined":    "0xFCFCFC",   // undefined  / неопределенно
      "very_bad":     "0xFE0E00",   // very bad   / очень плохо
      "bad":          "0xFE7903",   // bad        / плохо
      "normal":       "0xF8F400",   // normal     / средне
      "good":         "0x60FF00",   // good       / хорошо
      "very_good":    "0x00FFDB",   // very good  / очень хорошо
      "unique":       "0xD042F3",   // unique     / уникально
	// пользовательские цвета
	  "my_color_1":   "0xFF0066",   // my_color_1 / пользов. цвет 1
	  "my_color_2":   "0xCC0000",   // my_color_2 / пользов. цвет 2
	  "my_color_3":   "0xFFCC33",   // my_color_3 / пользов. цвет 3
	  "my_color_4":   "0x009900",   // my_color_4 / пользов. цвет 4
	  "my_color_5":   "0x6633FF",   // my_color_5 / пользов. цвет 5
	  "my_color_6":   "0xFFD700"    // my_color_6 / пользов. цвет 6
    },
    // Dynamic color by remaining health points.
    // Динамический цвет по оставшемуся запасу прочности.
    "colorHP": {
      "very_low":         "0xFF0000",   // very low       / очень низкий
      "low":              "0xDD4444",   // low            / низкий
      "average":          "0xFFCC22",   // average        / средний
      "above_average":    "0xFCFCFC"    // above-average  / выше среднего
    }
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state
      // Object:      ally, squadman, teamKiller, enemy
      // State:       alive, dead, blowedup
      // ----
      // Формат: объект_состояние
      // Объект:      ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние:   alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      "ally_alive":          ${"def.al"},
      "ally_dead":           "0x009900",
      "ally_blowedup":       "0x007700",
      "squadman_alive":      ${"def.sq"},
      "squadman_dead":       "0xCA7000",
      "squadman_blowedup":   "0xA45A00",
      "teamKiller_alive":    ${"def.tk"},
      "teamKiller_dead":     "0x097783",
      "teamKiller_blowedup": "0x096A75",
      "enemy_alive":         ${"def.en"},
      "enemy_dead":          "0x840500",
      "enemy_blowedup":      "0x5A0401"
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "attack": "0xFFAA55",          // attack / атака
      "fire": "0xFF6655",            // fire / пожар
      "ramming": "0x998855",         // ramming / таран
      "world_collision": "0x228855", // world collision / столкновение с объектами, падение
      "other": "0xCCCCCC"            // other / другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT":  "0xA2FF9A",
      // Цвет для средних танков.
      "MT":  "0xFFF198",
      // Цвет для тяжелых танков.
      "HT":  "0xFFACAC",
      // Цвет для арты.
      "SPG": "0xEFAEFF",
      // Цвет для ПТ.
      "TD":  "0xA0CFFF",
      // Цвет для премиумной техники.
      "premium": "0xFFCC66",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Color settings for damage.
    // Настройки цвета для урона.
    "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник:   ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип:        hit - попадание, kill - убийство, blowup - боеукладка.
      "ally_ally_hit":		${"def.tk"},
      "ally_ally_kill":		${"def.tk"},
      "ally_ally_blowup":	${"def.tk"},
      "ally_squadman_hit":	${"def.tk"},
      "ally_squadman_kill":	${"def.tk"},
      "ally_squadman_blowup":	${"def.tk"},
      "ally_enemy_hit":		${"def.en"},
      "ally_enemy_kill":	${"def.en"},
      "ally_enemy_blowup":	${"def.en"},
      "ally_allytk_hit":	${"def.tk"},
      "ally_allytk_kill":	${"def.tk"},
      "ally_allytk_blowup":	${"def.tk"},
      "ally_enemytk_hit":	${"def.en"},
      "ally_enemytk_kill":	${"def.en"},
      "ally_enemytk_blowup":	${"def.en"},
      "squadman_ally_hit":	${"def.my_sq"},
      "squadman_ally_kill":	${"def.my_sq"},
      "squadman_ally_blowup":	${"def.my_sq"},
      "squadman_squadman_hit":	${"def.my_sq"},
      "squadman_squadman_kill":	${"def.my_sq"},
      "squadman_squadman_blowup":	${"def.my_sq"},
      "squadman_enemy_hit":	${"def.my_sq"},
      "squadman_enemy_kill":	${"def.my_sq"},
      "squadman_enemy_blowup":	${"def.my_sq"},
      "squadman_allytk_hit":	${"def.my_sq"},
      "squadman_allytk_kill":	${"def.my_sq"},
      "squadman_allytk_blowup":	${"def.my_sq"},
      "squadman_enemytk_hit":	${"def.my_sq"},
      "squadman_enemytk_kill":	${"def.my_sq"},
      "squadman_enemytk_blowup":${"def.my_sq"},
      "enemy_ally_hit":		${"def.al"},
      "enemy_ally_kill":	${"def.al"},
      "enemy_ally_blowup":	${"def.al"},
      "enemy_squadman_hit":	${"def.sq"},
      "enemy_squadman_kill":	${"def.sq"},
      "enemy_squadman_blowup":	${"def.sq"},
      "enemy_enemy_hit":	${"def.en"},
      "enemy_enemy_kill":	${"def.en"},
      "enemy_enemy_blowup":	${"def.en"},
      "enemy_allytk_hit":	${"def.al"},
      "enemy_allytk_kill":	${"def.al"},
      "enemy_allytk_blowup":	${"def.al"},
      "enemy_enemytk_hit":	${"def.en"},
      "enemy_enemytk_kill":	${"def.en"},
      "enemy_enemytk_blowup":	${"def.en"},
      "unknown_ally_hit":	${"def.al"},
      "unknown_ally_kill":	${"def.al"},
      "unknown_ally_blowup":	${"def.al"},
      "unknown_squadman_hit":	${"def.sq"},
      "unknown_squadman_kill":	${"def.sq"},
      "unknown_squadman_blowup":${"def.sq"},
      "unknown_enemy_hit":	${"def.en"},
      "unknown_enemy_kill":	${"def.en"},
      "unknown_enemy_blowup":	${"def.en"},
      "unknown_allytk_hit":	${"def.al"},
      "unknown_allytk_kill":	${"def.al"},
      "unknown_allytk_blowup":	${"def.al"},
      "unknown_enemytk_hit":	${"def.en"},
      "unknown_enemytk_kill":	${"def.en"},
      "unknown_enemytk_blowup":	${"def.en"},
      "player_ally_hit":	${"def.pl"},
      "player_ally_kill":	${"def.pl"},
      "player_ally_blowup":	${"def.pl"},
      "player_squadman_hit":	${"def.my_sq2"},
      "player_squadman_kill":	${"def.my_sq2"},
      "player_squadman_blowup":	${"def.my_sq2"},
      "player_enemy_hit":	${"def.pl"},
      "player_enemy_kill":	${"def.pl"},
      "player_enemy_blowup":	${"def.pl"},
      "player_allytk_hit":	${"def.tk"},
      "player_allytk_kill":	${"def.tk"},
      "player_allytk_blowup":	${"def.tk"},
      "player_enemytk_hit":	${"def.pl"},
      "player_enemytk_kill":	${"def.pl"},
      "player_enemytk_blowup":	${"def.pl"}
    },
    // Values below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 201,  "color": ${"def.colorHP.very_low"     } },      // Цвет для значений менее 201
      { "value": 401,  "color": ${"def.colorHP.low"          } },      // Цвет для значений менее 401
      { "value": 1001, "color": ${"def.colorHP.average"      } },      // Цвет для значений менее 1001
      { "value": 9999, "color": ${"def.colorHP.above_average"} }       // Цвет для остальных значений
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 10,  "color": ${"def.colorHP.very_low"     } },       // Цвет для значений менее 10 проц
      { "value": 25,  "color": ${"def.colorHP.low"          } },       // Цвет для значений менее 25 проц
      { "value": 50,  "color": ${"def.colorHP.average"      } },       // Цвет для значений менее 50 проц
      { "value": 101, "color": ${"def.colorHP.above_average"} }        // Цвет для остальных значений
    ],
    // Dynamic color for XVM Scale (only with xvm-stat).
    // Динамический цвет по шкале XVM (только с xvm-stat).
    // http://www.koreanrandom.com/forum/topic/2625-/
    "x": [
      { "value": 17,  "color": ${"def.colorRating.my_color_1" } },   // 00   - 16.5 - very bad   (20% of players)
      { "value": 34,  "color": ${"def.colorRating.my_color_2" } },   // 16.5 - 33.5 - bad        (better then 20% of players)
      { "value": 53,  "color": ${"def.colorRating.my_color_3" } },   // 33.5 - 52.5 - normal     (better then 60% of players)
      { "value": 76,  "color": ${"def.colorRating.good"       } },   // 52.5 - 75.5 - good       (better then 90% of players)
      { "value": 93,  "color": ${"def.colorRating.my_color_4" } },   // 75.5 - 92.5 - very good  (better then 99% of players)
      { "value": 999, "color": ${"def.colorRating.my_color_5" } }    // 92.5 - XX   - unique     (better then 99.9% of players)
    ],
    // Dynamic color by efficiency (only with xvm-stat).
    // Динамический цвет по эффективности (только с xvm-stat).
    "eff": [
      { "value": 645,  "color": ${"def.colorRating.my_color_2" } },  //    0 - 644  - very bad
      { "value": 900,  "color": ${"def.colorRating.my_color_2" } },  //  645 - 874  - bad
      { "value": 1200, "color": ${"def.colorRating.my_color_6" } },  //  875 - 1154 - normal
      { "value": 1500, "color": ${"def.colorRating.my_color_4" } },  // 1155 - 1469 - good
      { "value": 1800, "color": ${"def.colorRating.very_good"  } },  // 1470 - 1739 - very good
      { "value": 9999, "color": ${"def.colorRating.my_color_5" } }   // 1740 - *    - unique
    ],
    // Dynamic color by WN6 rating (only with xvm-stat).
    // Динамический цвет по рейтингу WN6 (только с xvm-stat).
    "wn": [
      { "value": 435,  "color": ${"def.colorRating.my_color_1" } },  //    0 - 434  - very bad
      { "value": 805,  "color": ${"def.colorRating.my_color_2" } },  //  435 - 804  - bad
      { "value": 1200, "color": ${"def.colorRating.my_color_3" } },  //  805 - 1199 - normal
      { "value": 1595, "color": ${"def.colorRating.good"       } },  // 1200 - 1594 - good
      { "value": 1900, "color": ${"def.colorRating.my_color_4" } },  // 1595 - 1899 - very good
      { "value": 9999, "color": ${"def.colorRating.my_color_5" } }   // 1900 - *    - unique
    ],
    // Dynamic color by TEFF (E) rating (only with xvm-stat).
    // Динамический цвет по рейтингу TEFF (E) (только с xvm-stat).
    "e": [
      { "value": 0.01, "color": ${"def.colorRating.undefined"} },
      { "value": 2,    "color": ${"def.colorRating.very_bad" } },
      { "value": 4,    "color": ${"def.colorRating.bad"      } },
      { "value": 5,    "color": ${"def.colorRating.normal"   } },
      { "value": 7,    "color": ${"def.colorRating.good"     } },
      { "value": 9,    "color": ${"def.colorRating.very_good"} },
      { "value": 20,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by win percent (only with xvm-stat).
    // Динамический цвет по проценту побед (только с xvm-stat).
    "rating": [
      { "value": 47,  "color": ${"def.colorRating.my_color_2" } },   //  0   - 46.5  - very bad
      { "value": 49,  "color": ${"def.colorRating.my_color_2" } },   // 46.5 - 48.5  - bad
      { "value": 52,  "color": ${"def.colorRating.my_color_3" } },   // 48.5 - 51.5  - normal
      { "value": 57,  "color": ${"def.colorRating.good"       } },   // 51.5 - 56.5  - good
      { "value": 64,  "color": ${"def.colorRating.my_color_4" } },   // 56.5 - 63.5  - very good
      { "value": 101, "color": ${"def.colorRating.my_color_5" } }    // 63.5 - 100   - unique
    ],
    // Dynamic color by TWR (T-Calc) (only with xvm-stat).
    // Динамический цвет по TWR (T-Calc) (только с xvm-stat).
    "twr": [
      { "value": 47,  "color": ${"def.colorRating.very_bad" } },   //  0   - 46.5  - very bad
      { "value": 49,  "color": ${"def.colorRating.bad"      } },   // 46.5 - 48.5  - bad
      { "value": 52,  "color": ${"def.colorRating.normal"   } },   // 48.5 - 51.5  - normal
      { "value": 57,  "color": ${"def.colorRating.good"     } },   // 51.5 - 56.5  - good
      { "value": 62,  "color": ${"def.colorRating.very_good"} },   // 56.5 - 61.5  - very good
      { "value": 101, "color": ${"def.colorRating.unique"   } }    // 61.5 - 100   - unique
    ],
    // Dynamic color by kilo-battles (only with xvm-stat).
    // Динамический цвет по количеству кило-боев (только с xvm-stat).
    "kb": [
      { "value": 2,   "color": ${"def.colorRating.my_color_2" } },   //  0 - 1
      { "value": 5,   "color": ${"def.colorRating.my_color_2" } },   //  2 - 4
      { "value": 9,   "color": ${"def.colorRating.my_color_3" } },   //  5 - 8
      { "value": 14,  "color": ${"def.colorRating.my_color_4" } },   //  9 - 13
      { "value": 20,  "color": ${"def.colorRating.my_color_4" } },   // 14 - 19
      { "value": 999, "color": ${"def.colorRating.my_color_5" } }    // 20 - *
    ],
    // Dynamic color by battles on current tank (only with xvm-stat).
    // Динамический цвет по количеству боев на текущем танке (только с xvm-stat).
    "t_battles": [
      { "value": 100,   "color": ${"def.colorRating.my_color_2" } }, //    0 - 99
      { "value": 250,   "color": ${"def.colorRating.my_color_2" } }, //  100 - 249
      { "value": 500,   "color": ${"def.colorRating.my_color_3" } }, //  250 - 499
      { "value": 1000,  "color": ${"def.colorRating.my_color_4" } }, //  500 - 999
      { "value": 1800,  "color": ${"def.colorRating.my_color_4" } }, // 1000 - 1799
      { "value": 99999, "color": ${"def.colorRating.my_color_5" } }  // 1800 - *
    ],
    // Dynamic color by average damage on current tank (only with xvm-stat).
    // Динамический цвет по среднему урону за бой на текущем танке (только с xvm-stat).
    "tdb": [
      { "value": 1,    "color": ${"def.colorRating.undefined"} },
      { "value": 500,  "color": ${"def.colorRating.very_bad" } },
      { "value": 1000, "color": ${"def.colorRating.normal"   } },
      { "value": 2000, "color": ${"def.colorRating.good"     } }
    ],
    // Dynamic color by average damage efficiency on current tank (only with xvm-stat).
    // Динамический цвет по эффективности урона за бой на текущем танке (только с xvm-stat).
    "tdv": [
      { "value": 0.01, "color": ${"def.colorRating.undefined"} },
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by average frags per battle on current tank (only with xvm-stat).
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке (только с xvm-stat).
    "tfb": [
      { "value": 0.01, "color": ${"def.colorRating.undefined"} },
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by number of spotted enemies per battle on current tank (only with xvm-stat).
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке (только с xvm-stat).
    "tsb": [
      { "value": 0.01, "color": ${"def.colorRating.undefined"} },
      { "value": 0.6,  "color": ${"def.colorRating.very_bad" } },
      { "value": 0.8,  "color": ${"def.colorRating.bad"      } },
      { "value": 1.0,  "color": ${"def.colorRating.normal"   } },
      { "value": 1.3,  "color": ${"def.colorRating.good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.very_good"} },
      { "value": 15,   "color": ${"def.colorRating.unique"   } }
    ]
  }
}
