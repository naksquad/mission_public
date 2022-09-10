#include "..\DefinePrice.hpp"
_dispay = _this # 0;
disableSerialization;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;

private _daytime = daytime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];
//(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];

(_dispay displayCtrl 1101) ctrlSetStructuredText parseText "
<t size= '1.3' align='center' underline='true' href='https://www.naksquad.net/nak-server-rules/' color='#fce253' >Server Rules</t>
<br /><br />
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #01</a> No Racism.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #02</a> No impersonating an admin.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #03</a> No intentional team killing.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #04</a> No griefing or harassment.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #05</a> No firing at base.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #06</a> No wasting server assets.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #07</a> No using voice in restricted channels, spamming, broadcasting music, use of any voice modulators or voice changers.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #08</a> Names used in TeamSpeak must match your in-game profile name.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #09</a> No playing as infantry while in the pilot slot.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #10</a> No arguing with the administration.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #11</a> No pilots, UAV operator, or ATC may play without being on the NAK Squad TeamSpeak server (excluding nak elite). No pilot may be afk. No players in the “pilots” channel may mute all communication, which includes being “away” in TeamSpeak.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #12</a> No users under 16 years of age.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #13</a> No verbal abuse.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #14</a> No use of language or profile names that are lewd, obscene, vulgar, discriminatory, hate speech, promoting violence, drug use or any illegal activity, promoting crimes against humanity, genocide or torture, or is otherwise objectionable.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #15</a> No recruiting.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #16</a> No posting of inappropriate or harmful links or content<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #17</a> No recording or streaming of teamspeak.<br/>
<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #18</a> No cheating or <a href='https://www.naksquad.net/mods'>unapproved mods.</a>"


