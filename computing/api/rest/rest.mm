<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1608535295262" ID="ID_1625017875" LINK="https://www.ics.uci.edu/~fielding/pubs/dissertation/fielding_dissertation.pdf" MODIFIED="1610895434161" TEXT="Architectural Styles and the Design of Network-based Software Architectures ">
<node CREATED="1608535328471" FOLDED="true" ID="ID_838482485" MODIFIED="1608535331422" POSITION="right" TEXT="Abstract">
<icon BUILTIN="full-0"/>
<node CREATED="1608535347976" ID="ID_242226972" MODIFIED="1608535354503" TEXT="Model of WWW needed for guiding">
<node CREATED="1608535354707" ID="ID_212860719" MODIFIED="1608535356502" TEXT="design"/>
<node CREATED="1608535357170" ID="ID_698036368" MODIFIED="1608535359708" TEXT="definition"/>
<node CREATED="1608535360312" ID="ID_1795872652" MODIFIED="1608535361782" TEXT="deployment"/>
</node>
<node CREATED="1608535371083" ID="ID_390378642" MODIFIED="1608535379877" TEXT="Software research investigate">
<node CREATED="1608535384420" ID="ID_715207697" MODIFIED="1608535388366" TEXT="How best to partition a system"/>
<node CREATED="1608535389065" ID="ID_95888584" MODIFIED="1608535405870" TEXT="How components identify and communicate with each other"/>
<node CREATED="1608535409434" ID="ID_1170804326" MODIFIED="1608535414078" TEXT="How information is communicated"/>
<node CREATED="1608535417018" ID="ID_319860129" MODIFIED="1608535428240" TEXT="How elements of a system can evolve independently"/>
<node CREATED="1608535429273" ID="ID_805113155" MODIFIED="1608535443213" TEXT="How all above can be described using">
<node CREATED="1608535443441" ID="ID_1699365782" MODIFIED="1608535445606" TEXT="formal notation"/>
<node CREATED="1608535447737" ID="ID_1592801837" MODIFIED="1608535452941" TEXT="informal notation"/>
</node>
</node>
<node CREATED="1608535459385" ID="ID_601682996" MODIFIED="1608535470342" TEXT="Desire understand">
<node CREATED="1608535470561" ID="ID_1469769427" MODIFIED="1608535475436" TEXT="Architecture design"/>
<node CREATED="1608535475825" ID="ID_440447364" MODIFIED="1608535483694" TEXT="... of network-based application software"/>
<node CREATED="1608535507961" ID="ID_1317560383" MODIFIED="1608535538166" TEXT="... to obtain desired architecture properties">
<node CREATED="1608535518161" ID="ID_1289071591" MODIFIED="1608535521325" TEXT="functional"/>
<node CREATED="1608535522032" ID="ID_1332960047" MODIFIED="1608535528691" TEXT="performance"/>
<node CREATED="1608535529183" ID="ID_889382199" MODIFIED="1608535530453" TEXT="social"/>
</node>
</node>
<node CREATED="1608535548793" ID="ID_1620567822" MODIFIED="1608535556637" TEXT="Architecture style">
<node CREATED="1608535556831" ID="ID_265662339" MODIFIED="1608535567581" TEXT="Set of architecture constraints">
<node CREATED="1608535567824" ID="ID_1806051961" MODIFIED="1608535568597" TEXT="Named"/>
<node CREATED="1608535568934" ID="ID_331242855" MODIFIED="1608535571701" TEXT="Coordinated"/>
</node>
</node>
<node CREATED="1608535598633" ID="ID_1361753109" MODIFIED="1608535599900" TEXT="REST">
<node CREATED="1608535600345" ID="ID_593115317" MODIFIED="1608535609622" TEXT="Scalability of component interaction"/>
<node CREATED="1608535611712" ID="ID_545131489" MODIFIED="1608535617188" TEXT="Generality of interfaces"/>
<node CREATED="1608535617830" ID="ID_1589982160" MODIFIED="1608535627763" TEXT="Independent deployment of components"/>
<node CREATED="1608535628744" ID="ID_1595556777" MODIFIED="1608535653316" TEXT="Intermediary component to">
<node CREATED="1608535653560" ID="ID_1734347460" MODIFIED="1608535661227" TEXT="reduce interaction latency"/>
<node CREATED="1608535662160" ID="ID_1999793441" MODIFIED="1608535666788" TEXT="enforce security"/>
<node CREATED="1608535667416" ID="ID_1860135433" MODIFIED="1608535673972" TEXT="encapsulate legacy systems"/>
</node>
</node>
<node CREATED="1608535687808" ID="ID_1488546216" MODIFIED="1608541104121" TEXT="Lessons learned applying REST to design of">
<node CREATED="1608541104323" ID="ID_1703830763" MODIFIED="1608541105567" TEXT="HTTP"/>
<node CREATED="1608541105955" ID="ID_1504755692" MODIFIED="1608541107048" TEXT="URI">
<node CREATED="1608541109604" ID="ID_731861685" MODIFIED="1608541120969" TEXT="Uniform Ressource Identifier"/>
</node>
</node>
</node>
<node CREATED="1608541136692" FOLDED="true" ID="ID_11307723" MODIFIED="1608541149786" POSITION="right" TEXT="Introduction">
<icon BUILTIN="full-0"/>
<node CREATED="1608541176460" ID="ID_605563949" MODIFIED="1608541194232" TEXT="Complexity of software architecture">
<node CREATED="1608541194459" ID="ID_755719554" MODIFIED="1608541196480" TEXT="Emphasis on">
<node CREATED="1608541199932" ID="ID_465153811" MODIFIED="1608541203583" TEXT="Componentized systems"/>
<node CREATED="1608541204539" ID="ID_1107460795" MODIFIED="1608541211600" TEXT="... independent components"/>
<node CREATED="1608541211947" ID="ID_1496180344" MODIFIED="1608541214831" TEXT="... that communicate"/>
<node CREATED="1608541215227" ID="ID_1077980889" MODIFIED="1608541219847" TEXT="... to perform task"/>
</node>
</node>
<node CREATED="1608541240387" ID="ID_1889502436" MODIFIED="1608551136897" TEXT="Design-by-buzzword is not good">
<node CREATED="1608551137067" ID="ID_1801636785" MODIFIED="1608551140727" TEXT="Form follows function"/>
<node CREATED="1608551141387" ID="ID_1632791381" LINK="#ID_1317560383" MODIFIED="1608551164339" TEXT="Design should be depending on the context"/>
</node>
<node CREATED="1609862521856" ID="ID_1381595160" MODIFIED="1609862525250" TEXT="Software and network">
<node CREATED="1609862525397" ID="ID_1746803757" MODIFIED="1609862526793" TEXT="Software">
<node CREATED="1609862528765" ID="ID_909381620" MODIFIED="1609862533946" TEXT="Categorization of software designs"/>
<node CREATED="1609862534358" ID="ID_167981046" MODIFIED="1609862540842" TEXT="Developement of design methodologies"/>
<node CREATED="1609862549652" ID="ID_1987165077" MODIFIED="1609862565496" TEXT="... but don&apos;t evaluate impact of design choice on system behavior"/>
</node>
<node CREATED="1609862578460" ID="ID_1861943322" MODIFIED="1609862580083" TEXT="Network">
<node CREATED="1609862580332" ID="ID_1842124619" MODIFIED="1609862592522" TEXT="Details on generic communication behaviors between systems"/>
<node CREATED="1609862594524" ID="ID_1998850832" MODIFIED="1609862604807" TEXT="Improving performances of communication techniques"/>
<node CREATED="1609862618205" ID="ID_1152512234" MODIFIED="1609862620119" TEXT="Ignore">
<node CREATED="1609862620365" ID="ID_646665465" MODIFIED="1609862626505" TEXT="Changing interaction style"/>
<node CREATED="1609862626869" ID="ID_1164174097" MODIFIED="1609862641841" TEXT="... can have more impact on performance"/>
<node CREATED="1609862630692" ID="ID_1515115225" MODIFIED="1609862639305" TEXT="... than communication protocol used"/>
</node>
</node>
<node CREATED="1609862655924" ID="ID_1826247404" MODIFIED="1609862660391" TEXT="Goal">
<node CREATED="1609862660548" ID="ID_1467646059" MODIFIED="1609862677543" TEXT="Understand and evaluate architectural design of network based app"/>
<node CREATED="1609862678116" ID="ID_1352348383" MODIFIED="1609862691648" TEXT=".... through use of architectural constraints"/>
</node>
<node CREATED="1609862813611" ID="ID_603945746" MODIFIED="1609862818747" TEXT="REST">
<node CREATED="1609862818747" ID="ID_444198681" MODIFIED="1609862826544" TEXT="Done in conjunction with HTTP"/>
<node CREATED="1609862827052" ID="ID_1227627340" MODIFIED="1609862828829" TEXT="... and URI"/>
<node CREATED="1609862835345" ID="ID_983549741" MODIFIED="1609862851685" TEXT="... 2 specifications defining the generic interface for all web component interactions"/>
</node>
</node>
</node>
<node CREATED="1609862895617" FOLDED="true" ID="ID_1818143906" MODIFIED="1609862908235" POSITION="right" TEXT="Chapter 1 - Software Architecture">
<icon BUILTIN="full-1"/>
<node CREATED="1609862917170" ID="ID_1519433449" MODIFIED="1609862924150" TEXT="No agreement to define architecture"/>
<node CREATED="1609862939041" FOLDED="true" ID="ID_320169314" MODIFIED="1609862945150" TEXT="Run Time Abstraction">
<icon BUILTIN="full-1"/>
<node CREATED="1609862958290" ID="ID_1855430209" MODIFIED="1609862962185" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A software architecture is an abstraction of the run-time elements of a
    </p>
    <p>
      software system during some phase of its operation. A system may be
    </p>
    <p>
      composed of many levels of abstraction and many phases of operation,
    </p>
    <p>
      each with its own software architecture.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1609862983050" ID="ID_1156470442" MODIFIED="1609862994277" TEXT="Each level of abstraction has its own architecture">
