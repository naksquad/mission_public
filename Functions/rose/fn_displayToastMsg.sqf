params ["_headerMessage", "_messageObjective", "_messageNewObjective", "_messageObjectiveDetails", "_messageObjectiveEnd"];

private _imagePath = selectRandom ['Media\images\naksquad1.paa', 'Media\images\nakDonor.paa', 'Media\images\nakcommand.paa', 'Media\images\NAKSquad512.paa', 'Media\images\naktac.paa', 'Media\images\nakzeus.paa'];

private _completeText = format[
	"<t align='center'><t size='2.2' color='#FFD700' font='RobotoCondensedBold'>%1</t><br/><img size='7' image='%2'/><br/><br/><t color='#5e8f09' font='RobotoCondensedBold'>%3</t><br/><t color='#1f7bcc' font='RobotoCondensedBold'>%4</t><br/><br/>%5<br/>_____________________________________<br/><t color='#ba0606' font='RobotoCondensedBold'>%6</t></t>", _headerMessage,_imagePath,_messageObjective,_messageNewObjective, _messageObjectiveDetails,_messageObjectiveEnd];
	
[_completeText] remoteExec ["NAK_fnc_globalHint", -2, true];