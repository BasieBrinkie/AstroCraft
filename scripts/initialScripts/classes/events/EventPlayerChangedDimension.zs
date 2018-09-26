import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;

zenClass eventPlayerChangedDimension {
		zenConstructor() {}

		event as PlayerChancedDimensionEvent;

		/* 	
			---------------------------------------------------
			Check if the player changed from dimension and returns true.	
			---------------------------------------------------
		*/
		function changeAny() as bool {
			events.onPlayerChangedDimenion(function (event) as bool {
				return true;
			});
		}

		/* 	
			---------------------------------------------------
			Check if player changed from a certain dimension and returns true.	
			---------------------------------------------------
		*/
		function changeFromCertain(fromDimension as int) as bool {
			events.onPlayerChangedDimension(function (event, fromDimension as int) as bool {
				if (event.from = fromDimension) {
					return true;
				};
			});
		}

		/* 	
			---------------------------------------------------
			Check if player changed from a certain dimension and returns true.	
			---------------------------------------------------
		*/
		function changeToCertain(toDimension as int) as bool {
			events.onPlayerChangedDimension(function (event, toDimension as int) as bool {
				if (event.to = toDimension) {
					return true;
				};
			});
		}

		/* 	
			---------------------------------------------------
			Check if player changed from a certain dimension to a certain dimension and returns true.	
			---------------------------------------------------
		*/
		function changeMatches(fromDimension as int, toDimension as int) as bool {
			events.onPlayerChangedDimension( function(event, fromDimension as int, toDimension as int) as bool)
			if (event.from = fromDimension & event.to = toDimension) {
				return true;
			}
		}
}