package alprueba;
import static alprueba.Token.*;
%%
%class Lexer
%type Token

/*SUSTANTIVOS*/
SUSTANTIVO="action"|"age"|"air"|"animal"|"answer"|"apple"|"art"|"baby"|"back"|"ball"|"bank"|"bed"|"bill"|"bird"|"blood"|"boat"|"body"|"bone"|"book"|"bottom"|"box"|"boy"|
"brother"|"building"|"business"|"call"|"capital"|"case"|"cat"|"cause"|"cent"|"center"|"century"|"chance"|"change"|"check"|"child""church"|"circle"|"city"|"class"|
"clothes"|"cloud"|"coast"|"color"|"company"|"consonant"|"copy"|"corn"|"cotton"|"country"|"course"|"cow"|"crowd"|"day"|"dictionary"|"direction"|"distance"|"doctor"|
"dollar"|"door"|"ear"|"earth"|"egg"|"energy"|"example"|"experience"|"eye"|"game"|"garden"|"gas"|"girl"|"glass"|"gold"|"government"|"grass"|"group"|"hair"|"hand"|"hat"|
"head"|"heart"|"heat"|"history"|"hole"|"home"|"horse"|"hour"|"house"|"ice"|"idea"|"inch"|"industry"|"information"|"insect"|"interest"|"iron"|"island"|"job"|"key"|"lake"|
"land"|"language"|"law"|"leg"|"level"|"lie"|"life"|"light"|"line"|"list"|"machine"|"man"|"map"|"material"|"meat"|"middle"|"mile"|"milk"|"mind"|"minute"|"money"|"month"|
"moon"|"mouth"|"music"|"nation"|"night"|"nose"|"note"|"number"|"object"|"ocean"|"office"|"page"|"pair"|"paper"|"paragraph"|"park"|"part"|"party"|"past"|"person"|"pound"|
"president"|"problem"|"product"|"property"|"question"|"race"|"radio"|"rain"|"reason"|"record"|"region"|"ring"|"river"|"road"|"rock"|"row"|"rule"|"sand"|"school"|"science"|
"sea"|"seat"|"second"|"sentence"|"set"|"side"|"sign"|"sister"|"size"|"skin"|"snow"|"soldier"|"solution"|"son"|"spring"|"square"|"star"|"state"|	"stop"|"street""student"|"sugar"|
"sun"|"village"|"vowel"|"war"|"weather"|"weight"|"wife"|"window"|"winter"|"woman"|"word"|"world"|"year"
/*FIN SUSTANTIVOS*/

/*Adjetivos*/
  ADJ_POSESIVO="my"|"your"|"his"|"her"|"its"|"our"|"your"|"their"
  ADJ_DEMOSTRATIVO="this"|"that"|"these"|"those"
  
ADJ_CALIFICATIVO="tall"|"high"|"short"|"low"|"long"|"large"|"big"|"fit"|"small"|"blue"|"dark"|"sad"|"angry"|"happy"|"nervous"|"upset"|"crazy"|"hungry"|"starving"|"sympathetic"|"round"|
"triangular"|"square"|"sharp"|"rectangular"|"wide"|"sensible"|"friendly"|"polite"|"lazy"|"clever"|"nice"|"dirty"|"wet"|"dry"|"stinky"|"great"|"healthy"|"hot"|"cold"|"loud"|"sweet"|"salty"|
"bitter"|"sour"|"delicious"|"disgusting"|"spicy"|"soft"|"bland"|"icy"|"fresh"|"spanish"|"english"|"french"|"italian"|"awful"|"boiling"|"fascinating"|"freezing"|"filthy"|"furious"|"huge"|"spotless"|"tiny"|"wonderful"

