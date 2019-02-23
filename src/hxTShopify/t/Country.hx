package hxTShopify.t;
/** 
 *  ISO 3166-1 alpha-2
 *  https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
 **/
enum abstract Country(String ) from String to String {
    var AD;    // Andorra
    var AE;    // United Arab Emirates	
    var AF;    // Afghanistan	
    var AG;    // Antigua and Barbuda	
    var AI;    // Anguilla
    var AL;    // Albania
    var AM;    // Armenia
    var AO;    // Angola
    var AQ;    // Antarctica
    var AR;    // Argentina
    var AS;    // American Samoa
    var AT;    // Austria
    var AU;    // Australia
    var AW;    // Aruba
    var AX;    // Åland Islands
    var AZ;    // Azerbaijan
    var BA;    // Bosnia and Herzegovina
    var BB;    // Barbados
    var BD;    // Bangladesh
    var BE;    // Belgium
    var BF;    // Burkina Faso
    var BG;    // Bulgaria
    var BH;    // Bahrain	
    var BI;    // Burundi
    var BJ;    // Benin
    var BL;    // Saint Barthélemy
    var BM;    // Bermuda
    var BN;    // Brunei Darussalam
    var BO;    // Bolivia (Plurinational State of)
    var BQ;    // Bonaire, Sint Eustatius and Saba
    var BQ;    // previously represented British Antarctic Territory
    var BR;    // Brazil
    var BS;    // Bahamas	
    var BT;    // Bhutan
    var BV;    // Bouvet Island
    var BW;    // Botswana
    var BY;    // Belarus
    var BZ;    // Belize
    var CA;    // Canada
    var CC;    // Cocos (Keeling) Islands
    var CD;    // Congo, Democratic Republic of the
    var CF;    // Central African Republic
    var CG;    // Congo
    var CH;    // Switzerland
    var CI;    // Côte d'Ivoire
    var CK;    // Cook Islands
    var CL;    // Chile
    var CM;    // Cameroon
    var CN;    // China
    var CO;    // Colombia
    var CR;    // Costa Rica
    var CU;    // Cuba
    var CV;    // Cabo Verde
    var CW;    // Curaçao
    var CX;    // Christmas Island
    var CY;    // Cyprus
    var CZ;    // Czechia
    var DE;    // Germany
    var DJ;    // Djibouti
    var DK;    // Denmark
    var DM;    // Dominica
    var DO;    // Dominican Republic
    var DZ;    // Algeria
    var EC;    // Ecuador
    var EE;    // Estonia
    var EG;    // Egypt
    var EH;    // Western Sahara
    var ER;    // Eritrea
    var ES;    // Spain
    var ET;    // Ethiopia
    var FI;    // Finland
    var FJ;    // Fiji
    var FK;    // Falkland Islands (Malvinas)
    var FM;    // Micronesia (Federated States of)
    var FO;    // Faroe Islands
    var FR;    // France
    var GA;    // Gabon
    var GB;    // United Kingdom of Great Britain and Northern Ireland
    var GD;    // Grenada
    var GE;    // Georgia
    var GF;    // French Guiana
    var GG;    // Guernsey
    var GH;    // Ghana
    var GI;    // Gibraltar
    var GL;    // Greenland
    var GM;    // Gambia
    var GN;    // Guinea
    var GP;    // Guadeloupe
    var GQ;    // Equatorial Guinea
    var GR;    // Greece
    var GS;    // South Georgia and the South Sandwich Islands
    var GT;    // Guatemala
    var GU;    // Guam
    var GW;    // Guinea-Bissau
    var GY;    // Guyana
    var HK;    // Hong Kong
    var HM;    // Heard Island and McDonald Islands
    var HN;    // Honduras
    var HR;    // Croatia
    var HT;    // Haiti
    var HU;    // Hungary
    var ID;    // Indonesia
    var IE;    // Ireland
    var IL;    // Israel
    var IM;    // Isle of Man
    var IN;    // India
    var IO;    // British Indian Ocean Territory	
    var IQ;    // Iraq	
    var IR;    // Iran (Islamic Republic of)
    var IS;    // Iceland
    var IT;    // Italy	
    var JE;    // Jersey
    var JM;    // Jamaica
    var JO;    // Jordan
    var JP;    // Japan
    var KE;    // Kenya
    var KG;    // Kyrgyzstan	
    var KH;    // Cambodia
    var KI;    // Kiribati
    var KM;    // Comoros
    var KN;    // Saint Kitts and Nevis
    var KP;    // Korea (Democratic People's Republic of)
    var KR;    // Korea, Republic of
    var KW;    // Kuwait
    var KY;    // Cayman Islands
    var KZ;    // Kazakhstan
    var LA;    // Lao People's Democratic Republic
    var LB;    // Lebanon
    var LC;    // Saint Lucia
    var LI;    // Liechtenstein
    var LK;    // Sri Lanka
    var LR;    // Liberia
    var LS;    // Lesotho
    var LT;    // Lithuania
    var LU;    // Luxembourg
    var LV;    // Latvia
    var LY;    // Libya
    var MA;    // Morocco
    var MC;    // Monaco
    var MD;    // Moldova, Republic of
    var ME;    // Montenegro
    var MF;    // Saint Martin (French part)
    var MG;    // Madagascar
    var MH;    // Marshall Islands
    var MK;    // Macedonia, the former Yugoslav Republic of
    var ML;    // Mali
    var MM;    // Myanmar
    var MN;    // Mongolia
    var MO;    // Macao
    var MP;    // Northern Mariana Islands
    var MQ;    // Martinique
    var MR;    // Mauritania
    var MS;    // Montserrat
    var MT;    // Malta
    var MU;    // Mauritius
    var MV;    // Maldives
    var MW;    // Malawi
    var MX;    // Mexico
    var MY;    // Malaysia
    var MZ;    // Mozambique
    var NA;    // Namibia
    var NC;    // New Caledonia
    var NE;    // Niger
    var NF;    // Norfolk Island
    var NG;    // Nigeria
    var NI;    // Nicaragua
    var NL;    // Netherlands
    var NO;    // Norway
    var NP;    // Nepal
    var NR;    // Nauru
    var NU;    // Niue
    var NZ;    // New Zealand
    var OM;    // Oman
    var PA;    // Panama
    var PE;    // Peru
    var PF;    // French Polynesia
    var PG;    // Papua New Guinea
    var PH;    // Philippines
    var PK;    // Pakistan
    var PL;    // Poland
    var PM;    // Saint Pierre and Miquelon
    var PN;    // Pitcairn
    var PR;    // Puerto Rico
    var PS;    // Palestine, State of
    var PT;    // Portugal
    var PW;    // Palau
    var PY;    // Paraguay
    var QA;    // Qatar
    var RE;    // Réunion
    var RO;    // Romania
    var RS;    // Serbia
    var RU;    // Russian Federation
    var RW;    // Rwanda
    var SA;    // Saudi Arabia
    var SB;    // Solomon Islands
    var SC;    // Seychelles
    var SD;    // Sudan
    var SE;    // Sweden
    var SG;    // Singapore
    var SH;    // Saint Helena, Ascension and Tristan da Cunha
    var SI;    // Slovenia
    var SJ;    // Svalbard and Jan Mayen
    var SK;    // Slovakia
    var SL;    // Sierra Leone
    var SM;    // San Marino
    var SN;    // Senegal
    var SO;    // Somalia
    var SR;    // Suriname
    var SS;    // South Sudan
    var ST;    // Sao Tome and Principe
    var SV;    // El Salvador
    var SX;    // Sint Maarten (Dutch part)
    var SY;    // Syrian Arab Republic
    var SZ;    // Eswatini
    var TC;    // Turks and Caicos Islands
    var TD;    // Chad
    var TF;    // French Southern Territories
    var TG;    // Togo
    var TH;    // Thailand
    var TJ;    // Tajikistan
    var TK;    // Tokelau
    var TL;    // Timor-Leste
    var TM;    // Turkmenistan
    var TN;    // Tunisia
    var TO;    // Tonga
    var TR;    // Turkey
    var TT;    // Trinidad and Tobago
    var TV;    // Tuvalu
    var TW;    // Taiwan, Province of China
    var TZ;    // Tanzania, United Republic of
    var UA;    // Ukraine
    var UG;    // Uganda
    var UM;    // United States Minor Outlying Islands
    var US;    // United States of America
    var UY;    // Uruguay
    var UZ;    // Uzbekistan
    var VA;    // Holy See
    var VC;    // Saint Vincent and the Grenadines
    var VE;    // Venezuela (Bolivarian Republic of)
    var VG;    // Virgin Islands (British)
    var VI;    // Virgin Islands (U.S.)
    var VN;    // Viet Nam
    var VU;    // Vanuatu
    var WF;    // Wallis and Futuna
    var WS;    // Samoa
    var YE;    // Yemen
    var YT;    // Mayotte
    var ZA;    // South Africa
    var ZM;    // Zambia
    var ZW;    // Zimbabwe
}