<node CREATED="1609863018928" ID="ID_1056586116" MODIFIED="1609863147564" TEXT="Recursion of architecture"/>
<node CREATED="1609863148945" ID="ID_1025981574" MODIFIED="1609863153309" TEXT="... till most basic element"/>
<node CREATED="1609863153704" ID="ID_1647648977" MODIFIED="1609863158621" TEXT="... impossible to abstract"/>
</node>
<node CREATED="1609863137745" ID="ID_1054788277" MODIFIED="1609863170613" TEXT="Software has multiple operation phases">
<node CREATED="1609863240201" ID="ID_1551957234" MODIFIED="1609863242796" TEXT="Phases">
<node CREATED="1609863176128" ID="ID_33493409" MODIFIED="1609863178244" TEXT="Startup"/>
<node CREATED="1609863178601" ID="ID_1511081625" MODIFIED="1609863182837" TEXT="Initialization"/>
<node CREATED="1609863183663" ID="ID_585028285" MODIFIED="1609863187068" TEXT="Normal processing"/>
<node CREATED="1609863194058" ID="ID_880868238" MODIFIED="1609863198989" TEXT="Re-initializaion"/>
<node CREATED="1609863200299" ID="ID_1049051572" MODIFIED="1609863201941" TEXT="Shutdown"/>
</node>
<node CREATED="1609863214273" ID="ID_529186036" MODIFIED="1609863221341" TEXT="Each operation has its own architecture"/>
<node CREATED="1609863173232" ID="ID_344700212" MODIFIED="1609863250173" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1609863254625" ID="ID_1450176344" MODIFIED="1609863266196" TEXT="Config file considered data during startup"/>
<node CREATED="1609863266840" ID="ID_1693084540" MODIFIED="1609863279188" TEXT="... but not architectural element during normal processing">
<node CREATED="1609863286280" ID="ID_792298179" MODIFIED="1609863290765" TEXT="Information already distributed"/>
<node CREATED="1609863291183" ID="ID_573409994" MODIFIED="1609863296530" TEXT="... across the system"/>
</node>
</node>
<node CREATED="1609863316695" ID="ID_323350086" MODIFIED="1609863355046" TEXT="Description of architecture">
<node CREATED="1609863322319" ID="ID_1147740445" MODIFIED="1609863328938" TEXT="Operational behavior for each phase"/>
<node CREATED="1609863360555" ID="ID_1759102518" MODIFIED="1609863366618" TEXT="Architecture of transition between phases"/>
</node>
<node CREATED="1609863392279" ID="ID_1156548002" MODIFIED="1609863422619" TEXT="Difference between">
<node CREATED="1609863425062" ID="ID_1975245058" MODIFIED="1609863428939" TEXT="Software architecture">
<node CREATED="1609863432742" ID="ID_178075754" MODIFIED="1609863489524" TEXT="Abstraction of runtime behavior"/>
</node>
<node CREATED="1609863429318" ID="ID_1425908437" MODIFIED="1609863432347" TEXT="Software structure">
<node CREATED="1609863491942" ID="ID_152822475" MODIFIED="1609863499554" TEXT="Property of static software source code"/>
</node>
<node CREATED="1609863703126" ID="ID_418445844" MODIFIED="1609863719632" TEXT="... separate design activities"/>
<node CREATED="1609863720366" ID="ID_805642536" MODIFIED="1609863725257" TEXT="... but closely related"/>
</node>
<node CREATED="1609863530628" ID="ID_610555192" MODIFIED="1609863534769" TEXT="... advantage to have">
<node CREATED="1609863535015" ID="ID_1797350996" MODIFIED="1609863540636" TEXT="modular sructure of source code"/>
<node CREATED="1609863541109" ID="ID_1198433237" MODIFIED="1609863550249" TEXT="... matching decomposition of behavior within a running system"/>
<node CREATED="1609863563445" ID="ID_1288090093" MODIFIED="1609863568034" TEXT="... but as well for shared library">
<node CREATED="1609863568316" ID="ID_1070216755" MODIFIED="1609863574898" TEXT="Components implemented"/>
<node CREATED="1609863575242" ID="ID_1031056161" MODIFIED="1609863579898" TEXT="... using parts of same code"/>
<node CREATED="1609863580258" ID="ID_1432588507" MODIFIED="1609863591387" TEXT="Example">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="wizard"/>
<node CREATED="1609863592101" ID="ID_1072309834" MODIFIED="1609863594394" TEXT="Shared library"/>
</node>
<node COLOR="#338800" CREATED="1609863594941" ID="ID_1931837454" MODIFIED="1609863687694" TEXT="What&apos;s the advantage???">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="password"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1609863735748" FOLDED="true" ID="ID_1700586888" MODIFIED="1609863738859" TEXT="Elements">
<icon BUILTIN="full-2"/>
<node CREATED="1609864343265" ID="ID_1821839541" MODIFIED="1609864351865" TEXT="Introduction">
<icon BUILTIN="full-0"/>
<node CREATED="1609863739948" ID="ID_554024791" LINK="A software architecture is defined by a configuration of architectural elements&#x2014;components, connectors, and data&#x2014;constrained in their relationships in order to achieve a desired set of architectural properties. " MODIFIED="1609863752989" TEXT="Definition"/>
<node CREATED="1609863849203" ID="ID_1293048786" MODIFIED="1609863858360" TEXT="Architecture elements include">
<node CREATED="1609863966258" ID="ID_1297413392" MODIFIED="1609864047563" TEXT="Processing elements">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1609863970083" ID="ID_223699966" MODIFIED="1609863977311" TEXT="Perform transformation on data"/>
<node CREATED="1609864036515" ID="ID_1669985284" MODIFIED="1609864046835" TEXT="Components">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1609863977940" ID="ID_1494711746" MODIFIED="1609864048147" TEXT="Data elements">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1609863981539" ID="ID_154563987" MODIFIED="1609863991583" TEXT="Contains information used and transformed"/>
</node>
<node CREATED="1609863992634" ID="ID_519896334" MODIFIED="1609864048546" TEXT="Connecting elements">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1609864008467" ID="ID_1277016215" MODIFIED="1609864017334" TEXT="Glue holding pieces of architecture together"/>
<node CREATED="1609864052278" ID="ID_1752942654" MODIFIED="1609864056260" TEXT="Connectors">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1609864213380" ID="ID_1672789903" MODIFIED="1609864226782" TEXT="Definition of architecture with arrows and box">
<node CREATED="1609864227065" ID="ID_1915118138" MODIFIED="1609864236349" TEXT="Can&apos;t describe network based architecture"/>
<node CREATED="1609864237097" ID="ID_903168908" MODIFIED="1609864259950" TEXT="Miss the data">
<node CREATED="1609864246163" ID="ID_1667492619" MODIFIED="1609864247125" TEXT="Nature"/>
<node CREATED="1609864247480" ID="ID_1606871306" MODIFIED="1609864248508" TEXT="Location"/>
<node CREATED="1609864250888" ID="ID_425626535" MODIFIED="1609864252294" TEXT="Movement"/>
</node>
<node CREATED="1609864261777" ID="ID_921324551" MODIFIED="1609864278926" TEXT="... most important for network-based architecture"/>
<node CREATED="1609864312050" ID="ID_764685942" MODIFIED="1609864319453" TEXT="The map is not the territory">
<node CREATED="1609864319648" ID="ID_1854697515" MODIFIED="1609864326149" TEXT="The description of the architecture"/>
<node CREATED="1609864326664" ID="ID_598044329" MODIFIED="1609864331260" TEXT="... is not the architecture"/>
</node>
</node>
</node>
<node CREATED="1609864352657" ID="ID_1559549613" MODIFIED="1609864362061" TEXT="Components">
<icon BUILTIN="full-1"/>
<node CREATED="1609864364351" ID="ID_1949391964" MODIFIED="1609864373068" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A component is an abstract unit of software instructions and internal
    </p>
    <p>
      state that provides a transformation of data via its interface.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1609864386216" ID="ID_56198639" MODIFIED="1609864397444" TEXT="Most recognized aspects of software architecture"/>
