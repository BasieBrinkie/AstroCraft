#priority 9000
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;

		/* 	
			---------------------------------------------------
			Check if the player changed from dimension and returns true.	
			---------------------------------------------------
		*/
		function changeAny() as bool {
			events.onPlayerChangedDimenion(function (event as PlayerChangedDimensionEvent) {

			});
		}

		/* 	
			---------------------------------------------------
			Check if player changed from a certain dimension and returns true.	
			---------------------------------------------------
		*/
		function changeFromCertain(fromDimension as int) {
			events.onPlayerChangedDimension(function (event as PlayerChangedDimensionEvent) {
				if (event.from = fromDimension) {
					
				};
			});
		}

		/* 	
			---------------------------------------------------
			Check if player changed from a certain dimension and returns true.	
			---------------------------------------------------
		*/
		function changeToCertain(toDimension as int) {
			events.onPlayerChangedDimension(function (event as PlayerChangedDimensionEvent)  {
				if (event.to = toDimension) {

				};
			});
		}

		/* 	
			---------------------------------------------------
			Check if player changed from a certain dimension to a certain dimension and returns true.	
			---------------------------------------------------
		*/
		function changeMatches(fromDimension as int, toDimension as int) {
			events.onPlayerChangedDimension( function(event as PlayerChangedDimensionEvent) {
				if (event.from = fromDimension & event.to = toDimension) {
				
				}
			}
		}
}