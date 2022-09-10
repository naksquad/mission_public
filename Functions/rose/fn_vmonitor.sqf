#include "unitDefines.hpp"
private ["_theboard","_caller","_lapos","_theLastKiller","_uid","_leblocker","_blockchecker","_iud2"];

_theboard = _this # 0;
_caller = _this # 1;
_lapos = _this select 3 select 0;

_theLastKiller = [[15057.7,17075.7,0],[15066.3,16999.5,0],[15087.6,17229.1,0.0769997],[15062,17156.5,0],[15108.1,17254.1,0.0779991],[15139,16988.5,0],[15135.3,17271.7,0],[14423,16248.4,0],
[14396,16297.7,0],[14342.8,16318.1,-0.0245266],[14285.9,16337,0],[14264.4,16298.2,-3.8147e-006],[14166.6,16192.3,0],[14223.4,16164.7,0.156],
[23502.7,26538.1,236.566],[23492.9,26522.2,238.578],[23486.4,26505.7,239.731],[23514.4,26524.6,235.838],[23478.1,26489.8,239.796],
[23570.6,26523.4,232.819],[23582.9,26550.3,234.005],[23603.3,26595.6,226.16],[23530.3,26591.2,235.855],[23539.1,26605.5,233.486],[26874,24794.8,2.47955e-005],[26901.4,24857.4,0],
[26942,24822.4,0],[26979.4,24861,0],[27019.7,24896.3,-1.90735e-006],[27055.9,24930.6,-0.000267029],[27031.1,24965,-0.00279617],[26991.1,24935.5,-1.90735e-006],[26949.6,24896.3,-2.09808e-005],
[27123.7,24872.2,0],[26991.6,24664.5,0.485001]];