<node CREATED="1609864480416" ID="ID_1052422603" MODIFIED="1609864513127" TEXT="Examples">
<icon BUILTIN="wizard"/>
<node CREATED="1609864485144" ID="ID_1722389174" MODIFIED="1609864488220" TEXT="Transformation">
<node CREATED="1609864491080" ID="ID_1497670690" MODIFIED="1609864499444" TEXT="Loading into memory from storage"/>
<node CREATED="1609864502064" ID="ID_1736816934" MODIFIED="1609864508179" TEXT="Performing calculation"/>
<node CREATED="1609864515807" ID="ID_1494024050" MODIFIED="1609864520666" TEXT="Translating to a different format"/>
<node CREATED="1609864522488" ID="ID_917198698" MODIFIED="1609864527691" TEXT="Encapsulate other data"/>
</node>
</node>
<node CREATED="1609864561182" ID="ID_906640142" MODIFIED="1609864595164" TEXT="Defined by">
<node CREATED="1609864595366" ID="ID_534911062" MODIFIED="1609864599763" TEXT="Its interface"/>
<node CREATED="1609864600231" ID="ID_507440336" MODIFIED="1609864606987" TEXT="Service it provides to other components"/>
<node CREATED="1609864610519" ID="ID_1574460737" MODIFIED="1609864624003" TEXT="... rather than its implementation"/>
</node>
</node>
<node CREATED="1609864649856" ID="ID_1065895998" MODIFIED="1610890616254" TEXT="Connectors">
<icon BUILTIN="full-2"/>
<node CREATED="1610890616539" ID="ID_700697883" MODIFIED="1610890626393" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A connector is an abstract mechanism that mediates communication,
    </p>
    <p>
      coordination, or cooperation among components.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1610890649055" ID="ID_1502337554" MODIFIED="1610890683082" TEXT="Examples">