ADJ_NUMERAL_CARDINAL="zero"|"one"|"two"|"three"|"four"|"five"|"six"|"seven"|"eight"|"nine"|"ten"|"eleven"|"twelve"|"thirteen"|"fourteen"|"fifteen"|"sixteen"|"seventeen"|
"eighteen"|"nineteen"|"twenty"|"thirty"|"fourty"|"fifty"|"sixty"|"seventy"|"eighty"|"ninety"|"ninety-one"|"ninety-two"|"one hundred"|"two hundred"|
"one thousand"|"ten thousand"|"one million"
 
 ADJ_NUMERAL_ORDINAL="first"|"second"|"third"|"fourth"|"fifth"|"sixth"|"seventh"|"eighth"|"ninth"|"tenth"|"eleventh"|"twelfth"|"thirteenth"|"fourteenth"|"fifteenth"|"sixteenth"|
"seventeenth"|"eighteenth"|"nineteenth"|"twentieth"|"thirtieth"|"fortieth"|"fiftieth"|"sixtieth"|"seventieth"|"eightieth"|"ninetieth"|"ninety-first"|
"ninety-second"|"ninety-third"|"ninety-fourth"|"one hundredth"|"one thousandth"|"one millionth"
  
ADJ_INDEFINIDO="all"|"any"|"both"|"each"|"either"|"enough"|"few"|"less"|"little"|"much"|"more"|"many"|"one"|"other"|"others"|"muchos"|"several"|"some"|"such"
/*Fin Adjetivos*/

/*ARTICULOS*/
  ART_DEFINIDO="the"
  ART_INDEFINIDO="a"|"an"
/*FIN ARTICULOS*/

/*PRONOMBRES*/
  PRO_PERSONAL="I"|"you"|"he"|"she"|"it"|"we"|"you"|"they"
  PRO_DEMOSTRATIVO="this"|"that"|"these"|"those"
  PRO_INTERROGATIVO="who"|"whom"|"whose"|"what"|"which"
/*FIN PRONOMBRES*/


/*VERBOS*/
  VER_IRREGULAR_INFINITO="be"|"become"|"begin"|"bite"|"blow"|"break"|"bring"|"build"|"buy"|"can"|"catch"|
"choose"|"come"|"cost"|"cut"|"do"|"draw"|"drink"|"drive"|"eat"|"fall"|"feel"|"fight"|"find"|"fly"|"forget"|
"forgive"|"freeze"|"get"|"give"|"go"|"grow"|"hang"|"have"|"hide"|"hit"|"hold"|"hurt"|"keep"|"know"|"lead"|"leave"|
"lend"|"let"|"lose"|"make"|"mean"|"meet"|"pay"|"put"|"read"|"ride"|"ring"|"rise"|"run"|"say"|"see"|"sell"|"send"|"set"|"show"|
"shut"|"sing"|"sink"|"sit"|"sleep"|"speak"|"spend"|"steal"|"swim"|"take"|"teach"|"tell"|"think"|"throw"|"understand"|"wake"|"wear"|"win"|"write"

VER_IRREGULAR_PASADOSIMPLE="was"|"became"|"began"|"bit"|"blew"|"broke"|"brought"|"built"|"bought"|"could"|"caught"|"chose"|"came"|"cost"|"cut"|"did"|
"drew"|"drank"|"drove"|"ate"|"fell"|"felt"|"fought"|"found"|"flew"|"forgot"|"forgave"|"froze"|"got"|"gave"|"went"|"grew"|"hung"|"had"|"hid"|"hit"|
"held"|"hurt"|"kept"|"knew"|"led"|"left"|"lent"|"let"|"lost"|"made"|"meant"|"met"|"paid"|"put"|"read"|"rode"|"rang"|"rose"|"ran"|"said"|"saw"|"sold"|
"sent"|"set"|"showed"|"shut"|"sang"|"sank"|"sat"|"slept"|"spoke"|"spent"|"stole"|"swam"|"took"|"taught"|"told"|"thought"|"threw"|"understood"|"woke"|"wore"|"won"|"wrote"

