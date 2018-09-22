import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;

zenClass {
	zenConstructor() {}

	event as PlayerLoggedInEvent;

	function logIn() as bool {
		events.onPlayerLoggedIn( function(event) {
			return true;
		});
	}
}