<icon BUILTIN="wizard"/>
<node CREATED="1610890650791" ID="ID_344677953" MODIFIED="1610890662347" TEXT="Shared representations"/>
<node CREATED="1610890663287" ID="ID_507603386" MODIFIED="1610890666539" TEXT="Remote procedure calls"/>
<node CREATED="1610890667309" ID="ID_52169783" MODIFIED="1610890671147" TEXT="Message-passing protocols"/>
<node CREATED="1610890671919" ID="ID_539357941" MODIFIED="1610890676291" TEXT="Data streams"/>
</node>
<node CREATED="1610890891885" ID="ID_627432062" MODIFIED="1610890902096" TEXT="Communication between components"/>
<node CREATED="1610890902577" ID="ID_826844400" MODIFIED="1610890914402" TEXT="... transferring data from interface to another"/>
<node CREATED="1610890915730" ID="ID_1111908740" MODIFIED="1610890925222" TEXT="... without changing it">
<node CREATED="1610890963769" ID="ID_1969929088" MODIFIED="1610890969430" TEXT="In contrast to components"/>
</node>
</node>
<node CREATED="1610890973938" ID="ID_276841052" MODIFIED="1610890976329" TEXT="Data">
<icon BUILTIN="full-3"/>
<node CREATED="1610891009746" ID="ID_1580344058" MODIFIED="1610891043047" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A datum is an element of information that is transferred from a component, or received by a component, via a connector.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1610891065304" ID="ID_1911875558" MODIFIED="1610891068829" TEXT="Examples">
<icon BUILTIN="wizard"/>
<node CREATED="1610891071608" ID="ID_1213382995" MODIFIED="1610891074962" TEXT="Bytes-sequences"/>
<node CREATED="1610891075636" ID="ID_1994901509" MODIFIED="1610891077188" TEXT="Messages"/>
<node CREATED="1610891077600" ID="ID_1895516623" MODIFIED="1610891083404" TEXT="Marshalled parameters"/>
<node CREATED="1610891813515" ID="ID_365737761" MODIFIED="1610891815764" TEXT="Serialized objects"/>
</node>
<node CREATED="1610891829788" ID="ID_960054079" MODIFIED="1610891832353" TEXT="Do not include">
<node CREATED="1610891832661" ID="ID_1905961262" MODIFIED="1610891856268" TEXT="Information permanently resident">
<node COLOR="#338800" CREATED="1610891856645" ID="ID_802896613" MODIFIED="1610891864884" TEXT="Not sure what it means">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="password"/>
</node>
</node>
<node CREATED="1610891867284" ID="ID_1429166354" MODIFIED="1610891878265" TEXT="Information hidden in components">
<node COLOR="#338800" CREATED="1610891879451" ID="ID_1394742727" MODIFIED="1610891885620" TEXT="Really?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="password"/>
</node>
</node>
</node>
<node CREATED="1610891933379" ID="ID_1690599178" MODIFIED="1610891950455" TEXT="Nature of data elements in network-based application"/>
<node CREATED="1610891950858" ID="ID_1706360121" MODIFIED="1610891963823" TEXT="... determine often if architectural style appropriate"/>
</node>
</node>
<node CREATED="1610893396116" FOLDED="true" ID="ID_1534967115" MODIFIED="1610893430705" TEXT="Configurations">
<icon BUILTIN="full-3"/>
<node CREATED="1610893400853" ID="ID_1663069549" MODIFIED="1610893407165" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A configuration is the structure of architectural relationships among
    </p>
    <p>
      components, connectors, and data during a period of system run-time.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1610893477060" ID="ID_1705670215" MODIFIED="1610893487112" TEXT="Configuration equivalent"/>