VER_IRREGULAR_PASADOPARTICIPIO="been"|"become"|"begun"|"bitten"|"blown"|"broken"|"brought"|"built"|"bought"|"been able"|"caught"|"chosen"|"come"|"cost"|"cut"|"done"|"drawn"|
"drunk"|"drive"|"eaten"|"fallen"|"fougth"|"found"|"flown"|"forgotten"|"forgiven"|"frozen"|"got gotten"|"given"|"gone"|"grown"|"hung"|"had"|"hidden"|"hit"|"held"|"hurt"|
"kept"|"know"|"led"|"left"|"lent"|"lost"|"made"|"meant"|"met"|"paid"|"put"|"read"|"ridden"|"rung"|"risen"|"run"|"said"|"seen"|"sold"|"sent"|"set"|"shown"|"shut"|"sung"|
"sunk"|"sat"|"slept"|"spoken"|"spent"|"stolen"|"swum"|"taken"|"taught"|"told"|"thought"|"thrown"|"understood"|"woken"|"worn"|"won"|"written"

//VERBOS REGULARES
VERBO_REGULAR="abandon"|"abolish"|"absolve"|"absorb"|"abuse"|"accede"|"accelerate"|"accent"|"accept"|"accuse"|"accustom"|"archieve"|"acquire"|"act"|
"add"|"address"|"admire"|"admit"|"adore"|"adorn"|"advance"|"advertise"|"advise"|"affirm"|"agree"|"allow"|"amount"|"amuse"|"announce"|"annoy"|"answer"|
"apologize"|"appear"|"appoint"|"approach"|"approve"|"arrange"|"arrive"|"ask"|"assure"|"astonish"|"attack"|"attempt"|"attend"|"attract"|"avoid"|"bathe"|
"beg"|"believe"|"belong"|"blame"|"book"|"call"|"carry"|"cash"|"cease"|"change"|"check"|"claim"|"clean"|"clear"|"climb"|"close"|"collect"|"comb"|"combine"|
"command"|"commit"|"compare"|"complain"|"compose"|"conceal"|"consider"|"consist"|"contain"|"continue"|"copy"|"correct"|"cough"|"count"|"cover"|"cross"|"crown"|
"cry"|"damage"|"dance"|"dawn"|"deceive"|"decide"|"declare"|"defend"|"deliver"|"desire"|"despise"|"destroy"|"detach"|"develop"|"devote"|"devour"|"discover"|"dislike"|
"disturb"|"divide"|"drag"|"drop"|"dry"|"earn"|"elect"|"employ"|"enclose"|"encourage"|"end"|"enjoy"|"enter"|"estabilish"|"esteem"|"evoke"|"exchange"|"expect"|"explain"|
"explode"|"expose"|"express"|"extract"|"fail"|"fear"|"fetch"|"fill"|"finish"|"fish"|"fit"|"fix"|"float"|"fold"|"follow"|"found"|"gain"|"gamble"|"gather"|"govern"|"grant"|
"greet"|"guard"|"guess"|"handle"|"hang"|"happen"|"hate"|"heat"|"help"|"hire"|"hope"|"hunt"|"hurry"|"imagine"|"imply"|"import"|"impress"|"improve"|"include"|"increase"|
"inquire"|"intend"|"invent"|"invite"|"iron"|"join"|"joke"|"jump"|"justify"|"kick"|"kill"|"kiss"|"knock"|"land"|"last"|"laugh"|"lie"|"like"|"listen"|"live"|"look"|"love"|
"lower"|"maintain"|"marry"|"measure"|"measure"|"mend"|"mention"|"move"|"name"|"note"|"notice"|"number"|"obley"|"obligue"|"occupy"|"offer"|"open"|"order"|"organize"|"pack"|
"paint"|"pass"|"permit"|"place"|"play"|"please"|"possess"|"practise"|"prefer"|"prepare"|"present"|"produce"|"promise"|"propose"|"pull"|"punish"|"push"|"rain"|"reach"|"receive"|
"refer"|"refyse"|"relieve"|"remain"|"remember"|"remind"|"remove"|"rent"|"repair"|"repeat"|"reply"|"report"|"request"|"require"|"rest"|"return"|"rush"|"sail"|"save"|"seem"|
"sharpen"|"shout"|"sign"|"smile"|"smoke"|"sound"|"start"|"stop"|"study"|"suffer"|"suggest"|"suppose"|"surprise"|"talk"|"tame"|"taste"|"tire"|"touch"|"test"|"thank"|"tie"|
"translate"|"travel"|"trouble"|"trust"|"try"|"turn"|"unite"|"use"|"vary"|"visit"|"wait"|"walk"|"want"|"wash"|"watch"|"weigh"|"wish"|"work"|"worry"|"wound"
/*FIN VERBOS*/

