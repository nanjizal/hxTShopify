package hxTShopify.t;
/** 
 *  ISO 4217
 *  https://en.wikipedia.org/wiki/ISO_4217
 **/
enum abstract CurrencyType(String ) from String to String {
    var AED;// 	784 	2 	United Arab Emirates dirham 	 United Arab Emirates
    var AFN;// 	971 	2 	Afghan afghani 	 Afghanistan
    var ALL;// 	008 	2 	Albanian lek 	 Albania
    var AMD;// 	051 	2 	Armenian dram 	 Armenia
    var ANG;// 	532 	2 	Netherlands Antillean guilder 	 Curaçao (CW),  Sint Maarten (SX)
    var AOA;// 	973 	2 	Angolan kwanza 	 Angola
    var ARS;// 	032 	2 	Argentine peso 	 Argentina
    var AUD;// 	036 	2 	Australian dollar 	 Australia,  Christmas Island (CX),  Cocos (Keeling) Islands (CC),  Heard Island and McDonald Islands (HM),  Kiribati (KI),  Nauru (NR),  Norfolk Island (NF),  Tuvalu (TV)
    var AWG;// 	533 	2 	Aruban florin 	 Aruba
    var AZN;// 	944 	2 	Azerbaijani manat 	 Azerbaijan
    var BAM;// 	977 	2 	Bosnia and Herzegovina convertible mark 	 Bosnia and Herzegovina
    var BBD;// 	052 	2 	Barbados dollar 	 Barbados
    var BDT;// 	050 	2 	Bangladeshi taka 	 Bangladesh
    var BGN;// 	975 	2 	Bulgarian lev 	 Bulgaria
    var BHD;// 	048 	3 	Bahraini dinar 	 Bahrain
    var BIF;// 	108 	0 	Burundian franc 	 Burundi
    var BMD;//	060 	2 	Bermudian dollar 	 Bermuda
    var BND;// 	096 	2 	Brunei dollar 	 Brunei
    var BOB;// 	068 	2 	Boliviano 	 Bolivia
    var BOV;// 	984 	2 	Bolivian Mvdol (funds code) 	 Bolivia
    var BRL;// 	986 	2 	Brazilian real 	 Brazil
    var BSD;// 	044 	2 	Bahamian dollar 	 Bahamas
    var BTN;// 	064 	2 	Bhutanese ngultrum 	 Bhutan
    var BWP;// 	072 	2 	Botswana pula 	 Botswana
    var BYN;// 	933 	2 	Belarusian ruble 	 Belarus
    var BZD;// 	084 	2 	Belize dollar 	 Belize
    var CAD;// 	124 	2 	Canadian dollar 	 Canada
    var CDF;// 	976 	2 	Congolese franc 	 Democratic Republic of the Congo
    var CHE;// 	947 	2 	WIR Euro (complementary currency) 	  Switzerland
    var CHF;// 	756 	2 	Swiss franc 	  Switzerland,  Liechtenstein (LI)
    var CHW;// 	948 	2 	WIR Franc (complementary currency) 	  Switzerland
    var CLF;// 	990 	4 	Unidad de Fomento (funds code) 	 Chile
    var CLP;// 	152 	0 	Chilean peso 	 Chile
    var CNY;// 	156 	2 	Renminbi (Chinese) yuan[8] 	 China
    var COP;// 	170 	2 	Colombian peso 	 Colombia
    var COU;// 	970 	2[9] 	Unidad de Valor Real (UVR) (funds code)[9] 	 Colombia
    var CRC;// 	188 	2 	Costa Rican colon 	 Costa Rica
    var CUC;// 	931 	2 	Cuban convertible peso 	 Cuba
    var CUP;// 	192 	2 	Cuban peso 	 Cuba
    var CVE;// 	132 	2 	Cape Verde escudo 	 Cabo Verde
    var CZK;// 	203 	2 	Czech koruna 	 Czechia [10]
    var DJF;// 	262 	0 	Djiboutian franc 	 Djibouti
    var DKK;// 	208 	2 	Danish krone 	 Denmark,  Faroe Islands (FO),  Greenland (GL)
    var DOP;// 	214 	2 	Dominican peso 	 Dominican Republic
    var DZD;// 	012 	2 	Algerian dinar 	 Algeria
    var EGP;// 	818 	2 	Egyptian pound 	 Egypt
    var ERN;// 	232 	2 	Eritrean nakfa 	 Eritrea
    var ETB;// 	230 	2 	Ethiopian birr 	 Ethiopia
    var EUR;// 	978 	2 	Euro 	 Åland Islands (AX),  European Union (EU),  Andorra (AD),  Austria (AT),  Belgium (BE),  Cyprus (CY),  Estonia (EE),  Finland (FI),  France (FR),  French Southern and Antarctic Lands (TF),  Germany (DE),  Greece (GR),  Guadeloupe (GP),  Ireland (IE),  Italy (IT),  Latvia (LV),  Lithuania (LT),  Luxembourg (LU),  Malta (MT),  French Guiana (GF),  Martinique (MQ),  Mayotte (YT),  Monaco (MC),  Montenegro (ME),  Netherlands (NL),  Portugal (PT),  Réunion (RE),  Saint Barthélemy (BL),  Saint Martin (MF),  Saint Pierre and Miquelon (PM),  San Marino (SM),  Slovakia (SK),  Slovenia (SI),  Spain (ES),  Holy See (VA)
    var FJD;// 	242 	2 	Fiji dollar 	 Fiji
    var FKP;// 	238 	2 	Falkland Islands pound 	 Falkland Islands (pegged to GBP 1:1)
    var GBP;// 	826 	2 	Pound sterling 	 United Kingdom,  British Indian Ocean Territory (IO) (also uses USD), the  Isle of Man (IM, see Manx pound),  Jersey (JE, see Jersey pound), and  Guernsey (GG, see Guernsey pound)
    var GEL;// 	981 	2 	Georgian lari 	 Georgia
    var GHS;// 	936 	2 	Ghanaian cedi 	 Ghana
    var GIP;// 	292 	2 	Gibraltar pound 	 Gibraltar (pegged to GBP 1:1)
    var GMD;// 	270 	2 	Gambian dalasi 	 Gambia
    var GNF;// 	324 	0 	Guinean franc 	 Guinea
    var GTQ;// 	320 	2 	Guatemalan quetzal 	 Guatemala
    var GYD;// 	328 	2 	Guyanese dollar 	 Guyana
    var HKD;// 	344 	2 	Hong Kong dollar 	 Hong Kong
    var HNL;// 	340 	2 	Honduran lempira 	 Honduras
    var HRK;// 	191 	2 	Croatian kuna 	 Croatia
    var HTG;// 	332 	2 	Haitian gourde 	 Haiti
    var HUF;// 	348 	2 	Hungarian forint 	 Hungary
    var IDR;// 	360 	2 	Indonesian rupiah 	 Indonesia
    var ILS;// 	376 	2 	Israeli new shekel 	 Israel,  Palestinian Authority[11]
    var INR;// 	356 	2 	Indian rupee 	 India,  Bhutan
    var IQD;// 	368 	3 	Iraqi dinar 	 Iraq
    var IRR;// 	364 	2 	Iranian rial 	 Iran
    var ISK;// 	352 	0 	Icelandic króna 	 Iceland
    var JMD;// 	388 	2 	Jamaican dollar 	 Jamaica
    var JOD;// 	400 	3 	Jordanian dinar 	 Jordan
    var JPY;// 	392 	0 	Japanese yen 	 Japan
    var KES;// 	404 	2 	Kenyan shilling 	 Kenya
    var KGS;// 	417 	2 	Kyrgyzstani som 	 Kyrgyzstan
    var KHR;// 	116 	2 	Cambodian riel 	 Cambodia
    var KMF;// 	174 	0 	Comoro franc 	 Comoros
    var KPW;// 	408 	2 	North Korean won 	 North Korea
    var KRW;// 	410 	0 	South Korean won 	 South Korea
    var KWD;// 	414 	3 	Kuwaiti dinar 	 Kuwait
    var KYD;// 	136 	2 	Cayman Islands dollar 	 Cayman Islands
    var KZT;// 	398 	2 	Kazakhstani tenge 	 Kazakhstan
    var LAK;// 	418 	2 	Lao kip 	 Laos
    var LBP;// 	422 	2 	Lebanese pound 	 Lebanon
    var LKR;// 	144 	2 	Sri Lankan rupee 	 Sri Lanka
    var LRD;// 	430 	2 	Liberian dollar 	 Liberia
    var LSL;// 	426 	2 	Lesotho loti 	 Lesotho
    var LYD;// 	434 	3 	Libyan dinar 	 Libya
    var MAD;// 	504 	2 	Moroccan dirham 	 Morocco,  Western Sahara
    var MDL;// 	498 	2 	Moldovan leu 	 Moldova
    var MGA;// 	969 	2*[12] 	Malagasy ariary 	 Madagascar
    var MKD;// 	807 	2 	Macedonian denar 	 North Macedonia
    var MMK;// 	104 	2 	Myanmar kyat 	 Myanmar
    var MNT;// 	496 	2 	Mongolian tögrög 	 Mongolia
    var MOP;// 	446 	2 	Macanese pataca 	 Macau
    var MRU;// MRU[13] 	929 	2*[12] 	Mauritanian ouguiya 	 Mauritania
    var MUR;// 	480 	2 	Mauritian rupee 	 Mauritius
    var MVR;// 	462 	2 	Maldivian rufiyaa 	 Maldives
    var MWK;// 	454 	2 	Malawian kwacha 	 Malawi
    var MXN;// 	484 	2 	Mexican peso 	 Mexico
    var MXV;// 	979 	2 	Mexican Unidad de Inversion (UDI) (funds code) 	 Mexico
    var MYR;// 	458 	2 	Malaysian ringgit 	 Malaysia
    var MZN;// 	943 	2 	Mozambican metical 	 Mozambique
    var NAD;// 	516 	2 	Namibian dollar 	 Namibia
    var NGN;// 	566 	2 	Nigerian naira 	 Nigeria
    var NIO;// 	558 	2 	Nicaraguan córdoba 	 Nicaragua
    var NOK;// 	578 	2 	Norwegian krone 	 Norway,  Svalbard and  Jan Mayen (SJ),  Bouvet Island (BV)
    var NPR;// 	524 	2 	Nepalese rupee 	   Nepal
    var NZD;// 	554 	2 	New Zealand dollar 	 New Zealand,  Cook Islands (CK),  Niue (NU),  Pitcairn Islands (PN; see also Pitcairn Islands dollar),  Tokelau (TK)
    var OMR;// 	512 	3 	Omani rial 	 Oman
    var PAB;// 	590 	2 	Panamanian balboa 	 Panama
    var PEN;// 	604 	2 	Peruvian sol 	 Peru
    var PGK;// 	598 	2 	Papua New Guinean kina 	 Papua New Guinea
    var PHP;// 	608 	2 	Philippine peso[14] 	 Philippines
    var PKR;// 	586 	2 	Pakistani rupee 	 Pakistan
    var PLN;// 	985 	2 	Polish złoty 	 Poland
    var PYG;// 	600 	0 	Paraguayan guaraní 	 Paraguay
    var QAR;// 	634 	2 	Qatari riyal 	 Qatar
    var RON;// 	946 	2 	Romanian leu 	 Romania
    var RSD;// 	941 	2 	Serbian dinar 	 Serbia
    var RUB;// 	643 	2 	Russian ruble 	 Russia
    var RWF;// 	646 	0 	Rwandan franc 	 Rwanda
    var SAR;// 	682 	2 	Saudi riyal 	 Saudi Arabia
    var SBD;// 	090 	2 	Solomon Islands dollar 	 Solomon Islands
    var SCR;// 	690 	2 	Seychelles rupee 	 Seychelles
    var SDG;// 	938 	2 	Sudanese pound 	 Sudan
    var SEK;// 	752 	2 	Swedish krona/kronor 	 Sweden
    var SGD;// 	702 	2 	Singapore dollar 	 Singapore
    var SHP;// 	654 	2 	Saint Helena pound 	 Saint Helena (SH-SH),  Ascension Island (SH-AC),  Tristan da Cunha
    var SLL;// 	694 	2 	Sierra Leonean leone 	 Sierra Leone
    var SOS;// 	706 	2 	Somali shilling 	 Somalia
    var SRD;// 	968 	2 	Surinamese dollar 	 Suriname
    var SSP;// 	728 	2 	South Sudanese pound 	 South Sudan
    var STN;//STN[15] 	930 	2 	São Tomé and Príncipe dobra 	 São Tomé and Príncipe
    var SVC;// 	222 	2 	Salvadoran colón 	 El Salvador
    var SYP;// 	760 	2 	Syrian pound 	 Syria
    var SZL;// 	748 	2 	Swazi lilangeni 	 Eswatini[14]
    var THB;// 	764 	2 	Thai baht 	 Thailand
    var TJS;// 	972 	2 	Tajikistani somoni 	 Tajikistan
    var TMT;// 	934 	2 	Turkmenistan manat 	 Turkmenistan
    var TND;// 	788 	3 	Tunisian dinar 	 Tunisia
    var TOP;// 	776 	2 	Tongan paʻanga 	 Tonga
    var TRY;// 	949 	2 	Turkish lira 	 Turkey
    var TTD;// 	780 	2 	Trinidad and Tobago dollar 	 Trinidad and Tobago
    var TWD;// 	901 	2 	New Taiwan dollar 	 Taiwan
    var TZS;// 	834 	2 	Tanzanian shilling 	 Tanzania
    var UAH;// 	980 	2 	Ukrainian hryvnia 	 Ukraine
    var UGX;// 	800 	0 	Ugandan shilling 	 Uganda
    var USD;// 	840 	2 	United States dollar 	 United States,  American Samoa (AS),  Barbados (BB) (as well as Barbados Dollar),  Bermuda (BM) (as well as Bermudian Dollar),  British Indian Ocean Territory (IO) (also uses GBP),  British Virgin Islands (VG),  Caribbean Netherlands (BQ - Bonaire, Sint Eustatius and Saba),  Ecuador (EC),  El Salvador (SV),  Guam (GU),  Haiti (HT),  Marshall Islands (MH),  Federated States of Micronesia (FM),  Northern Mariana Islands (MP),  Palau (PW),  Panama (PA) (as well as Panamanian Balboa),  Puerto Rico (PR),  Timor-Leste (TL),  Turks and Caicos Islands (TC),  U.S. Virgin Islands (VI),  United States Minor Outlying Islands (UM)
    var USN;// 	997 	2 	United States dollar (next day) (funds code) 	 United States
    var UYI;// 	940 	0 	Uruguay Peso en Unidades Indexadas (URUIURUI) (funds code) 	 Uruguay
    var UYU;// 	858 	2 	Uruguayan peso 	 Uruguay
    var UYW;// 	927 	4 	Unidad previsional[16] 	 Uruguay
    var UZS;// 	860 	2 	Uzbekistan som 	 Uzbekistan
    var VES;// 	928 	2 	Venezuelan bolívar soberano[14] 	 Venezuela
    var VND;// 	704 	0 	Vietnamese đồng 	 Vietnam
    var VUV;// 	548 	0 	Vanuatu vatu 	 Vanuatu
    var WST;// 	882 	2 	Samoan tala 	 Samoa
    var XAF;// 	950 	0 	CFA franc BEAC 	 Cameroon (CM),  Central African Republic (CF),  Republic of the Congo (CG),  Chad (TD),  Equatorial Guinea (GQ),  Gabon (GA)
    var XAG;// 	961 	. 	Silver (one troy ounce) 	
    var XAU;// 	959 	. 	Gold (one troy ounce) 	
    var XBA;// 	955 	. 	European Composite Unit (EURCO) (bond market unit) 	
    var XBB;// 	956 	. 	European Monetary Unit (E.M.U.-6) (bond market unit) 	
    var XBC;// 	957 	. 	European Unit of Account 9 (E.U.A.-9) (bond market unit) 	
    var XBD;// 	958 	. 	European Unit of Account 17 (E.U.A.-17) (bond market unit) 	
    var XCD;// 	951 	2 	East Caribbean dollar 	 Anguilla (AI),  Antigua and Barbuda (AG),  Dominica (DM),  Grenada (GD),  Montserrat (MS),  Saint Kitts and Nevis (KN),  Saint Lucia (LC),  Saint Vincent and the Grenadines (VC)
    var XDR;// 	960 	. 	Special drawing rights 	International Monetary Fund
    var XOF;// 	952 	0 	CFA franc BCEAO 	 Benin (BJ),  Burkina Faso (BF),  Côte d'Ivoire (CI),  Guinea-Bissau (GW),  Mali (ML),  Niger (NE),  Senegal (SN),  Togo (TG)
    var XPD;// 	964 	. 	Palladium (one troy ounce) 	
    var XPF;// 	953 	0 	CFP franc (franc Pacifique) 	French territories of the Pacific Ocean:  French Polynesia (PF),  New Caledonia (NC),  Wallis and Futuna (WF)
    var XPT;// 	962 	. 	Platinum (one troy ounce) 	
    var XSU;// 	994 	. 	SUCRE 	Unified System for Regional Compensation (SUCRE)[17]
    var XTS;// 	963 	. 	Code reserved for testing purposes 	
    var XUA;// 	965 	. 	ADB Unit of Account 	African Development Bank[18]
    var XXX;// 	999 	. 	No currency 	
    var YER;// 	886 	2 	Yemeni rial 	 Yemen
    var ZAR;// 	710 	2 	South African rand 	 Lesotho,  Namibia,  South Africa
    var ZMW;// 	967 	2 	Zambian kwacha 	 Zambia
    var ZWL;// 	932 	2 	Zimbabwean dollar 	 Zimbabwe
}