switch (_lapos) do {
    case [15057.7,17075.7,0] : {             _leblocker = "datatrain1";    };
    case [15066.3,16999.5,0] : {             _leblocker = "datatrain2";    };
	case [15087.6,17229.1,0.0769997] : {     _leblocker = "datatrain3";    };
    case [15062,17156.5,0] : {               _leblocker = "datatrain4";    };
	case [15108.1,17254.1,0.0779991] : {     _leblocker = "datatrain5";    };
    case [15139,16988.5,0] : {               _leblocker = "datatrain6";    };
	case [15135.3,17271.7,0] : {             _leblocker = "datatrain7";    };
    case [14423,16248.4,0] : {               _leblocker = "datatrain8";    };
	case [14396,16297.7,0] : {               _leblocker = "datatrain9";    };
    case [14342.8,16318.1,-0.0245266] : {    _leblocker = "datatrain10";   };
	case [14285.9,16337,0] : {               _leblocker = "datatrain11";   };
    case [14264.4,16298.2,-3.8147e-006] : {  _leblocker = "datatrain12";   };
	case [14166.6,16192.3,0] : {             _leblocker = "datatrain13";   };
    case [14223.4,16164.7,0.156] : {         _leblocker = "datatrain14";   };
	case [14762.1,16196.5,0] : {             _leblocker = "datatrain15";   };
    case [14799.1,16235.3,0] : {             _leblocker = "datatrain16";   };
	case [14829,16263,0.0209999] : {         _leblocker = "datatrain17";   };
    case [23502.7,26538.1,236.566] : {       _leblocker = "datatrain18";   };
	case [23492.9,26522.2,238.578] : {       _leblocker = "datatrain19";   };
    case [23486.4,26505.7,239.731] : {       _leblocker = "datatrain20";   };
	case [23514.4,26524.6,235.838] : {       _leblocker = "datatrain21";   };
    case [14317.1,16329.4,-1.90735e-006] : { _leblocker = "datatrain22";   };
	case [23570.6,26523.4,232.819] : {       _leblocker = "datatrain23";   };
    case [23582.9,26550.3,234.005] : {       _leblocker = "datatrain24";   };    
    case [23603.3,26595.6,226.16] : {        _leblocker = "datatrain25";   };
	case [23530.3,26591.2,235.855] : {       _leblocker = "datatrain26";   };
    case [23539.1,26605.5,233.486] : {       _leblocker = "datatrain27";   };
	case [26874,24794.8,2.47955e-005] : {    _leblocker = "datatrain28";   };
    case [26901.4,24857.4,0] : {             _leblocker = "datatrain29";   };
	case [26942,24822.4,0] : {               _leblocker = "datatrain30";   };
    case [26979.4,24861,0] : {               _leblocker = "datatrain31";   };
	case [27019.7,24896.3,-1.90735e-006] : { _leblocker = "datatrain32";   };
    case [27055.9,24930.6,-0.000267029] : {  _leblocker = "datatrain33";   };
	case [27031.1,24965,-0.00279617] : {     _leblocker = "datatrain34";   };
    case [26991.1,24935.5,-1.90735e-006] : { _leblocker = "datatrain35";   };    
    case [26949.6,24896.3,-2.09808e-005] : { _leblocker = "datatrain36";   };
	case [27123.7,24872.2,0] : {             _leblocker = "datatrain37";   };
    case [26991.6,24664.5,0.485001] : {      _leblocker = "datatrain38";   };
	case [] : {                              _leblocker = "datatrain39";   };
	case [26972.1,24780,-0.000133514] : {    _leblocker = "datatrain40";   };
	case [26983.5,24791.7,3.8147e-005] : {   _leblocker = "datatrain41";   };
	case [26998.4,24804.5,-9.91821e-005] : { _leblocker = "datatrain42";   };
	case [27014.2,24819.4,0] : {             _leblocker = "datatrain43";   };
	case [27030.1,24840.4,0] : {             _leblocker = "datatrain44";   };
	case [27044.7,24856.8,-0.18] : {         _leblocker = "datatrain45";   };
	case [27060,24872.5,1.90735e-006] : {    _leblocker = "datatrain46";   };
	case [27013.5,24748.5,0.0380001] : {     _leblocker = "datatrain47";   };
	case [27025.3,24762.1,-1.71661e-005] : { _leblocker = "datatrain48";   };
	case [27040.1,24776.5,-9.53674e-006] : { _leblocker = "datatrain49";   };
	case [27056.8,24793.3,0] : {             _leblocker = "datatrain51";   };
	case [27070.5,24808.8,-6.67572e-005] : { _leblocker = "datatrain52";   };
	case [27083.4,24823.6,-2.86102e-005] : { _leblocker = "datatrain53";   };
	case [27097.5,24840,1.90735e-006] : {    _leblocker = "datatrain54";   };
	case [27046.1,24711.5,0] : {             _leblocker = "datatrain55";   };
	case [27061.1,24730.2,-0.000144958] : {  _leblocker = "datatrain56";   };
	case [27075.6,24747,0] : {               _leblocker = "datatrain57";   };
	case [27089.6,24762.9,-0.000183105] : {  _leblocker = "datatrain58";   };
	case [27104.4,24779.3,-0.000112534] : {  _leblocker = "datatrain59";   };
	case [27119.8,24795.8,-1.90735e-006] : { _leblocker = "datatrain61";   };
	case [14598.6,16915.1,-9.53674e-006] : { _leblocker = "datatrain62";   };
	case [14607.1,16907.4,0] : {             _leblocker = "datatrain63";   };
	case [14618.6,16895.4,-7.62939e-006] : { _leblocker = "datatrain64";   };
	case [14610.4,16844.4,-0.000213623] : {  _leblocker = "datatrain65";   };
	case [14598.7,16832.4,-1.33514e-005] : { _leblocker = "datatrain66";   };
	case [14585,16818.2,0] : {               _leblocker = "datatrain67";   };
	case [14572.4,16805.5,-1.90735e-006] : { _leblocker = "datatrain68";   };
	case [14558.7,16791.5,-0.000579834] : {  _leblocker = "datatrain69";   };
	case [14547.9,16781,-5.14984e-005] : {   _leblocker = "datatrain70";   };
	case [14596.1,16847.7,-3.8147e-005] : {  _leblocker = "datatrain71";   };
	case [14587,16839,-0.000120163] : {      _leblocker = "datatrain72";   };
	case [14576.6,16827.8,-5.53131e-005] : { _leblocker = "datatrain73";   };
	case [14565.8,16816.9,-2.67029e-005] : { _leblocker = "datatrain74";   };
	case [14555.2,16806,-1.90735e-006] : {   _leblocker = "datatrain75";   };
	case [14545.7,16797.6,-0.00104141] : {   _leblocker = "datatrain76";   };
	case [14583.3,16861,-1.90735e-006] : {   _leblocker = "datatrain77";   };
	case [14571.3,16849.8,-0.000247955] : {  _leblocker = "datatrain78";   };
	case [14559,16838,0] : {                 _leblocker = "datatrain79";   };
	case [14547.4,16825.7,1.90735e-006] : {  _leblocker = "datatrain80";   };
	case [14537.5,16815.1,0] : {             _leblocker = "datatrain81";   };
	case [14528.5,16806.1,0] : {             _leblocker = "datatrain82";   };
	case [14500.2,16792.6,0] : {             _leblocker = "datatrain83";   };
	case [14492,16800.9,-1.14441e-005] : {   _leblocker = "datatrain84";   };
	case [14483.2,16810.5,-1.90735e-006] : { _leblocker = "datatrain85";   };
	case [12875.3,16740.7,0] : {             _leblocker = "datatrain86";   };
	case [12832.1,16737.7,-0.00289917] : {   _leblocker = "datatrain87";   };
	case [15064.5,17190,0] : {               _leblocker = "datatrain88";   };
	case [15182.4,17215.6,-1.52588e-005] : { _leblocker = "datatrain89";   };
	case [15192.2,17226.6,0] : {             _leblocker = "datatrain90";   };
	case [14824,16215.4,0.0200005] : {       _leblocker = "datatrain91";   };
	case [14841.9,16279.5,0] : {             _leblocker = "datatrain92";   };
	case [23593.9,26575.7,232.447] : {       _leblocker = "datatrain93";   };
	case [23591.1,26566.9,232.58] : {        _leblocker = "datatrain94";   };
	case [] : {                              _leblocker = "datatrain95";   };
	case [26490.8,24665.8,5.742] : {         _leblocker = "datatrain96";   };
	case [26493.4,24677.8,4.66019] : {       _leblocker = "datatrain97";   };
	case [26497.1,24693.9,4.327] : {         _leblocker = "datatrain98";   };
	case [26499.9,24709.3,3.01] : {          _leblocker = "datatrain99";   };
	case [26504.1,24727.2,4.995] : {         _leblocker = "datatrain100";  };
	case [26520.6,24755.3,4.03535] : {       _leblocker = "datatrain101";  };
	case [22753.2,13812.6,1.94711] : {       _leblocker = "datatrain102";  };
	case [22737.2,13825,3.35616] : {         _leblocker = "datatrain103";  };
	case [22766.2,13829,1.31419] : {         _leblocker = "datatrain104";  };
	case [22750.5,13841,2.92633] : {         _leblocker = "datatrain105";  };
	case [2542.72,9887.07,1.1664] : {        _leblocker = "datatrain106";  };
	case [2548.08,9898.63,1.01226] : {       _leblocker = "datatrain107";  };
	case [8820.68,25035.5,2.31875] : {       _leblocker = "datatrain108";  };
	case [17809.9,18155.2,3.84722] : {       _leblocker = "datatrain109";  };
	case [17809.6,18175,3.33078] : {         _leblocker = "datatrain110";  };
	case [2553.47,9908.65,0.461353] : {      _leblocker = "datatrain111";  };
	case [8812.83,25029.1,1.5493] : {        _leblocker = "datatrain112";  };
	case [17785.6,18197.5,4.04419] : {       _leblocker = "datatrain113";  };
	case [2553.38,9915.38,0.690959] : {      _leblocker = "datatrain114";  };
	case [8825.28,25041.9,2.03112] : {       _leblocker = "datatrain115";  };
	case [17805.1,18143.7,3.95776] : {       _leblocker = "datatrain116";  };
	case [15335.3,15759.5,11.7185] : {       _leblocker = "datatrain117";  };
	case [15405.9,15831.3,2.592] : {         _leblocker = "datatrain118";  };
	case [15453.9,15811.6,6.3382] : {        _leblocker = "datatrain119";  };
	case [15356.4,15769.7,9.07799] : {       _leblocker = "datatrain120";  };
	case [15458.8,15783.2,9.26031] : {       _leblocker = "datatrain121";  };
	case [15500.4,15747.5,8.7258] : {        _leblocker = "datatrain122";  };
	case [15344.1,15818.3,5.82019] : {       _leblocker = "datatrain123";  };
	case [14317.2,16328.2,0]       : {       _leblocker = "datatrain124";  };
	case [23457.8,26461.5,240.46] : {        _leblocker = "datatrain125";  };
	case [26528.5,24767.1,2.2878] : {       _leblocker = "datatrain126";   };
	case [8812.4,25024.7,1.05242] : {       _leblocker = "datatrain127";   };
	case [17790.2,18140.8,3.97601] : {      _leblocker = "datatrain128";   };
	case [15331.5,15777.5,8.84579] : {      _leblocker = "datatrain129";   };
	case [22736.9,13842.2,3.58706] : {      _leblocker = "datatrain130";   };
	case [2541.11,9926.01,0.410799] : {     _leblocker = "datatrain131";   };
	case [14492.1,16833.3,0] : {            _leblocker = "datatrain132";   };
	case [14503.8,16844.3,1.90735e-006] : { _leblocker = "datatrain133";   };
	case [14520.2,16860.6,0] : {            _leblocker = "datatrain134";   };
	case [14534.7,16874.5,0] : {            _leblocker = "datatrain135";   };
	case [14512.8,16805.7,0] : {            _leblocker = "datatrain136";   };
	case [14505,16813.5,0] : {              _leblocker = "datatrain137";   };
	case [14496.4,16822.4,0] : {            _leblocker = "datatrain138";   };
	case [14127.9,16438.6,1.90735e-006] : { _leblocker = "datatrain139";  };
	case [14119.4,16436.8,-1.90735e-006] : {_leblocker = "datatrain140";  };
	case [14111.4,16435.1,0] : {            _leblocker = "datatrain141";  };
	case [26955.7,24762.6,0] : {            _leblocker = "datatrain142"; };
	case [26948.3,24755.2,0] : { 			_leblocker = "datatrain143";  };
	case [26939.2,24748.5,-1.90735e-006] : {_leblocker = "datatrain145"; };
	case [26929.6,24739,-1.90735e-006] : {  _leblocker = "datatrain146";  };
	case [23474.8,26485.4,240.224] : {      _leblocker = "datatrain147";  };
	case [15165.6,17196.6,0] : {            _leblocker = "datatrain148";  };
	case [15158.5,17187.7,0] : { 			_leblocker = "datatrain149";  };
	case [15148.2,17176.9,0] : {            _leblocker = "datatrain150";  };
	case [15137.6,17167,0] : {              _leblocker = "datatrain151";  };
	case [26947.2,24617.1,4.95911e-005] : { _leblocker = "datatrain152";  };

};


_uid = getPlayerUID _caller;
_iud2 = getPlayerUID player;

_blockchecker = missionNamespace getVariable _leblocker;
if (_blockchecker == 1 ) exitWith { if (_uid isEqualTo _iud2) then { hint "Sorry Vehicle Already Deployed or Destroyed..Please wait for the cool down to expire";};};

if (_uid in (missionNameSpace getVariable "lesigneur")) exitWith {
	[_theboard] remoteExec [ "RemoveAllActions", 0, true];
	[_theboard,_lapos,_uid] remoteExec ["AW_fnc_vMonitor", 2];
};

if ((_lapos in _theLastKiller) && !(str _caller in LESPILOTES)) exitWith {
	if (_uid isEqualTo _iud2) then { hint "Sorry Only Pilot can Spawn Air Assets"};
	};

[_theboard] remoteExec [ "RemoveAllActions", 0, true];
[_theboard,_lapos,_uid] remoteExec ["AW_fnc_vMonitor", 2];