/*ADVERBIOS*/
  ADVIO_TIEMPO="now"|"yesterday"|"yesterday"|"today"|"tomorrow"|"before"|"last night"|"still"|"when"|"afterwards"|"then"|"never"|"then"|"while"|"never"|"first"|"always"|"late"|"still"|"yet"|"already"
  ADVIO_LUGAR="here"|"there"|"over there"|"here"|"outside"|"down"|"before"|"around"|"upstairs"|"back"|"close"|"under"|"where"|"onin front"|"ofoutside"|"far"
  ADVIO_CANTIDAD="something"|"nothing"|"hardly"|"anough"|"almost"|"how much"|"too much"|"more"|"less"|"much"|"little"|"all"|"only"|"half"|"so"|"so much"
  ADVIO_MODO="so"|"well"|"bad"|"almost"|"how"|"slowly"|"fast"|"slow"|"fast"
  ADVIO_AFIRMACION="if"|"of course"|"exact"|"really"|"certainly"|"surely"|"fair"|"already"
  ADVIO_NEGACION="no"|"never"|"not"|"never"
  ADVIO_DUDA="perhaps"|"probably"
/*FIN ADVERBIOS*/  


/*PREPOSICION*/
PREPOSICION="about"|"above"|"across"|"after"|"against"|"among"|"around"|"as"|"at"|"before"|"behind"|"below"|"beneath"|"beside"|"between"|"beyond"|
"but"|"by"|"despite"|"down"|"during"|"except"|"for"|"from"|"in"|"inside"|"into"|"near"|"next"|"of"|"on"|"opposite"|"outside"|"over"|"per"|"plus"|
"round"|"since"|"than"|"through"|"till"|"to"|"toward"|"under"|"unlike"|"until"|"up"|"via"|"with"|"whithin"|"whitout"|"according to"|"because of"|
"close to"|"due to"|"except to"|"far from"|"inside of"|"instead of"|"near to"|"nex to"|"outside of"|"prior to"|"as far as"|"as well as"|"in addition to"|
"in front of"|"in spite of"|"on behalf of"|"on top of"
/*FIN PREPOSICION*/

/*CONJUNCIONES COORDINANTES*/
CONJUN_COOR_COPULATIVA="and"|"not only"|"but also"|"not only"|"but"|"as well"|"both"|"and"|"no sooner"|"than"
CONJUN_COOR_ADVERSATIVA="but"|"however"|"nonetheless"|"nevertheless"|"yet"|"even so"|"still"|"instead"|"on the contrary"
CONJUN_COOR_DISTRIBUTIVA="as soon"|"as"|"ya"|"already"|"here"|"there"|"these"|"those"|"or"|"or good"
CONJUN_COOR_DISYUNTIVA="or"|"either"|"neither"|"nor"|"whether or"|"or else"|"otherwise"
CONJUN_COOR_EXPLICATIVA="that is to say"|"rather"|"it's more"|"that is"|"this is"|"rather"
/*FIN CONJUNCIONES COORDINANTES*/



/*CONJUNCIONES SUBORDINANTES */
  CONJUN_SUBOR_CONDICIONAL="if"|"whenever"|"as long as"
  CONJUN_SUBOR_CAUSAL="anymore because"|"it because"|"because"|"since i"
  CONJUN_SUBOR_CONSECUTIVA="then"|"so"|"that it"|"so"|"in this way"|"therefore"
  CONJUN_SUBOR_CONSESIVA="even if"|"by more than"
  CONJUN_SUBOR_COMPARATIVA="than"|"to"|"like"|"as well"
  CONJUN_SUBOR_FINAL="so that"|"to"
/*FIN CONJUNCIONES SUBORDINANTES*/