<node CREATED="1610893487757" ID="ID_1248353547" MODIFIED="1610893493728" TEXT="... to set of specific constraints"/>
<node CREATED="1610893494228" ID="ID_217445259" MODIFIED="1610893498977" TEXT="... on components interactions"/>
</node>
<node CREATED="1610893531546" FOLDED="true" ID="ID_1029283500" MODIFIED="1610893536129" TEXT="Properties">
<icon BUILTIN="full-4"/>
<node CREATED="1610893713215" ID="ID_1443841376" MODIFIED="1610893733468" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Includes all properties that derive from the selection and arrangement of components, connectors, and data within the system.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1610893897246" ID="ID_1550221914" MODIFIED="1610893900661" TEXT="Examples">
<icon BUILTIN="wizard"/>
<node CREATED="1610893901453" ID="ID_1819409508" MODIFIED="1610893910155" TEXT="Functional properties"/>
<node CREATED="1610893910549" ID="ID_879487760" MODIFIED="1610893915432" TEXT="Non-functional properties">
<node CREATED="1610893918612" ID="ID_892027108" MODIFIED="1610893923103" TEXT="Relative ease of evolution"/>
<node CREATED="1610893923540" ID="ID_1744589456" MODIFIED="1610893927816" TEXT="Reusability of components"/>
<node CREATED="1610893928597" ID="ID_1443762340" MODIFIED="1610893932169" TEXT="Efficiency"/>
<node CREATED="1610893932933" ID="ID_961459892" MODIFIED="1610893937273" TEXT="Dynamic extensibility"/>
</node>
<node CREATED="1610893943797" ID="ID_33046402" MODIFIED="1610893993863" TEXT="... often referred as quality attributes"/>
</node>
<node CREATED="1610894222136" ID="ID_365582150" MODIFIED="1610894228947" TEXT="Induced by set of constraints in architecture"/>
<node CREATED="1610894248951" ID="ID_1750270142" MODIFIED="1610894260804" TEXT="... motivated by application of software principles">
<node CREATED="1610894262727" ID="ID_1729274333" MODIFIED="1610894271542" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1610894272575" ID="ID_307648216" LINK="https://flylib.com/books/en/2.121.1/the_pipe_and_filter_style.html" MODIFIED="1610894302496" TEXT="Uniform pipe-and-filter style"/>
</node>
</node>
<node CREATED="1610894391629" ID="ID_465011338" MODIFIED="1610894396921" TEXT="Goal of architectural design">
<node CREATED="1610894397108" ID="ID_552505362" MODIFIED="1610894402241" TEXT="Create architecture"/>
<node CREATED="1610894402949" ID="ID_1060325339" MODIFIED="1610894407193" TEXT="... with a set of properties"/>
<node CREATED="1610894407828" ID="ID_398931384" MODIFIED="1610894415298" TEXT="... forming a superset of system requirements"/>
</node>
</node>
<node CREATED="1610894443668" FOLDED="true" ID="ID_1928025693" MODIFIED="1610894450778" TEXT="Styles">
<icon BUILTIN="full-5"/>
<node CREATED="1610894458980" ID="ID_1029881430" MODIFIED="1610894558155" TEXT="Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      An architectural style is a coordinated set of architectural constraints
    </p>
    <p>
      that restricts the roles/features of architectural elements and the allowed
    </p>
    <p>
      relationships among those elements within any architecture that
    </p>
    <p>
      conforms to that style.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1610894560722" ID="ID_1094160201" MODIFIED="1610894568382" TEXT="Architecture is functional and non functional"/>
