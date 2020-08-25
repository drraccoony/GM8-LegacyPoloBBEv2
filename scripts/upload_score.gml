//if global.enablehighscore=1
netread('http://therevolve.com/polo/users/capturePoloData.php?gameID='+string(global.gameID)+'&score='+string(global.overallscore)+'&playtime='+string(global.playtime)+'&deaths='+string(global.deaths)+'&version='+string(global.polo_version));

surf=surface_create(0,0)
if surface_exists(surf)
surface_free(surf)
game_end()