/*INTERJECCION*/
 INTERJECCION="wow"|"ouch"|"uh-huh"|"oops"|"hey"
/*FIN INTERJECCION*/

/*CONTRACCION*/
  CONTRACCION="i’m"|"you’re"|"he’s"|"she’s"|"you’re"|"it’s"|"we’re"|"you’re"|"they’re"
/*FIN CONTRACCION*/


/*SIGNOS*/
  PUNTO="."
  COMA=","
  PUNTOCOMA=";"
  DOSPUNTOS=":"
  INTERROGACIONABIERTO="¿"
  INTERROGACIONCERRADO="?"
  ADMIRACIONABIERTO="¡"
  ADMIRACIONCERRADO="!"
  PARENTESISABIERTO="("
  PARENTESISCERRADO=")"
  CORCHETEABIERTO="["
  CORCHETECERRADO="]"
  GUION="-"
  ASTERISCO="*"
  DIAGONAL="/"
/*FIN SIGNOS*/


WHITE=[ \t\r\n]
%{
public String lexeme;
%}
%%
{WHITE} {/* ignore */}
"//".* {/* ignore */}


/*Sustantivos*/
{SUSTANTIVO} {lexeme=yytext(); return SUSTANTIVO;}
/*Sustantivos*/

/*ADJETIVOS*/
{ADJ_POSESIVO} {lexeme=yytext(); return ADJ_POSESIVO;}
{ADJ_DEMOSTRATIVO} {lexeme=yytext(); return ADJ_DEMOSTRATIVO;}
{ADJ_CALIFICATIVO} {lexeme=yytext(); return ADJ_CALIFICATIVO;}
{ADJ_NUMERAL_CARDINAL} {lexeme=yytext(); return ADJ_NUMERAL_CARDINAL;}
{ADJ_NUMERAL_ORDINAL} {lexeme=yytext(); return ADJ_NUMERAL_ORDINAL;}
{ADJ_INDEFINIDO} {lexeme=yytext(); return ADJ_INDEFINIDO;}
/*FIN ADJETIVOS*/

/*ARTICULOS*/
{ART_DEFINIDO} {lexeme=yytext(); return ART_DEFINIDO;}
{ART_INDEFINIDO} {lexeme=yytext(); return ART_INDEFINIDO;}
/*FIN ARTICULOS*/

/*PRONOMBRES*/
{PRO_PERSONAL} {lexeme=yytext(); return PRO_PERSONAL;}
{PRO_DEMOSTRATIVO} {lexeme=yytext(); return PRO_DEMOSTRATIVO;}
{PRO_INTERROGATIVO} {lexeme=yytext(); return PRO_INTERROGATIVO;}
/*FIN PRONOMBRES*/

/*VERBOS */
    /*VERBOS IRREGULARES INFINITOS*/
    {VER_IRREGULAR_INFINITO} {lexeme=yytext(); return VER_IRREGULAR_INFINITO;}
    {VER_IRREGULAR_PASADOSIMPLE} {lexeme=yytext(); return VER_IRREGULAR_PASADOSIMPLE;}
    {VER_IRREGULAR_PASADOPARTICIPIO} {lexeme=yytext(); return VER_IRREGULAR_PASADOPARTICIPIO;}
    /*FIN VERBOS IRREGULARES*/
    
    /*VERBOS REGULARES*/
    {VERBO_REGULAR} {lexeme=yytext(); return VERBO_REGULAR;}
    /*FIN VERBOS REGULARES*/
/*FIN VERBOS*/



/*ADVERBIOS*/
{ADVIO_TIEMPO} {lexeme=yytext(); return ADVIO_TIEMPO;}
{ADVIO_LUGAR} {lexeme=yytext(); return ADVIO_LUGAR;}
{ADVIO_CANTIDAD} {lexeme=yytext(); return ADVIO_CANTIDAD;}
{ADVIO_MODO} {lexeme=yytext(); return ADVIO_MODO;}
{ADVIO_AFIRMACION} {lexeme=yytext(); return ADVIO_AFIRMACION;}
{ADVIO_NEGACION} {lexeme=yytext(); return ADVIO_NEGACION;}
{ADVIO_DUDA} {lexeme=yytext(); return ADVIO_DUDA;}
/*FIN ADVERBIOS*/


