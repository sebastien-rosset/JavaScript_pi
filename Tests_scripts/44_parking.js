require("Consoles");
consoleHide();

consoleNames = ["ConsoleA", "1", "ConsoleC__Long", "ConsoleD", "ConsoleE"];

parkYourself = "consolePark();scriptResult('');";
shrinkYourself = "consoleName('2');scriptResult('');";
growYourself = "consoleName('Maximum_Length');scriptResult('');";
restoreName = "consoleName(\"" + consoleNames[consoleNames.length-1] + "\");scriptResult('');";
var console;

for (i = 0; i < consoleNames.length; i++){
	console = consoleNames[i];
	if (!consoleExists(console)) consoleAdd(console);
	consoleLoad(console, parkYourself);
	consoleRun(console);
	}
onSeconds(step1, 1);

function step1(){
	result = messageBox(consoleNames.length + " consoles should have been created and parked\nWidth of minimized windows with different name lengths  correct?", "YesNo");
	if (result == 0) throw("Parking tests cancelled");
	if (result != 2) throw("Parking tests reported wrong");

	consoleLoad(console, shrinkYourself);
	consoleRun(console);
	onSeconds(step2,1);
	}

function step2(){
	result = messageBox("Rightmost console has been renamed to '2'\Has width of minimized window has shrunk correctly?", "YesNo");
	if (result == 0) throw("Parking tests cancelled");
	if (result != 2) throw("Parking tests reported wrong");
	console = "2";
	consoleLoad(console, growYourself);
	consoleRun(console);
	onSeconds(step3, 1);
	}

function step3(){
	result = messageBox("Rightmost console has been renamed to 'Maximum_Length'\nHas width of minimized window grown as needed?", "YesNo");
	if (result == 0) throw("Parking tests cancelled");
	if (result != 2) throw("Parking tests reported wrong");
	console = "Maximum_Length";		
	consoleLoad(console, restoreName);
	consoleRun(console);
	onSeconds(deleteConsoles, 1);
	}

function deleteConsoles(){
	for (i = 0; i < consoleNames.length; i++){
		console = consoleNames[i];
		if (consoleExists(console)) consoleClose(console);
		}
	scriptResult("Parking completed");
	}
