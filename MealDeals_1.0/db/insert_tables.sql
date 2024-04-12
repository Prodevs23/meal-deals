#Insert categories
INSERT INTO categories (category_name)
VALUE ('fűszer'), ('zöldség'), ('gyümölcs'), ('hús'),
      ('hal'), ('tejtermék'), ('édesítők'), ('gabonafélék/liszt'),
      ('zsiradék'), ('olajos magvak'), ('egyéb');

#Insert measure_units
INSERT INTO measure_unit (measure_unit_name)
VALUE ('kg'), ('gramm'), ('db'), ('evőkanál'),
      ('teáskanál'), ('csipet'), ('tubus');

#Insert allergies
INSERT INTO allergies (allergie_name)
VALUE ('glutén'), ('laktóz'), ('mogyorófélék'), ('édesség');
