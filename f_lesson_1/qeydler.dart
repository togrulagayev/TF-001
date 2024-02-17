// ! Flutter nədir?
// ! Flutter tətbiqlərin hazırlanmasına və ya inkişaf etdirilməsinə  imkan verən UI toolkitdir.
// ! UI - User Interface => İstifadəçi İnterfeysi - İstifadəçi ilə tətbiq arasında əlaqə qurulan hissədir.
// ! Flutter və Dart proqramlaşdırma dili Google tərəfindən yaradılmışdır.
// ! Flutter UI toolkiti 2 hissədən ibarətdir.
// ! 1. Flutter SDK (Software Development Kit) - Tətbiqin hazırlanmasına imkan verən alətlər toplusu.
// ! 2. Flutter Framework - Tətbiqin hazırlanmasına imkan verən quruluş.
// ! Flutter ilə  Android, iOS, Windows, Mac, Linux, web, TV və Smart wear üçün tətbiqlər hazırlana bilər.
// ! Flutter tətbiqləri Dart proqramlaşdırma dili ilə yazılır.

//* -----------------------------------------------------------------------------

// ! Yeni Flutter layihəsi yartamaq üçün Ctrl + J düymələrini sıxmaqla terminalı açırıq.
// ! Terminalda "flutter create ." yazaraq yeni layihə yarada bilərik. Burda "." layihənin mövcud qovluğun daxilində yaradılacağını bildirir.

// ! Flutter`in versiyasını yeniləmək üçün terminalda "flutter upgrade" yazaraq versiyasını yeniləyə bilərik.
// ! Flutter`in versiyasını yoxlamaq üçün terminalda "flutter --version" yazaraq versiyasını yoxlaya bilərik.
// ! Flutter`in quraşdırılmış olduğunu yoxlamaq üçün terminalda "flutter doctor" yazaraq yoxlaya bilərik.

//* -----------------------------------------------------------------------------

// ! Flutter layihəsindəki faylların təsnifatı:
// ! 1. android qovluğu - Android tətbiqi üçün fayllar. Biz burda heç bir dəyişiklik etməyəcəyik.
// ! 2. ios qovluğu - iOS tətbiqi üçün fayllar. Biz burda heç bir dəyişiklik etməyəcəyik.

//* ----------------------------------------------------------------------------------------------------------
// ? 3. lib qovluğu - Bizim tətbiqimiz üçün faylların yerləşdiyi qovluq. Bizim əsas işimiz burda baş verəcək.
//* ----------------------------------------------------------------------------------------------------------

// ! 4. test qovluğu - Tətbiqin testləri üçün faylların yerləşdiyi qovluq. Biz burda heç bir dəyişiklik etməyəcəyik.
// ! 5. linux qovluğu - Linux tətbiqi üçün fayllar. Biz burda heç bir dəyişiklik etməyəcəyik.
// ! 6. macos qovluğu - MacOS tətbiqi üçün fayllar. Biz burda heç bir dəyişiklik etməyəcəyik.
// ! 7. web qovluğu - Web tətbiqi üçün fayllar. Biz burda heç bir dəyişiklik etməyəcəyik.
// ! 8. windows qovluğu - Windows tətbiqi üçün fayllar. Biz burda heç bir dəyişiklik etməyəcəyik.

//* ----------------------------------------------------------------------------------------------------------
// ? 9. pubspec.yaml faylı - Layihənin təsviri və layihə üçün lazım olan bütün paketlərin quraşdırılması üçün lazım olan fayl.
// ? pubspec.yaml faylı 3-cü tərəf paketləri quraşdırmaq üçün lazımdır.
// ? pubspec.yaml faylında dəyişiklik etdikdən sonra "flutter pub get" yazaraq layihə üçün lazım olan bütün paketləri quraşdıra bilərik.
//* ----------------------------------------------------------------------------------------------------------


// ! Best practice - Ən yaxşı təcrübələr
// ! Flutter`də tətbiqləri hazırlayarkən maksimum 3 rəngdən istifadə etmək ən yaxşı təcrübələrdən biridir.