<node CREATED="1610894568778" ID="ID_1881738794" MODIFIED="1610894572743" TEXT="... so difficult to compare"/>
<node CREATED="1610894573194" ID="ID_1190935815" MODIFIED="1610894857395" TEXT="Styles categorize architectures">
<node CREATED="1610894858054" ID="ID_978082908" MODIFIED="1610894869835" TEXT="Provide abstraction for interaction of components"/>
<node CREATED="1610894871526" ID="ID_1878578763" MODIFIED="1610894884273" TEXT="Essence of pattern of interaction"/>
<node CREATED="1610894887262" ID="ID_221881828" MODIFIED="1610894903864" TEXT="Ignore incidental details of rest of architecture"/>
<node CREATED="1610894994980" ID="ID_880570489" MODIFIED="1610895002360" TEXT="Can address different aspect of architecture">
<node CREATED="1610895002556" ID="ID_504932361" MODIFIED="1610895005977" TEXT="An architecture"/>
<node CREATED="1610895006347" ID="ID_1177299576" MODIFIED="1610895009442" TEXT="... can have multiple styles"/>
</node>
<node CREATED="1610895161675" ID="ID_617314821" MODIFIED="1610895173157" TEXT="NOT a personalization of the design process">
<node CREATED="1610895175993" ID="ID_1755566458" MODIFIED="1610895184934" TEXT="Confusing with etymology of &quot;style&quot;"/>
</node>
<node CREATED="1610895239994" ID="ID_1467866222" MODIFIED="1610895246709" TEXT="Set of constraints applied to the design"/>
</node>
<node CREATED="1610895033869" ID="ID_1880160442" MODIFIED="1610895036873" TEXT="No silver bullet">
<node CREATED="1610895037059" ID="ID_1758396937" MODIFIED="1610895040336" TEXT="Style should be chosen"/>
<node CREATED="1610895040683" ID="ID_261764306" MODIFIED="1610895048688" TEXT="... depending of the problem at hand"/>
</node>
</node>
<node CREATED="1610895334074" ID="ID_504101192" MODIFIED="1610895367464" TEXT="Patterns and pattern Language">
<icon BUILTIN="full-6"/>
</node>
</node>
</node>
</map>