/*PREPOSICION*/
{PREPOSICION} {lexeme=yytext(); return PREPOSICION;}
/*FIN PREPOSICION*/

/*CONJUNCIONES COORDINANTES*/
{CONJUN_COOR_COPULATIVA} {lexeme=yytext(); return CONJUN_COOR_COPULATIVA;}
{CONJUN_COOR_ADVERSATIVA} {lexeme=yytext(); return CONJUN_COOR_ADVERSATIVA;}
{CONJUN_COOR_DISTRIBUTIVA} {lexeme=yytext(); return CONJUN_COOR_DISTRIBUTIVA;}
{CONJUN_COOR_DISYUNTIVA} {lexeme=yytext(); return CONJUN_COOR_DISYUNTIVA;}
{CONJUN_COOR_EXPLICATIVA} {lexeme=yytext(); return CONJUN_COOR_EXPLICATIVA;}
/*FIN CONJUNCIONES COORDINANTES*/

/*CONJUNCIONES SUBORDINANTES */
{CONJUN_SUBOR_CONDICIONAL} {lexeme=yytext(); return CONJUN_SUBOR_CONDICIONAL;}
{CONJUN_SUBOR_CAUSAL} {lexeme=yytext(); return CONJUN_SUBOR_CAUSAL;}
{CONJUN_SUBOR_CONSECUTIVA} {lexeme=yytext(); return CONJUN_SUBOR_CONSECUTIVA;}
{CONJUN_SUBOR_CONSESIVA} {lexeme=yytext(); return CONJUN_SUBOR_CONSESIVA;}
{CONJUN_SUBOR_COMPARATIVA} {lexeme=yytext(); return CONJUN_SUBOR_COMPARATIVA;}
{CONJUN_SUBOR_FINAL} {lexeme=yytext(); return CONJUN_SUBOR_FINAL;}
/*FIN CONJUNCIONES SUBORDINANTES*/

/*INTERJECCION*/
{INTERJECCION} {lexeme=yytext(); return INTERJECCION;}
/*FIN INTERJECCION*/

/*CONTRACCION*/
{CONTRACCION} {lexeme=yytext(); return CONTRACCION;}
/*FIN CONTRACCION*/

/*SIGNOS*/
{PUNTO}* {lexeme=yytext(); return PUNTO;}
{COMA} {lexeme=yytext(); return COMA;}
{PUNTOCOMA} {lexeme=yytext(); return PUNTOCOMA;}
{DOSPUNTOS} {lexeme=yytext(); return DOSPUNTOS;}
{INTERROGACIONABIERTO} {lexeme=yytext(); return INTERROGACIONABIERTO;}
{INTERROGACIONCERRADO} {lexeme=yytext(); return INTERROGACIONCERRADO;}
{ADMIRACIONABIERTO} {lexeme=yytext(); return ADMIRACIONABIERTO;}
{ADMIRACIONCERRADO} {lexeme=yytext(); return ADMIRACIONCERRADO;}
{PARENTESISABIERTO} {lexeme=yytext(); return PARENTESISABIERTO;}
{PARENTESISCERRADO} {lexeme=yytext(); return PARENTESISCERRADO;}
{CORCHETEABIERTO} {lexeme=yytext(); return CORCHETEABIERTO;}
{CORCHETECERRADO} {lexeme=yytext(); return CORCHETECERRADO;}
{GUION} {lexeme=yytext(); return GUION;}
{ASTERISCO} {lexeme=yytext(); return ASTERISCO;}
{DIAGONAL} {lexeme=yytext(); return DIAGONAL;}





//{PRO_INTERROGATIVO}({WHITE}|{SUSTANTIVO}|{VER_IRREGULAR_INFINITO})* {lexeme=yytext(); return PREGUNTA;}

/*FIN SIGNOS*/



. {return ERROR;}