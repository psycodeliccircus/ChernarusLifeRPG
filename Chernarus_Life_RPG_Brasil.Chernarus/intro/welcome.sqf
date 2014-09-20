/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;
 
sleep 0;
playsound "Intro";

_role1 = "Bem-vindo ao";
_role1names = ["Altis Life  BR v1.0"]; 
_role2 = "Desenvolvido a partir de uma idéia de TAW_Tonic";
_role2names = ["por RenildoMarcio"]; 
_role3 = "Use nosso TeamSpeak para conversa!";
_role3names = ["ts47.gameservers.com:9178"];
_role4 = "Um agradecimento especial a";
_role4names = ["Todos vocês que se juntar a nós diariamente!<br/>Obrigado!"];
_role5 = "Admins do servidor";
_role5names = ["RenildoMarcio - Ferinha"];
_role6 = "Aproveite a sua estadia";
_role6names = ["Divirta-se e seguir as regras"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#0033CC' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];