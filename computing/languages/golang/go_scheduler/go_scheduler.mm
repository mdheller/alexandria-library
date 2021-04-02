<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1589291675288" ID="ID_1522010724" MODIFIED="1610010298796" TEXT="Go Scheduler">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      <b><font size="4"><u>OS Scheduler</u>&#160;</font></b>
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        How can you define a program? What does it create when running?
      </li>
      <li>
        How can you define a thread?
      </li>
      <li>
        What means concurrency? Parallelism?
      </li>
      <li>
        How does a Thread keep track of what to execute?
      </li>
      <li>
        What are the three different states of a Thread? What is imposing these states?
      </li>
      <li>
        What kind of work a Thread can do? What's the difference between them?
      </li>
      <li>
        What is context switch? What the consequences on the kind of work they can do? (see previous question)
      </li>
      <li>
        What is a preemptive scheduler?
      </li>
      <li>
        What is the state you want to avoid for threads?
      </li>
      <li>
        What balance do you need to find for efficiency?
      </li>
      <li>
        What could be a solution to find this balance?
      </li>
      <li>
        Find two causes related to the balance discussed earlier for latency.<br />
      </li>
    </ol>
    <p>
      
    </p>
    <p>
      <b><font size="4"><u>Go Scheduler</u>&#160;</font></b>
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        Explain simply hyper threading
      </li>
      <li>
        What are the two different run queue for a Go program?
      </li>
      <li>
        What are the three goroutine states?
      </li>
      <li>
        Is Go scheduler preemptive? What does it mean for context switching?
      </li>
      <li>
        What are the user space events the Go scheduler needs for context switching?
      </li>
    </ol>
  </body>
</html>
</richcontent>
<node CREATED="1589291980782" ID="ID_832523280" LINK="https://www.ardanlabs.com/blog/2018/08/scheduling-in-go-part1.html" MODIFIED="1589373444464" POSITION="right" TEXT="OS Scheduler">
<icon BUILTIN="full-1"/>
<node CREATED="1589291991623" FOLDED="true" ID="ID_833789849" MODIFIED="1589292196946" TEXT="Introduction">
<icon BUILTIN="full-0"/>
<node CREATED="1589291995139" ID="ID_1213024889" MODIFIED="1589292014617" TEXT="Scheduler allows multithreaded Go programs">
<node CREATED="1589292017797" ID="ID_587795151" MODIFIED="1589292020837" TEXT="efficient"/>
<node CREATED="1589292021219" ID="ID_498549372" MODIFIED="1589292022777" TEXT="performant"/>
</node>
<node CREATED="1589292073094" ID="ID_1392838348" MODIFIED="1589292080914" TEXT="... due to sympathies between">
<node CREATED="1589292081096" ID="ID_834088347" MODIFIED="1589292083371" TEXT="Go scheduler"/>
<node CREATED="1589292083736" ID="ID_1672711331" MODIFIED="1589292090527" TEXT="OS scheduler"/>
</node>
<node CREATED="1589292172741" ID="ID_836613965" MODIFIED="1589292182628" TEXT="Critical part of foundational knowledge">
<node CREATED="1589292182866" ID="ID_181966732" MODIFIED="1589292185166" TEXT="Mechanics"/>
<node CREATED="1589292185514" ID="ID_1327274957" MODIFIED="1589292188067" TEXT="Semantics"/>
</node>
</node>
<node CREATED="1589292191655" FOLDED="true" ID="ID_1975461206" MODIFIED="1589292197912" TEXT="OS Scheduler">
<icon BUILTIN="full-1"/>
<node CREATED="1589292202557" ID="ID_1921647163" MODIFIED="1589292206602" TEXT="OS scheduler complex">
<node CREATED="1589292211677" ID="ID_134953794" MODIFIED="1589292220530" TEXT="Take into account hardware">
<node CREATED="1589292220736" ID="ID_1682581779" MODIFIED="1589292222098" TEXT="Setup"/>
<node CREATED="1589292222518" ID="ID_928484809" MODIFIED="1589292223437" TEXT="Layout"/>
<node CREATED="1589292234334" ID="ID_829731360" MODIFIED="1589292237331" TEXT="Includes">
<node CREATED="1589292237538" ID="ID_458489070" MODIFIED="1589292240548" TEXT="Multiple processors"/>
<node CREATED="1589292240874" ID="ID_1433906481" MODIFIED="1589292242839" TEXT="Multiple cores"/>
<node CREATED="1589292243229" ID="ID_91325199" MODIFIED="1589292246281" TEXT="CPU caches"/>
<node CREATED="1589292246748" ID="ID_1163413568" LINK="https://frankdenneman.nl/2016/07/06/introduction-2016-numa-deep-dive-series/" MODIFIED="1589292257105" TEXT="NUMA"/>
</node>
</node>
</node>
<node CREATED="1589292272341" ID="ID_1069105424" MODIFIED="1589292274103" TEXT="Program">
<node CREATED="1589292274334" ID="ID_826442055" MODIFIED="1589292281111" TEXT="Serie of sequential execution"/>
<node CREATED="1589292297671" ID="ID_1266725353" MODIFIED="1589292303670" TEXT="... executed by Threads">
<node CREATED="1589292309380" ID="ID_1658054551" MODIFIED="1589292313861" TEXT="&quot;path of execution&quot;"/>
</node>
<node CREATED="1589292327711" ID="ID_1417043959" MODIFIED="1589292334446" TEXT="When running">
<node CREATED="1589292334583" ID="ID_1405028426" MODIFIED="1589292338450" TEXT="Creates a Process"/>
<node CREATED="1589292339007" ID="ID_35535084" MODIFIED="1589292346039" TEXT="... which is given a Thread"/>
</node>
</node>
<node CREATED="1589292351230" ID="ID_1453704079" MODIFIED="1589292367831" TEXT="Threads">
<node CREATED="1589292352451" ID="ID_395673089" MODIFIED="1589292357723" TEXT="Can create more Threads"/>
<node CREATED="1589292368348" ID="ID_1182945159" MODIFIED="1589292376168" TEXT="Run independently of each others"/>
<node CREATED="1589292382436" ID="ID_1878998695" MODIFIED="1589292391526" TEXT="Scheduling decisions made at Thread level"/>
<node CREATED="1589292403719" ID="ID_1716676028" MODIFIED="1589292405645" TEXT="Can run">
<node CREATED="1589292405953" ID="ID_1232064957" MODIFIED="1589292407558" TEXT="Concurently">
<node CREATED="1589292407724" ID="ID_40842891" MODIFIED="1589292834690" TEXT="Taking turns"/>
<node CREATED="1589292433880" ID="ID_375463941" MODIFIED="1589292841960" TEXT="... on a core"/>
</node>
<node CREATED="1589292415809" ID="ID_329900903" MODIFIED="1589292417628" TEXT="Parallel">
<node CREATED="1589292417819" ID="ID_1393867086" MODIFIED="1589292426375" TEXT="Running at the same time"/>
<node CREATED="1589292426916" ID="ID_1615433240" MODIFIED="1589292430494" TEXT="... on different cores"/>
</node>
</node>
<node CREATED="1589292448182" ID="ID_175244372" MODIFIED="1590653701008" TEXT="Maintain their own state for execution">
<node CREATED="1589292464160" ID="ID_1394587209" MODIFIED="1589292465021" TEXT="safe"/>
<node CREATED="1589292465410" ID="ID_1738916800" MODIFIED="1589292466533" TEXT="local"/>
<node CREATED="1589292466993" ID="ID_1438108937" MODIFIED="1589292470226" TEXT="independent"/>
</node>
</node>
<node CREATED="1589292480332" ID="ID_1761795300" MODIFIED="1589292486578" TEXT="OS Scheduler">
<node CREATED="1589292486752" ID="ID_545780935" MODIFIED="1589292879928" TEXT="Don&apos;t let core idle if Thread can be executed">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1589292512181" ID="ID_1356638235" MODIFIED="1589292888230" TEXT="Create illusion that all Thread execute at same time">
<icon BUILTIN="full-2"/>
<node CREATED="1589292558982" ID="ID_1273836137" MODIFIED="1589292571557" TEXT="Run Threads with high priority"/>
<node CREATED="1589292585290" ID="ID_155101967" MODIFIED="1589292595496" TEXT="... but Thread with lower priority"/>
<node CREATED="1589292596204" ID="ID_367975972" MODIFIED="1589292602456" TEXT="... can&apos;t be starved of execution time"/>
<node CREATED="1589292602916" ID="ID_134117898" MODIFIED="1589292922092" TEXT="... needs quick / smart decisions"/>
</node>
</node>
</node>
<node CREATED="1589292661946" FOLDED="true" ID="ID_1467650007" MODIFIED="1589296725211" TEXT="Executing instructions">
<icon BUILTIN="full-2"/>
<node CREATED="1589292676633" ID="ID_1102431406" LINK="https://en.wikipedia.org/wiki/Program_counter" MODIFIED="1590653731844" TEXT="Program counter (PC)">
<node CREATED="1589292684292" ID="ID_707617983" MODIFIED="1589292693083" TEXT="Called as well Instruction Pointer (IP)"/>
</node>
<node CREATED="1589292705672" ID="ID_326716484" MODIFIED="1589292723822" TEXT="Allows Thread to keep track of next instruction to execute"/>
<node CREATED="1589292733562" ID="ID_74968861" MODIFIED="1589292737919" TEXT="In most processor">
<node CREATED="1589292738355" ID="ID_257011987" MODIFIED="1589292743333" TEXT="... point to the next instruction"/>
<node CREATED="1589292743676" ID="ID_1329636159" MODIFIED="1589292746047" TEXT="... not the current one"/>
</node>
<node CREATED="1589292960022" FOLDED="true" ID="ID_1913732204" MODIFIED="1589292964328" TEXT="Illustration">
<icon BUILTIN="licq"/>
<node CREATED="1589292964720" ID="ID_1371693544" MODIFIED="1589292967466">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="instruction_pointer.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589292998145" FOLDED="true" ID="ID_263491842" MODIFIED="1589293012170" TEXT="Stack trace in Go programs">
<node CREATED="1589293494785" ID="ID_1044958872" MODIFIED="1589293498875" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589293012783" ID="ID_920725218" MODIFIED="1589293280988" TEXT="Example panic">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>goroutine 1 [running]:
   main.example(0xc000042748, 0x2, 0x4, 0x106abae, 0x5, 0xa)
       stack_trace/example1/example1.go:13 +0x39                 &lt;- LOOK HERE
   main.main()
       stack_trace/example1/example1.go:8 +0x72                  &lt;- LOOK HERE</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589293079400" ID="ID_617323151" MODIFIED="1589293147908" TEXT="PC value offsets">
<node CREATED="1589293148144" ID="ID_1772527049" MODIFIED="1589293161757" TEXT="+0x72">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1589293152782" ID="ID_102571768" MODIFIED="1589293162238" TEXT="+0x39">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1589293115359" ID="ID_925220681" MODIFIED="1589293122843" TEXT="... representing Thread next execution"/>
<node CREATED="1589293125951" ID="ID_857729007" MODIFIED="1589293131417" TEXT="... inside function"/>
<node CREATED="1589293089123" ID="ID_766285012" MODIFIED="1589293095075" TEXT="... if program didn&apos;t crash"/>
</node>
<node CREATED="1589293269149" ID="ID_1977063899" MODIFIED="1589293295101" TEXT="Code responsible">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>https://github.com/ardanlabs/gotraining/blob/master/topics/go/profiling/stack_trace/example1/example1.go

07 func main() {
08     example(make([]string, 2, 4), &quot;hello&quot;, 10)
09 }

12 func example(slice []string, str string, i int) {
13    panic(&quot;Want stack trace&quot;)
14 }</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589293148144" ID="ID_924402642" MODIFIED="1589293161757" TEXT="+0x72">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1589293307246" ID="ID_994666295" MODIFIED="1589293314861" TEXT="57 (base 10)"/>
<node CREATED="1589293342784" ID="ID_18999510" MODIFIED="1589293362976" TEXT="... number of bytes below starting instruction"/>
<node CREATED="1589293357826" ID="ID_350340156" MODIFIED="1589293359432" TEXT="... of function"/>
</node>
</node>
<node CREATED="1589293472508" ID="ID_1589887245" MODIFIED="1589293478402" TEXT="objdump">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>$ go tool objdump -S -s &quot;main.example&quot; ./example1
TEXT main.example(SB) stack_trace/example1/example1.go
func example(slice []string, str string, i int) {
  0x104dfa0&#x9;&#x9;65488b0c2530000000&#x9;MOVQ GS:0x30, CX
  0x104dfa9&#x9;&#x9;483b6110&#x9;&#x9;CMPQ 0x10(CX), SP
  0x104dfad&#x9;&#x9;762c&#x9;&#x9;&#x9;JBE 0x104dfdb
  0x104dfaf&#x9;&#x9;4883ec18&#x9;&#x9;SUBQ $0x18, SP
  0x104dfb3&#x9;&#x9;48896c2410&#x9;&#x9;MOVQ BP, 0x10(SP)
  0x104dfb8&#x9;&#x9;488d6c2410&#x9;&#x9;LEAQ 0x10(SP), BP
&#x9;panic(&quot;Want stack trace&quot;)
  0x104dfbd&#x9;&#x9;488d059ca20000&#x9;LEAQ runtime.types+41504(SB), AX
  0x104dfc4&#x9;&#x9;48890424&#x9;&#x9;MOVQ AX, 0(SP)
  0x104dfc8&#x9;&#x9;488d05a1870200&#x9;LEAQ main.statictmp_0(SB), AX
  0x104dfcf&#x9;&#x9;4889442408&#x9;&#x9;MOVQ AX, 0x8(SP)
  0x104dfd4&#x9;&#x9;e8c735fdff&#x9;&#x9;CALL runtime.gopanic(SB)
  0x104dfd9&#x9;&#x9;0f0b&#x9;&#x9;&#x9;UD2              &lt;--- LOOK HERE PC(+0x39)</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589293481776" ID="ID_675357200" MODIFIED="1589293484656" TEXT="Last line is PC"/>
<node CREATED="1589293485034" ID="ID_485827027" MODIFIED="1589293491028" TEXT="... last before is the panic"/>
</node>
</node>
</node>
</node>
<node CREATED="1589293522468" FOLDED="true" ID="ID_1659681586" MODIFIED="1589296726638" TEXT="Thread States">
<icon BUILTIN="full-3"/>
<node CREATED="1589293538140" ID="ID_991104069" MODIFIED="1589293545861" TEXT="Dictates role scheduler takes with Thread"/>
<node CREATED="1589293556614" FOLDED="true" ID="ID_1543793818" MODIFIED="1589293564465" TEXT="Thread can be in 1 of 3 states">
<node CREATED="1589293564663" ID="ID_14810574" MODIFIED="1589368617188" TEXT="Waiting">
<icon BUILTIN="full-1"/>
<node CREATED="1589293582157" ID="ID_465704740" MODIFIED="1589293585379" TEXT="Thread stopped"/>
<node CREATED="1589293585728" ID="ID_822793605" MODIFIED="1589293591486" TEXT="Waiting for something to continue"/>
<node CREATED="1589293593000" ID="ID_61217596" MODIFIED="1590653910286" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589293595107" ID="ID_972773246" MODIFIED="1589293600011" TEXT="Waiting for hardware">
<node CREATED="1589293600163" ID="ID_116064331" MODIFIED="1589293601253" TEXT="Disk"/>
<node CREATED="1589293601564" ID="ID_1174670321" MODIFIED="1589293602694" TEXT="Network"/>
</node>
<node CREATED="1589293603368" ID="ID_1486209808" MODIFIED="1589293606797" TEXT="OS">
<node CREATED="1589293607003" ID="ID_478377039" MODIFIED="1589293610293" TEXT="System calls"/>
</node>
<node CREATED="1589293611332" ID="ID_566912623" MODIFIED="1589293625490" TEXT="Synchronization calls">
<node CREATED="1589293629101" ID="ID_238535325" MODIFIED="1589293632453" TEXT="atomic"/>
<node CREATED="1589293632993" ID="ID_1207766153" MODIFIED="1589293635743" TEXT="mutexes"/>
</node>
</node>
<node CREATED="1589293641095" ID="ID_1153617806" LINK="https://en.wikipedia.org/wiki/Latency_(engineering)" MODIFIED="1589293659908" TEXT="Latencies"/>
<node CREATED="1589293646041" ID="ID_888810469" MODIFIED="1589293651709" TEXT="Root cause for bad performance"/>
</node>
<node CREATED="1589293567681" ID="ID_1944737675" MODIFIED="1589293573397" TEXT="Runnable">
<icon BUILTIN="full-2"/>
<node CREATED="1589293688532" ID="ID_1359554149" MODIFIED="1589293693422" TEXT="Thread wants time on a core"/>
<node CREATED="1589293694961" ID="ID_1522517259" MODIFIED="1589293705329" TEXT="... to execute its assigned machine instructions"/>
<node CREATED="1589293709007" ID="ID_170979564" MODIFIED="1589293713175" TEXT="If many Threads want time">
<node CREATED="1589293734700" ID="ID_253977973" MODIFIED="1589293738168" TEXT="Wait longer to have it"/>
<node CREATED="1589293738511" ID="ID_273131185" MODIFIED="1589293744461" TEXT="Time shortened when they have it"/>
<node CREATED="1589293753901" ID="ID_123541951" MODIFIED="1589293760072" TEXT="Root cause of bad performance"/>
</node>
</node>
<node CREATED="1589293569382" ID="ID_1754682917" MODIFIED="1589293574769" TEXT="Executing">
<icon BUILTIN="full-3"/>
<node CREATED="1589293769046" ID="ID_270442681" MODIFIED="1589293772593" TEXT="Thread placed on a core"/>
<node CREATED="1589293772983" ID="ID_889960912" MODIFIED="1589293777765" TEXT="Execute machine instructions"/>
<node CREATED="1589293781561" ID="ID_995939246" MODIFIED="1589293786292" TEXT="This is what everybody wants">
<node CREATED="1589293788647" ID="ID_1913496983" MODIFIED="1589293795408" TEXT="Job getting done"/>
</node>
</node>
</node>
</node>
<node CREATED="1589293797407" FOLDED="true" ID="ID_1424689980" MODIFIED="1589296727479" TEXT="Types of Work">
<icon BUILTIN="full-4"/>
<node CREATED="1589293802858" ID="ID_415019320" MODIFIED="1589293809628" TEXT="Two types of work a Thread can do">
<node CREATED="1589293809794" ID="ID_406491504" MODIFIED="1589550749576" TEXT="CPU-Bound">
<icon BUILTIN="full-1"/>
<node CREATED="1589293818108" ID="ID_1988050862" MODIFIED="1589293829081" TEXT="Never creates waiting state"/>
<node CREATED="1589293838145" ID="ID_1245731574" MODIFIED="1589293843334" TEXT="Constantly make calculation"/>
<node CREATED="1589293851551" ID="ID_599453130" MODIFIED="1589293863367" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589293854929" ID="ID_918957127" MODIFIED="1589293860809" TEXT="Thread calculating PI to Nth digit"/>
</node>
</node>
<node CREATED="1589293866083" ID="ID_1705009860" MODIFIED="1589550724837" TEXT="IO-Bound">
<icon BUILTIN="full-2"/>
<node CREATED="1589293874264" ID="ID_1753992254" MODIFIED="1589293883650" TEXT="Works causing Thread to go Waiting state"/>
<node CREATED="1589293908999" ID="ID_893241604" MODIFIED="1589293912569" TEXT="Examples">
<icon BUILTIN="wizard"/>
<node CREATED="1589293888184" ID="ID_1786410433" MODIFIED="1589293896814" TEXT="Request to">
<node CREATED="1589293897019" ID="ID_1431209742" MODIFIED="1589293898185" TEXT="Network"/>
<node CREATED="1589293898510" ID="ID_1390065197" MODIFIED="1589293901197" TEXT="Database"/>
<node CREATED="1589293901637" ID="ID_381914455" MODIFIED="1589293904564" TEXT="System call"/>
<node CREATED="1589293905879" ID="ID_413584816" MODIFIED="1589293907966" TEXT="..."/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1589293928964" FOLDED="true" ID="ID_158389861" MODIFIED="1589296728464" TEXT="Context Switching">
<icon BUILTIN="full-5"/>
<node CREATED="1589293938287" ID="ID_1405253729" MODIFIED="1589293946913" TEXT="If running either on">
<node CREATED="1589293940589" ID="ID_1564620575" MODIFIED="1589293941631" TEXT="Linux"/>
<node CREATED="1589293942154" ID="ID_488045484" MODIFIED="1589293948334" TEXT="Mac"/>
<node CREATED="1589293948765" ID="ID_1071800464" MODIFIED="1589293951256" TEXT="Windows"/>
</node>
<node CREATED="1589293953888" FOLDED="true" ID="ID_824935017" MODIFIED="1589293960470" TEXT="... OS that have preemptive scheduler">
<node CREATED="1589293965905" ID="ID_748814500" MODIFIED="1589293987742" TEXT="Scheduler impredictable for total Threads running at given time">
<icon BUILTIN="full-1"/>
<node CREATED="1589294002262" ID="ID_693431637" MODIFIED="1589294012721" TEXT="Thread priorities"/>
<node CREATED="1589294013133" ID="ID_373883360" MODIFIED="1589294014156" TEXT="Events"/>
<node CREATED="1589294014520" ID="ID_1353641319" MODIFIED="1589294020794" TEXT="... make impossible to determine"/>
<node CREATED="1589294021156" ID="ID_1137574617" MODIFIED="1589294028600" TEXT="... what scheduler will choose"/>
</node>
<node CREATED="1589294050424" ID="ID_1872532330" MODIFIED="1589294107944" TEXT="If you want determinism in app">
<icon BUILTIN="full-2"/>
<node CREATED="1589294093734" ID="ID_957699289" MODIFIED="1589294098401" TEXT="Need to control Thread">
<node CREATED="1589294098646" ID="ID_1297602003" MODIFIED="1589294102602" TEXT="Synchronization"/>
<node CREATED="1589294102976" ID="ID_693268140" MODIFIED="1589294104966" TEXT="Orchestration"/>
</node>
</node>
</node>
<node CREATED="1589294126029" ID="ID_960692389" MODIFIED="1589294131260" TEXT="Context Switch">
<node CREATED="1589294131411" ID="ID_1511966362" MODIFIED="1589294140378" TEXT="Physical act of swapping Threads on a core"/>
<node CREATED="1589294146933" ID="ID_1998754921" MODIFIED="1589294156332" TEXT="Thread selected from run queue move to Executing state"/>
<node CREATED="1589294166341" ID="ID_380402607" MODIFIED="1589294180316" TEXT="Thread pulled can come back to">
<node CREATED="1589294180593" ID="ID_598379336" MODIFIED="1589294194260" TEXT="Runnable state">
<node CREATED="1589294185432" ID="ID_243886332" MODIFIED="1589294188149" TEXT="if it can still run"/>
</node>
<node CREATED="1589294189038" ID="ID_1953165641" MODIFIED="1589294192036" TEXT="Waiting state">
<node CREATED="1589294201887" ID="ID_1579439631" MODIFIED="1589294207683" TEXT="IO-Bound type request"/>
</node>
</node>
<node CREATED="1589294211060" ID="ID_1486760062" MODIFIED="1589294215766" TEXT="Considered expensive">
<node CREATED="1589294216163" ID="ID_490359592" MODIFIED="1589294221435" TEXT="Take time to swap Threads"/>
<node CREATED="1589294227629" ID="ID_1045218575" LINK="https://eli.thegreenplace.net/2018/measuring-context-switching-and-memory-overheads-for-linux-threads/" MODIFIED="1589294246669" TEXT="Between 1000 and 1500 nanoseconds"/>
<node CREATED="1589294282789" ID="ID_858130442" MODIFIED="1589294284349" TEXT="... ~12k to ~18k instructions of latency"/>
</node>
<node CREATED="1589294295264" ID="ID_1844987690" MODIFIED="1589294384962" TEXT="If program focused on ">
<node CREATED="1589294385351" ID="ID_847660501" MODIFIED="1589294389339" TEXT="IO-Bound">
<node CREATED="1589294309265" ID="ID_1881248277" MODIFIED="1589294317027" TEXT="Context switches is an advantage"/>
<node CREATED="1589294323503" ID="ID_1490222293" MODIFIED="1589294330454" TEXT="Threads has to wait anyway"/>
<node CREATED="1589294331222" ID="ID_844718361" MODIFIED="1589294334887" TEXT="... so others can run"/>
<node CREATED="1589294335607" ID="ID_124798862" MODIFIED="1589294343419" TEXT="Core always work">
<node CREATED="1589294351125" ID="ID_315879399" MODIFIED="1589294356706" TEXT="Don&apos;t allow core to go idle"/>
<node CREATED="1589294357119" ID="ID_1811468709" MODIFIED="1589294361208" TEXT="... if there is work!"/>
</node>
</node>
<node CREATED="1589294374422" ID="ID_1977634132" MODIFIED="1589294380623" TEXT="CPU-Bound">
<node CREATED="1589294395017" ID="ID_353194929" MODIFIED="1589294408319" TEXT="Performance nightmare"/>
<node CREATED="1589294412352" ID="ID_1487171232" MODIFIED="1589294417074" TEXT="Thread always have work to do"/>
<node CREATED="1589294417408" ID="ID_327134592" MODIFIED="1589294420695" TEXT="Stopping it will cost"/>
</node>
</node>
</node>
</node>
<node CREATED="1589294433972" FOLDED="true" ID="ID_1291301156" MODIFIED="1589296729455" TEXT="Less is more">
<icon BUILTIN="full-6"/>
<node CREATED="1589294478955" ID="ID_165821530" MODIFIED="1589294484530" TEXT="When processor had only one core">
<node CREATED="1589294484736" ID="ID_1070191695" MODIFIED="1589294492937" TEXT="Scheduling wasn&apos;t compicated"/>
<node CREATED="1589294494639" ID="ID_91555910" MODIFIED="1589294501729" TEXT="Only one Thread executing at any time"/>
<node CREATED="1589294505320" ID="ID_1071147259" LINK="https://lwn.net/Articles/404993/" MODIFIED="1589294589871" TEXT="Define scheduler period">
<node CREATED="1589294509993" ID="ID_746261661" MODIFIED="1589294523661" TEXT="Attempt to execute all runnable Threads"/>
<node CREATED="1589294549827" ID="ID_843371428" MODIFIED="1589294557070" TEXT="... within period of time"/>
<node CREATED="1589294559200" ID="ID_362407558" MODIFIED="1589294573264" TEXT="... scheduling period / number of Thread to run"/>
</node>
<node CREATED="1589294619465" ID="ID_956786514" MODIFIED="1590654442152" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589294622131" ID="ID_1445947421" MODIFIED="1589294633879" TEXT="Scheduler period = 1000ms (1s)"/>
<node CREATED="1589294628350" ID="ID_402682466" MODIFIED="1589294662252" TEXT="10 Threads to run">
<node CREATED="1589294650757" ID="ID_334786313" MODIFIED="1589294655158" TEXT="Each thread 100ms each"/>
</node>
<node CREATED="1589294655735" ID="ID_1618204361" MODIFIED="1589294659497" TEXT="100 Threads to run">
<node CREATED="1589294662983" ID="ID_563023751" MODIFIED="1589294668777" TEXT="Each 10ms"/>
</node>
<node CREATED="1589294669297" ID="ID_788240009" MODIFIED="1589294672970" TEXT="1000 Threads to run">
<node CREATED="1589294676198" ID="ID_1450909973" MODIFIED="1589294680999" TEXT="1ms?"/>
<node CREATED="1589294681419" ID="ID_155498281" MODIFIED="1589294709076" TEXT="Percentage of context switches"/>
<node CREATED="1589294693485" ID="ID_664406221" MODIFIED="1589294696802" TEXT="... too significant"/>
<node CREATED="1589294698647" ID="ID_930294128" MODIFIED="1589294703636" TEXT="... for amount of running time"/>
</node>
<node CREATED="1589294722769" ID="ID_719647445" MODIFIED="1589294740992" TEXT="... needs a limit how small time slice can be"/>
<node CREATED="1589294756175" ID="ID_1343157836" MODIFIED="1589294762159" TEXT="... then increase scheduler period"/>
</node>
</node>
<node CREATED="1589294794732" ID="ID_181532270" LINK="https://blog.acolyer.org/2016/04/26/the-linux-scheduler-a-decade-of-wasted-cores/" MODIFIED="1589294802717" TEXT="Simplification scheduling decisions">
<node CREATED="1589294860701" ID="ID_680195971" MODIFIED="1589294868318" TEXT="You control number of Thread in your app"/>
<node CREATED="1589294869015" ID="ID_1561968188" MODIFIED="1589294873725" TEXT="When more Threads to consider"/>
<node CREATED="1589294876809" ID="ID_1307414213" MODIFIED="1589294882263" TEXT="... and IO-Bound happening"/>
<node CREATED="1589294882603" ID="ID_187236453" MODIFIED="1589294885274" TEXT="... it&apos;s chaos">
<node CREATED="1589294887874" ID="ID_1282204377" MODIFIED="1589294908627" TEXT="Take longer to">
<node CREATED="1589294908768" ID="ID_1160194659" MODIFIED="1589294910021" TEXT="schedule"/>
<node CREATED="1589294910337" ID="ID_1972971516" MODIFIED="1589294911496" TEXT="execute"/>
</node>
</node>
</node>
<node CREATED="1589294934537" ID="ID_818777183" MODIFIED="1589294978005" TEXT="Less Threads in a Runnable states"/>
<node CREATED="1589294946386" ID="ID_1191383435" MODIFIED="1589294956740" TEXT="... less scheduling overhead"/>
<node CREATED="1589294957429" ID="ID_1065385236" MODIFIED="1589294965210" TEXT="... more time each Threads get">
<node CREATED="1589294994791" ID="ID_1114566965" MODIFIED="1589294997960" TEXT="More work done!"/>
</node>
</node>
<node CREATED="1589294999410" FOLDED="true" ID="ID_1774934479" MODIFIED="1589296731246" TEXT="Find the Balance">
<icon BUILTIN="full-7"/>
<node CREATED="1589295022781" ID="ID_834634865" MODIFIED="1589295027414" TEXT="Balance to find between">
<node CREATED="1589295027644" ID="ID_1206070250" MODIFIED="1589295033452" TEXT="Number of cores you have"/>
<node CREATED="1589295036416" ID="ID_61379482" MODIFIED="1589295045201" TEXT="Number of Threads you need"/>
</node>
<node CREATED="1589295045781" ID="ID_1571815435" MODIFIED="1589295055990" TEXT="... to get best throughput for your app"/>
<node CREATED="1589295213307" FOLDED="true" ID="ID_1106379452" MODIFIED="1589295581124" TEXT="Thread pools to manage balance">
<node CREATED="1589295230153" ID="ID_1119407927" MODIFIED="1589295233904" TEXT="Not necessary anymore with Go"/>
<node CREATED="1589295251876" ID="ID_1836779416" MODIFIED="1589295283164" TEXT="Need to decide">
<node CREATED="1589295253561" ID="ID_1819811312" MODIFIED="1589295256527" TEXT="How many pools you need"/>
<node CREATED="1589295256868" ID="ID_1762440707" MODIFIED="1589295274663" TEXT="Max Threads per pool"/>
</node>
<node CREATED="1589295304533" ID="ID_1790879000" MODIFIED="1590654541944" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589295313116" ID="ID_1405915720" MODIFIED="1589295319804" TEXT="Windows NT with c++"/>
<node CREATED="1589295320537" ID="ID_217336719" MODIFIED="1589295332333" TEXT="3 Threads per core was magical">
<node CREATED="1589295336368" ID="ID_1019231907" MODIFIED="1589295343547" TEXT="Minimized latency cost"/>
<node CREATED="1589295344220" ID="ID_1584966357" MODIFIED="1589295347897" TEXT="... of context switching"/>
<node CREATED="1589295348302" ID="ID_1879019900" MODIFIED="1589295354495" TEXT="... while maximizing execution times"/>
<node CREATED="1589295354908" ID="ID_1961778219" MODIFIED="1589295356850" TEXT="... on core"/>
</node>
<node CREATED="1589295382534" ID="ID_1209530286" MODIFIED="1589295449629" TEXT="... Threads per pool for each core">
<node CREATED="1589295389259" ID="ID_1821256901" MODIFIED="1589295390396" TEXT="Min 1"/>
<node CREATED="1589295406094" ID="ID_782495290" MODIFIED="1589295408514" TEXT="Max 3"/>
</node>
<node CREATED="1589295456395" ID="ID_389772027" MODIFIED="1589295459872" TEXT="... other solutions">
<node CREATED="1589295460023" ID="ID_1105814346" MODIFIED="1589295470356" TEXT="2 threads per core">
<node CREATED="1589295463780" ID="ID_987748361" MODIFIED="1589295474949" TEXT="Idle time"/>
</node>
<node CREATED="1589295475638" ID="ID_589658122" MODIFIED="1589295478917" TEXT="4 threads per core">
<node CREATED="1589295479139" ID="ID_301686392" MODIFIED="1589295494053" TEXT="Costly latency of context switches"/>
</node>
</node>
</node>
<node CREATED="1589295514345" ID="ID_1320739120" MODIFIED="1589295520079" TEXT="Magic numbers don&apos;t work all the time">
<node CREATED="1589295520237" ID="ID_1071550674" MODIFIED="1589295536397" TEXT="If you do lot different type of work">
<node CREATED="1589295544214" ID="ID_334964630" MODIFIED="1589295548179" TEXT="Inconsistent latencies"/>
</node>
<node CREATED="1589295561799" ID="ID_562238459" MODIFIED="1589295567813" TEXT="Can get very complicated"/>
</node>
</node>
</node>
<node CREATED="1589295599228" FOLDED="true" ID="ID_1845107675" MODIFIED="1589296733020" TEXT="Cache Lines">
<icon BUILTIN="full-8"/>
<node CREATED="1589295613313" ID="ID_1325313909" MODIFIED="1589295621613" TEXT="Accessing data from main memory">
<node CREATED="1589295621826" ID="ID_1529238744" MODIFIED="1589295626148" TEXT="High latency costs!">
<node CREATED="1589295626473" ID="ID_1553086481" MODIFIED="1589295626993" TEXT="~100 to ~300 clock cycles"/>
</node>
<node CREATED="1589295637485" ID="ID_523299185" MODIFIED="1590654629152" TEXT="... so processors have local caches"/>
<node CREATED="1589295645912" ID="ID_1126145110" MODIFIED="1589295652411" TEXT="... to keep data close to the hardware">
<node CREATED="1589295662831" ID="ID_59650628" MODIFIED="1589295678042" TEXT="only ~3 to ~40 clock cycles"/>
<node CREATED="1589295679627" ID="ID_1147346242" MODIFIED="1589295681881" TEXT="... depending on cache"/>
</node>
<node CREATED="1589295655051" ID="ID_384894146" MODIFIED="1589295656928" TEXT="... that need it"/>
</node>
<node CREATED="1589295687650" ID="ID_335605594" MODIFIED="1589295695127" TEXT="One aspect of performance">
<node CREATED="1589295695404" ID="ID_1729125233" MODIFIED="1589295702220" TEXT="How much data I can put into processor"/>
<node CREATED="1589295702742" ID="ID_1608862709" MODIFIED="1589295708181" TEXT="... to reduce data-access latency"/>
</node>
<node CREATED="1589295821967" ID="ID_944124837" MODIFIED="1589295855282" TEXT="Illustration">
<icon BUILTIN="licq"/>
<node CREATED="1589295848236" ID="ID_993175621" MODIFIED="1589295850938">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="cpu-cache.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589295949322" ID="ID_1547345776" LINK="https://www.youtube.com/watch?v=WDIkqP4JbkE" MODIFIED="1589295978758" TEXT="Cache lines">
<node CREATED="1589295952228" ID="ID_635408078" MODIFIED="1589295961831" TEXT="Data exchanged between processor"/>
<node CREATED="1589295962213" ID="ID_555641640" MODIFIED="1589295965659" TEXT="... and main memory"/>
<node CREATED="1589295982044" ID="ID_1722349332" MODIFIED="1589295992150" TEXT="64 bytes of chunk in memory"/>
<node CREATED="1589296123882" ID="ID_1529166376" MODIFIED="1589296127481" TEXT="Exchanged between">
<node CREATED="1589296127671" ID="ID_99390591" MODIFIED="1589296128806" TEXT="Memory"/>
<node CREATED="1589296129250" ID="ID_1241912476" MODIFIED="1589296134864" TEXT="Caching system"/>
</node>
<node CREATED="1589296142201" ID="ID_1180255549" MODIFIED="1589296149527" TEXT="Each core has its own copy of any cache line needed">
<node CREATED="1589296152135" ID="ID_841749433" MODIFIED="1589296156731" TEXT="Hardware use"/>
<node CREATED="1589296157136" ID="ID_504675210" MODIFIED="1589296160076" TEXT="... value semantics"/>
</node>
<node CREATED="1589296180516" ID="ID_1518114112" MODIFIED="1589296205621" TEXT="... mutations to memory in multithreaded application">
<node CREATED="1589296191729" ID="ID_495386569" MODIFIED="1589296194517" TEXT="Nightmare!"/>
</node>
</node>
<node CREATED="1589296266868" ID="ID_1969650544" MODIFIED="1589296277650" TEXT="Multiple Threads can access data on same cache line">
<node CREATED="1589296285055" ID="ID_231047508" MODIFIED="1589296297548" TEXT="Each Thread get own copy"/>
<node CREATED="1589296287927" ID="ID_1359919450" MODIFIED="1589296302353" TEXT="... of Thread cache line"/>
</node>
<node CREATED="1589296364616" ID="ID_1046506713" MODIFIED="1589296374814" TEXT="When Thread make change to copy of cache line">
<node CREATED="1589296374990" ID="ID_131023702" MODIFIED="1589296379272" TEXT="All others copies of cache line"/>
<node CREATED="1589296379615" ID="ID_1863468629" MODIFIED="1589296382832" TEXT="... are marked dirty"/>
<node CREATED="1589296396845" ID="ID_213071181" MODIFIED="1589296405529" TEXT="... when another Thread read / write it"/>
<node CREATED="1589296406315" ID="ID_1444421002" MODIFIED="1589296416398" TEXT="... main memory access is required"/>
<node CREATED="1589296416772" ID="ID_1718313457" MODIFIED="1589296421110" TEXT="... to get new copy of cache line"/>
</node>
<node CREATED="1589296433017" ID="ID_372370826" MODIFIED="1589296442570" TEXT="... on 2-core processor it&apos;s not a big deal">
<node CREATED="1589296442760" ID="ID_1484982958" MODIFIED="1589296448639" TEXT="What about 32 core processor"/>
<node CREATED="1589296448988" ID="ID_1186652891" MODIFIED="1589296459852" TEXT="... running 32 Threads in parallel"/>
<node CREATED="1589296460272" ID="ID_976026941" MODIFIED="1589296467066" TEXT="... all accessing and mutating data"/>
<node CREATED="1589296467394" ID="ID_948037274" MODIFIED="1589296470161" TEXT="... on same cache line?"/>
<node CREATED="1589296475510" ID="ID_1203392961" MODIFIED="1589296479047" TEXT="Horrible latency">
<node CREATED="1589296496644" ID="ID_866107491" MODIFIED="1589296503703" TEXT="Even worst with 2 different processor"/>
<node CREATED="1589296504077" ID="ID_1654226818" MODIFIED="1589296514932" TEXT="... because latency processor-to-processor communication"/>
</node>
</node>
<node CREATED="1589296527332" ID="ID_1311002010" MODIFIED="1589296541871" TEXT="... Cache coherency problem">
<node CREATED="1589296543639" ID="ID_1356021376" MODIFIED="1589296552771" TEXT="Introduce false sharing problem"/>
<node CREATED="1589296555599" ID="ID_742447658" MODIFIED="1589296559957">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="false-sharing.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1589296619073" FOLDED="true" ID="ID_1792063787" MODIFIED="1589296740526" TEXT="Scheduling Decision Scenario">
<icon BUILTIN="full-9"/>
<node CREATED="1589296695651" ID="ID_402914685" MODIFIED="1589296699597" TEXT="Scheduling is complex!"/>
</node>
<node CREATED="1589296700682" ID="ID_1803891643" MODIFIED="1589296742206" TEXT="Conclusion">
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-0"/>
</node>
</node>
<node CREATED="1589366122201" FOLDED="true" ID="ID_102800878" LINK="https://www.ardanlabs.com/blog/2018/08/scheduling-in-go-part2.html#practical-example" MODIFIED="1589373435400" POSITION="right" TEXT="Go Scheduler">
<icon BUILTIN="full-2"/>
<node CREATED="1589366819063" FOLDED="true" ID="ID_400564511" MODIFIED="1589366822879" TEXT="Introduction">
<icon BUILTIN="full-0"/>
<node CREATED="1589366835417" ID="ID_1501028311" MODIFIED="1589366842667" TEXT="Go Scheduler is a complex system"/>
<node CREATED="1589366846298" ID="ID_551222035" MODIFIED="1589366854197" TEXT="Important to have high level model"/>
</node>
<node CREATED="1589366859656" FOLDED="true" ID="ID_42761049" MODIFIED="1589366973303" TEXT="Your Program Starts">
<icon BUILTIN="full-1"/>
<node CREATED="1589366997889" ID="ID_1104646279" MODIFIED="1589367838373" TEXT="Given a Logical Processor (P) for every virtual core">
<node CREATED="1589367035749" ID="ID_1509731524" MODIFIED="1589367060925" TEXT="If hardware threads per physical processor">
<node CREATED="1589367169507" ID="ID_728846411" LINK="https://en.wikipedia.org/wiki/Hyper-threading" MODIFIED="1589367175372" TEXT="Hyper-threading"/>
</node>
<node CREATED="1589367190230" ID="ID_641807120" MODIFIED="1589367194884" TEXT="... each presented as virtual core"/>
<node CREATED="1589367223473" ID="ID_647391484" MODIFIED="1593344759434" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589367315394" ID="ID_1112208755" MODIFIED="1593344763992" TEXT="Illustration">
<icon BUILTIN="licq"/>
<node CREATED="1589367258462" ID="ID_1778873706" MODIFIED="1589367264474">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="hardware_example.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589367287862" ID="ID_720374299" MODIFIED="1589367294274" TEXT="4 physical cores"/>
<node CREATED="1589367294927" ID="ID_1883221946" MODIFIED="1589367299480" TEXT="2 hardware threads per core"/>
<node CREATED="1589367304210" ID="ID_1417352363" MODIFIED="1589367312356" TEXT="Go program will see 8 virtual cores">
<node CREATED="1589367332280" ID="ID_1404353137" MODIFIED="1589367343058" TEXT="... to execute OS Threads"/>
<node CREATED="1589367343541" ID="ID_332205457" MODIFIED="1589367351896" TEXT="... in parallel"/>
</node>
<node CREATED="1589367393511" ID="ID_853315298" MODIFIED="1589367395218" TEXT="If you call">
<node CREATED="1589367395402" ID="ID_1705190602" MODIFIED="1589367396640" TEXT=" fmt.Println(runtime.NumCPU())">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1589367397314" ID="ID_1247753570" MODIFIED="1589367401450" TEXT="... return 8"/>
</node>
</node>
<node CREATED="1589367514179" ID="ID_1723239730" MODIFIED="1589367534845" TEXT="Every P has an OS Thread">
<node CREATED="1589367525506" ID="ID_1295286992" MODIFIED="1589367533052" TEXT="&quot;M&quot; for machine"/>
<node CREATED="1589367544728" ID="ID_1593635571" MODIFIED="1589367548364" TEXT="Still managed by OS"/>
</node>
<node CREATED="1589367565382" ID="ID_81625926" MODIFIED="1589367569795" TEXT="When running Go program">
<node CREATED="1589367569961" ID="ID_1796050009" MODIFIED="1589367578407" TEXT="x threads available"/>
<node CREATED="1589367578773" ID="ID_55592495" MODIFIED="1589367583467" TEXT="... all atached to a P"/>
</node>
</node>
<node CREATED="1589367654857" ID="ID_1572089000" MODIFIED="1589367840154" TEXT="Given an initial Goroutine">
<node CREATED="1589367676391" ID="ID_750780782" MODIFIED="1589367680636" TEXT="Path of execution for Go program"/>
<node CREATED="1589367691119" ID="ID_246660340" LINK="https://en.wikipedia.org/wiki/Coroutine" MODIFIED="1589367706471" TEXT="Essentially Coroutine">
<node CREATED="1589367695474" ID="ID_1846692046" MODIFIED="1589367698540" TEXT="... with a G"/>
</node>
<node CREATED="1589367715364" ID="ID_976691662" MODIFIED="1589367720004" TEXT="Application level threads"/>
<node CREATED="1589367720210" ID="ID_660828893" MODIFIED="1589367729113" TEXT="Similar to OS Threads in many ways"/>
<node CREATED="1589367770502" ID="ID_1993987202" MODIFIED="1589367866119" TEXT="Context switched on/off">
<node CREATED="1589367866325" ID="ID_1628366561" MODIFIED="1589367891542" TEXT="for OS Thread">
<node CREATED="1589367870190" ID="ID_47940421" MODIFIED="1589367871735" TEXT="a core"/>
</node>
<node CREATED="1589367872433" ID="ID_1639216075" MODIFIED="1589367895051" TEXT="for Goroutine">
<node CREATED="1589367874431" ID="ID_449580768" MODIFIED="1589367878960" TEXT="an &quot;M&quot;"/>
</node>
</node>
</node>
<node CREATED="1589367823912" ID="ID_931327816" MODIFIED="1589367826778" TEXT="Run Queue">
<node CREATED="1589367842215" ID="ID_667936843" MODIFIED="1589367904602" TEXT="Two different">
<node CREATED="1589367904798" ID="ID_613684562" MODIFIED="1589367911353" TEXT="Global Run Queue (GRQ)"/>
<node CREATED="1589367912021" ID="ID_823509817" MODIFIED="1589367919261" TEXT="Local Run Queue (LRQ)"/>
</node>
<node CREATED="1589367924919" ID="ID_531742534" MODIFIED="1589367932411" TEXT="Each P is given a LRQ">
<node CREATED="1589367932713" ID="ID_273937712" MODIFIED="1589367938880" TEXT="Manage Goroutines"/>
<node CREATED="1589367939372" ID="ID_1493937347" MODIFIED="1589367943869" TEXT="... assigned to execute"/>
<node CREATED="1589367944376" ID="ID_334778677" MODIFIED="1589367946948" TEXT="... in the context of P"/>
<node CREATED="1589367954760" ID="ID_1066080342" MODIFIED="1589367976704" TEXT="Goroutines context-switched on/off M"/>
</node>
<node CREATED="1589367996969" ID="ID_547335799" MODIFIED="1589367998301" TEXT="GRQ">
<node CREATED="1589367998540" ID="ID_1860746951" MODIFIED="1589368004015" TEXT="For Goroutine not assigned to a P yet"/>
</node>
</node>
<node CREATED="1589368020898" ID="ID_1410171513" MODIFIED="1589368076048" TEXT="Illustration">
<icon BUILTIN="licq"/>
<node CREATED="1589368064160" ID="ID_690859513" MODIFIED="1589368072214">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="go_program_start.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1589368123695" FOLDED="true" ID="ID_1823621694" MODIFIED="1589368128961" TEXT="Cooperating Scheduler">
<icon BUILTIN="full-2"/>
<node CREATED="1589368171365" ID="ID_645282523" MODIFIED="1589368175958" TEXT="OS scheduler is preemptive"/>
<node CREATED="1589368156452" ID="ID_685590258" MODIFIED="1589368163356" TEXT="Applications running on top of OS"/>
<node CREATED="1589368180889" ID="ID_123083808" MODIFIED="1589368192333" TEXT="... have no control over kernel scheduling"/>
<node CREATED="1589368193181" FOLDED="true" ID="ID_53624800" MODIFIED="1589368199496" TEXT="... unless they use sync primitives">
<node CREATED="1589368199695" ID="ID_1396693395" LINK="https://en.wikipedia.org/wiki/Linearizability" MODIFIED="1589368211195" TEXT="atomic"/>
<node CREATED="1589368202930" ID="ID_1071529290" LINK="https://en.wikipedia.org/wiki/Lock_(computer_science)" MODIFIED="1589368215511" TEXT="mutex"/>
</node>
<node CREATED="1589368235821" FOLDED="true" ID="ID_1701521836" MODIFIED="1589368239298" TEXT="Go Runtime">
<node CREATED="1589368240839" ID="ID_1759509178" MODIFIED="1589368250212" TEXT="Go Scheduler part of it"/>
<node CREATED="1589368250936" ID="ID_1247039416" MODIFIED="1589368256118" TEXT="Built into your app"/>
<node CREATED="1589368257600" ID="ID_976935425" MODIFIED="1589368266975" TEXT="... means it runs in">
<node CREATED="1589368267122" ID="ID_1722822452" LINK="https://en.wikipedia.org/wiki/User_space" MODIFIED="1589368275733" TEXT="user space"/>
</node>
<node CREATED="1589368278359" ID="ID_735410990" MODIFIED="1589368281959" TEXT="... above the kernel"/>
</node>
<node CREATED="1589368297770" ID="ID_480453818" MODIFIED="1589368304825" TEXT="Go Scheduler not preemptive"/>
<node CREATED="1589368310382" ID="ID_1061634290" LINK="https://en.wikipedia.org/wiki/Cooperative_multitasking" MODIFIED="1589368323216" TEXT="... but cooperating">
<node CREATED="1589368329048" ID="ID_853754044" MODIFIED="1589368342195" TEXT="Needs well-defined user space events"/>
<node CREATED="1589368342950" ID="ID_734630772" MODIFIED="1589368350411" TEXT="... happening at safe points in code"/>
<node CREATED="1589368350799" ID="ID_1806917469" MODIFIED="1589368355114" TEXT="... to make scheduling decisions"/>
</node>
<node CREATED="1589368360029" ID="ID_905878332" MODIFIED="1589368366285" TEXT="... but looks / feel preemptive">
<node CREATED="1589368374538" ID="ID_1846936524" MODIFIED="1589368381218" TEXT="Can&apos;t predict what Go scheduler will do"/>
<node CREATED="1589368395323" ID="ID_1076259806" MODIFIED="1589368405009" TEXT="Go runtime makes decisions"/>
<node CREATED="1589368422487" ID="ID_1438955276" MODIFIED="1589368425507" TEXT="... not the developer"/>
</node>
</node>
<node CREATED="1589368427210" FOLDED="true" ID="ID_322600833" MODIFIED="1589368431782" TEXT="Goroutine States">
<icon BUILTIN="full-3"/>
<node CREATED="1589368444765" ID="ID_1456922773" MODIFIED="1589368464368" TEXT="Have 3 high level states">
<node CREATED="1589368464582" ID="ID_432088571" MODIFIED="1589368467254" TEXT="Like Threads!"/>
</node>
<node CREATED="1589368468494" ID="ID_1090673959" MODIFIED="1589368493217" TEXT="... can only have one of them">
<node CREATED="1589368493399" ID="ID_483517691" LINK="#ID_14810574" MODIFIED="1589368621765" TEXT="Waiting">
<node CREATED="1589368495434" ID="ID_1362737498" MODIFIED="1589368501802" TEXT="Waiting for something"/>
<node CREATED="1589368502170" ID="ID_825048732" MODIFIED="1589368504913" TEXT="... to continue"/>
<node CREATED="1589368676746" ID="ID_1981326223" MODIFIED="1589368681462" TEXT="Same as OS Threads"/>
</node>
<node CREATED="1589368505619" ID="ID_270463383" LINK="#ID_1944737675" MODIFIED="1589368629511" TEXT="Runnable">
<node CREATED="1589368548043" ID="ID_1089065314" MODIFIED="1589368555019" TEXT="Wants time on an &quot;M&quot;"/>
<node CREATED="1589368556303" ID="ID_468577510" MODIFIED="1589368563020" TEXT="... so it can execute instructions"/>
<node CREATED="1589368573877" ID="ID_1851379311" MODIFIED="1589368580967" TEXT="Same as OS Thread"/>
</node>
<node CREATED="1589368508027" ID="ID_661335100" LINK="#ID_1754682917" MODIFIED="1589368657060" TEXT="Executing">
<node CREATED="1589368639426" ID="ID_431858569" MODIFIED="1589368644912" TEXT="Goroutine placed on &quot;M&quot;"/>
<node CREATED="1589368645595" ID="ID_995856688" MODIFIED="1589368650176" TEXT="Execute instructions"/>
<node CREATED="1589368573877" ID="ID_335666770" MODIFIED="1589368580967" TEXT="Same as OS Thread"/>
</node>
</node>
</node>
<node CREATED="1589368691430" FOLDED="true" ID="ID_356311723" MODIFIED="1589368693379" TEXT="Context Switching">
<icon BUILTIN="full-4"/>
<node CREATED="1589368711640" ID="ID_543585586" MODIFIED="1589368718731" TEXT="Go Scheduler requires">
<node CREATED="1589368718944" ID="ID_1149273889" MODIFIED="1589368725698" TEXT="user-space events"/>
<node CREATED="1589368726238" ID="ID_658051915" MODIFIED="1589368731044" TEXT="... that occurs at safe points in code"/>
<node CREATED="1589368731944" ID="ID_1387335915" MODIFIED="1589368737122" TEXT="... to context-switch from"/>
</node>
<node CREATED="1589368740742" ID="ID_1529477111" MODIFIED="1589368748549" TEXT="... manifest themselves in function calls">
<node CREATED="1589368750943" ID="ID_103550890" MODIFIED="1589368762465" TEXT="Functions critical for Go scheduler health"/>
</node>
<node CREATED="1589368816833" ID="ID_222974710" MODIFIED="1589368855016" TEXT="Events where scheduler can make decisions">
<node CREATED="1589368856683" ID="ID_1263862846" MODIFIED="1589368862081" TEXT="Doesn&apos;t mean it will happen all the time!"/>
<node CREATED="1589368863546" ID="ID_378844084" MODIFIED="1589368892640" TEXT="Use of keyword &quot;go&quot;">
<icon BUILTIN="full-1"/>
<node CREATED="1589368908359" ID="ID_73321655" MODIFIED="1589368912006" TEXT="How you create goroutines"/>
<node CREATED="1589368918802" ID="ID_1985072093" MODIFIED="1589368921122" TEXT="At creation">
<node CREATED="1589368921279" ID="ID_1069997864" MODIFIED="1589368925247" TEXT="Opportunity for scheduler"/>
<node CREATED="1589368925635" ID="ID_1370771442" MODIFIED="1589368934635" TEXT="... to make a scheduling decision"/>
</node>
</node>
<node CREATED="1589368877504" ID="ID_1440198043" MODIFIED="1589368893712" TEXT="Garbage collection">
<icon BUILTIN="full-2"/>
<node CREATED="1589368938520" ID="ID_563973993" MODIFIED="1589368944154" TEXT="Run using own set of goroutines"/>
<node CREATED="1589368948486" ID="ID_1025977572" MODIFIED="1589368958242" TEXT="... so need time on an &quot;M&quot; to run"/>
<node CREATED="1589368962508" ID="ID_718335626" MODIFIED="1589368967587" TEXT="Creates lot of scheduling chaos">
<node CREATED="1589368974678" ID="ID_1692790625" MODIFIED="1589368978520" TEXT="but scheduler is smart!"/>
<node CREATED="1589368992547" ID="ID_1210600871" MODIFIED="1589369029622" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589368999498" ID="ID_1909026734" MODIFIED="1589369002302" TEXT="During GC"/>
<node CREATED="1589369003019" ID="ID_313363296" MODIFIED="1589369015407" TEXT="... context-switching Goroutine wants to touch heap"/>
<node CREATED="1589369016377" ID="ID_1946038940" MODIFIED="1589369025488" TEXT="... with those who don&apos;t touch the heap"/>
</node>
</node>
</node>
<node CREATED="1589368881676" ID="ID_534342724" MODIFIED="1589368894750" TEXT="System calls">
<icon BUILTIN="full-3"/>
<node CREATED="1589369038599" ID="ID_1900962335" MODIFIED="1589369052006" TEXT="Goroutine makes system call"/>
<node CREATED="1589369046126" ID="ID_1046591043" MODIFIED="1589369084560" TEXT="...so block the &quot;M&quot;"/>
<node CREATED="1589369097617" ID="ID_660762860" MODIFIED="1589369120114" TEXT="Sometimes scheduler able to context-switch Goroutine off &quot;M&quot;"/>
<node CREATED="1589369120936" ID="ID_402321809" MODIFIED="1589369134278" TEXT="... to keep executing Goroutines queuing on P"/>
</node>
<node CREATED="1589368884482" ID="ID_1965009593" MODIFIED="1589368895555" TEXT="Synchronization / Orchestration">
<icon BUILTIN="full-4"/>
<node CREATED="1589369222056" ID="ID_1705817348" MODIFIED="1589369226703" TEXT="Operation">
<node CREATED="1589369226917" ID="ID_1272970514" MODIFIED="1589369229035" TEXT="Atomic"/>
<node CREATED="1589369229394" ID="ID_186218054" MODIFIED="1589369230404" TEXT="Channel"/>
<node CREATED="1589369230755" ID="ID_1056713343" MODIFIED="1589369231889" TEXT="Mutex"/>
</node>
<node CREATED="1589369235064" ID="ID_1522892147" MODIFIED="1589369244915" TEXT="... cause Goroutine to block"/>
<node CREATED="1589369245266" ID="ID_130221148" MODIFIED="1589369257742" TEXT="Scheduler can context-switch new Goroutine to run"/>
<node CREATED="1589369262810" ID="ID_715322347" MODIFIED="1589369269501" TEXT="When Goroutine can run again">
<node CREATED="1589369269684" ID="ID_344673784" MODIFIED="1589369277633" TEXT="Can be re-queued"/>
<node CREATED="1589369278404" ID="ID_1469442971" MODIFIED="1589369283893" TEXT="... and eventually"/>
<node CREATED="1589369284385" ID="ID_1631101975" MODIFIED="1589369289381" TEXT="... context-switched back on M"/>
</node>
</node>
</node>
</node>
<node CREATED="1589369292548" FOLDED="true" ID="ID_1595680025" MODIFIED="1589369299209" TEXT="Asynchronous System Calls">
<icon BUILTIN="full-5"/>
<node CREATED="1589369322359" ID="ID_1806906258" MODIFIED="1589369333870" TEXT="When OS has hability to run system call asynchronously"/>
<node CREATED="1589369336744" ID="ID_656424990" LINK="https://golang.org/src/runtime/netpoll.go" MODIFIED="1589369544058" TEXT="... network poller can be used to make system call efficient">
<node CREATED="1589369544482" ID="ID_1274139802" MODIFIED="1589369567477" TEXT="MacOS">
<node CREATED="1589369567665" ID="ID_71569625" MODIFIED="1589369568875" TEXT="kqueue"/>
</node>
<node CREATED="1589369550901" ID="ID_1613992207" MODIFIED="1589369573440" TEXT="Linux">
<node CREATED="1589369552900" ID="ID_44948085" MODIFIED="1589369576861" TEXT="epoll"/>
</node>
<node CREATED="1589369578142" ID="ID_1005493670" MODIFIED="1589369579723" TEXT="Windows">
<node CREATED="1589369579905" ID="ID_1823483896" MODIFIED="1589369581158" TEXT="iocp"/>
</node>
<node CREATED="1589369597366" ID="ID_1566136886" MODIFIED="1589369604017" TEXT="Network poller get its name">
<node CREATED="1589369604230" ID="ID_1548021481" MODIFIED="1589369611581" TEXT="... because many networking based system calls"/>
<node CREATED="1589369612440" ID="ID_393756233" MODIFIED="1589369626292" TEXT="... can be processed asynchronously by OS"/>
<node CREATED="1589369729732" ID="ID_1349034231" MODIFIED="1589369739130" TEXT="... primary use of network poller"/>
</node>
</node>
<node CREATED="1589369594622" ID="ID_889764244" MODIFIED="1589369757395" TEXT="When Goroutine do system calls">
<node CREATED="1589369757586" ID="ID_1000282893" MODIFIED="1589369761644" TEXT="network poller can prevent it"/>
<node CREATED="1589369762034" ID="ID_553991837" MODIFIED="1589369773439" TEXT="... to block the M"/>
<node CREATED="1589369786206" ID="ID_96904125" MODIFIED="1589369808747" TEXT="Keep M available to execute other Goroutines on P"/>
<node CREATED="1589369810765" ID="ID_1044454964" MODIFIED="1589369816142" TEXT="... without need to create new M">
<node CREATED="1589369816339" ID="ID_1067943223" MODIFIED="1589369821827" TEXT="Reduce scheduling load on OS"/>
</node>
</node>
<node CREATED="1589369835345" ID="ID_1831858155" MODIFIED="1589369997178" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589369955233" FOLDED="true" ID="ID_417363453" MODIFIED="1589369983785" TEXT="">
<icon BUILTIN="full-1"/>
<icon BUILTIN="licq"/>
<node CREATED="1589369963264" ID="ID_138570930" MODIFIED="1589369965626">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="network_poll_example_1.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589369967741" FOLDED="true" ID="ID_701146552" MODIFIED="1589369986896" TEXT="">
<icon BUILTIN="full-2"/>
<icon BUILTIN="licq"/>
<node CREATED="1589369970675" ID="ID_702660224" MODIFIED="1589369973707">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="network_poll_example_2.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589369975105" FOLDED="true" ID="ID_1173382354" MODIFIED="1589369988742" TEXT="">
<icon BUILTIN="full-3"/>
<icon BUILTIN="licq"/>
<node CREATED="1589369977906" ID="ID_679952234" MODIFIED="1589369980373">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="network_poll_example_3.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1589371520296" FOLDED="true" ID="ID_429767630" MODIFIED="1589371522442" TEXT="Synchronous System Calls">
<icon BUILTIN="full-6"/>
<node CREATED="1589371532383" ID="ID_2569503" MODIFIED="1589371550458" TEXT="When Goroutine doing system call which can&apos;t be synchronize"/>
<node CREATED="1589371541561" ID="ID_1562179799" MODIFIED="1589371546323" TEXT="... it blocks the M"/>
<node CREATED="1589371566007" ID="ID_1279153623" MODIFIED="1589371848376" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589371567323" ID="ID_1914042048" MODIFIED="1589371569446" TEXT="File system call">
<node CREATED="1589371592919" ID="ID_1340005150" MODIFIED="1589371604699" TEXT="Even if Windows can technically do it"/>
</node>
<node CREATED="1589371621821" FOLDED="true" ID="ID_1838872875" MODIFIED="1589371855720" TEXT="">
<icon BUILTIN="full-1"/>
<icon BUILTIN="licq"/>
<node CREATED="1589371827947" ID="ID_895014972" MODIFIED="1589371834832">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="file_system_call_example_1.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589371819033" FOLDED="true" ID="ID_1521769448" MODIFIED="1589371857471" TEXT="">
<icon BUILTIN="full-2"/>
<icon BUILTIN="licq"/>
<node CREATED="1589371837160" ID="ID_513992443" MODIFIED="1589371839797">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="file_system_call_example_2.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589371819942" FOLDED="true" ID="ID_46291076" MODIFIED="1589371858742" TEXT="">
<icon BUILTIN="full-3"/>
<icon BUILTIN="licq"/>
<node CREATED="1589371841647" ID="ID_240989679" MODIFIED="1589371843952">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="file_system_call_example_3.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1589371867847" FOLDED="true" ID="ID_1809651912" MODIFIED="1589371872341" TEXT="Work Stealing">
<icon BUILTIN="full-7"/>
<node CREATED="1589371878807" ID="ID_1580870830" MODIFIED="1589371883157" TEXT="Scheduler is work-stealing"/>
<node CREATED="1589371888383" ID="ID_445641958" MODIFIED="1589371895059" TEXT="Help to keep efficiency in some cases">
<node CREATED="1589371909310" ID="ID_1261375928" MODIFIED="1589371922824" TEXT="Don&apos;t want an M moving to waiting">
<node CREATED="1589371922998" ID="ID_491611850" MODIFIED="1589371929129" TEXT="OS will context-switch the M"/>
<node CREATED="1589371929542" ID="ID_204990018" MODIFIED="1589371931747" TEXT="... off the core"/>
<node CREATED="1589371937415" ID="ID_654848269" MODIFIED="1589371941520" TEXT="P can&apos;t do anything"/>
<node CREATED="1589371941829" ID="ID_482351105" MODIFIED="1589371946870" TEXT="... till M comes back to the core"/>
</node>
<node CREATED="1589371969585" ID="ID_1908102882" MODIFIED="1589371980930" TEXT="Balance Goroutines accross all the P&apos;s"/>
<node CREATED="1589371981390" ID="ID_119182616" MODIFIED="1589371986250" TEXT="... so the work is better">
<node CREATED="1589371986504" ID="ID_743722727" MODIFIED="1589371989230" TEXT="distributed"/>
<node CREATED="1589371989563" ID="ID_1207868999" MODIFIED="1589371993559" TEXT="done efficiently"/>
</node>
</node>
<node CREATED="1589371998344" ID="ID_1836042787" MODIFIED="1589372779540" TEXT="Example">
<icon BUILTIN="licq"/>
<node CREATED="1589372000178" FOLDED="true" ID="ID_1494777866" MODIFIED="1589372189405" TEXT="">
<icon BUILTIN="full-1"/>
<icon BUILTIN="licq"/>
<node CREATED="1589372161670" ID="ID_1968126788" MODIFIED="1589372174511">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="work_stealing_example_1.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589372176757" FOLDED="true" ID="ID_197368754" MODIFIED="1589372192326" TEXT="">
<icon BUILTIN="full-2"/>
<icon BUILTIN="licq"/>
<node CREATED="1589372181805" ID="ID_306817431" MODIFIED="1589372184684">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="work_stealing_example_2.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589372193580" ID="ID_1253099549" MODIFIED="1589372570653" TEXT="P1 is idle, time to steal some work!">
<icon BUILTIN="full-3"/>
<node CREATED="1589372217254" ID="ID_2262423" MODIFIED="1589372224028" TEXT="Rules are as follow">
<node CREATED="1589372228331" ID="ID_1301080084" MODIFIED="1589372295039" TEXT="Only 1/61 of the time, check the global runnable queue for a G"/>
<node CREATED="1589372236036" ID="ID_691559619" MODIFIED="1589372236557" TEXT="if not found, check the local queue."/>
<node CREATED="1589372240962" ID="ID_823272333" MODIFIED="1589372269619" TEXT=" if not found">
<node CREATED="1589372244144" ID="ID_1016581901" MODIFIED="1589372267029" TEXT=" try to steal from other Ps"/>
<node CREATED="1589372249211" ID="ID_883045457" MODIFIED="1589372304162" TEXT="if not, check the global runnable queue"/>
<node CREATED="1589372258151" ID="ID_1442785269" MODIFIED="1589372261951" TEXT="if not found, poll network"/>
</node>
</node>
</node>
<node CREATED="1589372309556" ID="ID_371042694" MODIFIED="1589372575326" TEXT="Based on rules">
<icon BUILTIN="full-4"/>
<node CREATED="1589372336946" ID="ID_790889252" MODIFIED="1589372356502" TEXT="P1 needs to check P2 for goroutines (and its LRQ)"/>
<node CREATED="1589372345059" ID="ID_855255160" MODIFIED="1589372465966" TEXT="... and take half of what it finds">
<icon BUILTIN="licq"/>
<node CREATED="1589372366878" ID="ID_560637067" MODIFIED="1589372463147">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="work_stealing_example_3.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1589372578394" ID="ID_1160624125" MODIFIED="1589372586594" TEXT="">
<icon BUILTIN="full-5"/>
<node CREATED="1589372591336" ID="ID_162960021" MODIFIED="1589372597714">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="work_stealing_example_4.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589372587207" ID="ID_1177544173" MODIFIED="1589372589207" TEXT="">
<icon BUILTIN="full-6"/>
<node CREATED="1589372612082" ID="ID_1637276334" MODIFIED="1589372615564">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="work_stealing_example_5.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1589372783061" FOLDED="true" ID="ID_1494724639" LINK="https://www.ardanlabs.com/blog/2018/08/scheduling-in-go-part2.html#practical-example" MODIFIED="1589372823949" TEXT="Practical Example">
<icon BUILTIN="full-8"/>
<node COLOR="#338800" CREATED="1589373120497" ID="ID_1819602922" MODIFIED="1589373133310" TEXT="Skipped some example. I encourage you to read them">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="password"/>
</node>
<node CREATED="1589373042072" ID="ID_1705098626" MODIFIED="1589373069350" TEXT="Advantage of Goroutines"/>
<node CREATED="1589373072399" ID="ID_866784943" MODIFIED="1589373073840" TEXT="In C">
<node CREATED="1589373074025" ID="ID_485689403" MODIFIED="1589373118034" TEXT="Each thread sending messages to each other"/>
<node CREATED="1589373082384" ID="ID_1843467946" MODIFIED="1589373086415" TEXT="... are managed by the OS"/>
<node CREATED="1589373086767" ID="ID_1494834690" MODIFIED="1589373093604" TEXT="... and context-switched">
<node CREATED="1589373175375" ID="ID_1344048051" MODIFIED="1589373179803" TEXT="... between running / waiting"/>
<node CREATED="1589373094050" ID="ID_1573726782" MODIFIED="1589373097037" TEXT="Take time!"/>
<node CREATED="1589373097378" ID="ID_1864215505" MODIFIED="1589373105054" TEXT="Latency problem"/>
</node>
</node>
<node CREATED="1589373105829" ID="ID_513451971" MODIFIED="1589373107313" TEXT="In Go">
<node CREATED="1589373107478" ID="ID_1616342809" MODIFIED="1589373115418" TEXT="Each goroutine sending messages to each other"/>
<node CREATED="1589373136662" ID="ID_1993102823" MODIFIED="1593952654779" TEXT="... are managed by go scheduler"/>
<node CREATED="1589373143180" ID="ID_1477968564" MODIFIED="1589373147927" TEXT="... on OS level, same Thread used!">
<node CREATED="1589373148117" ID="ID_1639228476" MODIFIED="1589373152184" TEXT="No context switching"/>
<node CREATED="1589373152506" ID="ID_1752035662" MODIFIED="1589373156378" TEXT="No latency problem"/>
</node>
<node CREATED="1589373204556" ID="ID_849045613" MODIFIED="1589373228714" TEXT="Turned IO/Blocking work to CPU-bound work at OS level"/>
<node CREATED="1589373234933" ID="ID_420177043" MODIFIED="1589373240529" TEXT="Context switching at application level">
<node CREATED="1589373245987" ID="ID_1526850623" MODIFIED="1589373248697" TEXT="Cost less time"/>
</node>
<node CREATED="1589373268631" ID="ID_905099908" MODIFIED="1589373272478" TEXT="Scheduler helps on">
<node CREATED="1589373272633" ID="ID_209408197" MODIFIED="1589373275893" TEXT="cache line efficiencies"/>
<node CREATED="1589373276304" ID="ID_1212119576" MODIFIED="1589373277344" TEXT="NUMA"/>
</node>
<node CREATED="1589373280716" ID="ID_1876632294" MODIFIED="1589373285306" TEXT="That&apos;s why we don&apos;t need more threads"/>
<node CREATED="1589373290471" ID="ID_1739199861" MODIFIED="1589373293978" TEXT="... than we have virtual cores"/>
</node>
</node>
<node CREATED="1589373337125" FOLDED="true" ID="ID_1114856630" MODIFIED="1589373402307" TEXT="Conclusion">
<icon BUILTIN="full-9"/>
<node CREATED="1589373340560" ID="ID_281125742" MODIFIED="1589373345600" TEXT="Less is always more, even with goroutine"/>
<node CREATED="1589373345988" ID="ID_491518394" MODIFIED="1589373376946" TEXT="... but you can use many of them with less performance loss"/>
<node CREATED="1589373377398" ID="ID_536880559" MODIFIED="1589373392422" TEXT="... than if every Threads was managed by OS"/>
<node CREATED="1589373392755" ID="ID_1443002097" MODIFIED="1589373395953" TEXT="... and not Go scheduler"/>
</node>
</node>
<node CREATED="1589373418675" ID="ID_959374447" LINK="v" MODIFIED="1589373429440" POSITION="right" TEXT="Concurrency">
<icon BUILTIN="full-3"/>
<node CREATED="1589549410817" FOLDED="true" ID="ID_1081882050" MODIFIED="1589549642122" TEXT="Introduction">
<icon BUILTIN="full-0"/>
<node CREATED="1589549413224" ID="ID_1615883714" MODIFIED="1589549420673" TEXT="When solving new problem">
<node CREATED="1589549420878" ID="ID_780970962" MODIFIED="1589549439323" TEXT="Look for sequential solution">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1589549436468" ID="ID_13160493" MODIFIED="1589549440556" TEXT="Make it work">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1589549446367" ID="ID_1133829252" MODIFIED="1589549482029" TEXT="Reviews">
<icon BUILTIN="full-3"/>
<node CREATED="1589549453963" ID="ID_1668838030" MODIFIED="1589549476138" TEXT="Readability"/>
<node CREATED="1589549458519" ID="ID_241283801" MODIFIED="1589549460132" TEXT="Technical"/>
</node>
<node CREATED="1589549496009" ID="ID_109237944" MODIFIED="1589549508990" TEXT="Is concurrency">
<icon BUILTIN="full-4"/>
<node CREATED="1589549501832" ID="ID_1270255676" MODIFIED="1589549504130" TEXT="reasonable?"/>
<node CREATED="1589549504536" ID="ID_213960677" MODIFIED="1589549506936" TEXT="practical?"/>
</node>
</node>
<node CREATED="1589549531030" ID="ID_1711747957" MODIFIED="1589549542161" TEXT="In article bring together">
<node CREATED="1589549542373" ID="ID_1884887923" MODIFIED="1589549545359" TEXT="Go scheduler"/>
<node CREATED="1589549545715" ID="ID_1901122070" MODIFIED="1589549553362" TEXT="OS scheduler"/>
</node>
<node CREATED="1589549555481" ID="ID_1901822684" MODIFIED="1589549564062" TEXT="... to provide deeper insight of concurrency"/>
</node>
<node CREATED="1589549624258" ID="ID_359138113" MODIFIED="1589549643342" TEXT="What is concurrency">
<icon BUILTIN="full-1"/>
<node CREATED="1589549630649" ID="ID_942555385" MODIFIED="1589549637725" TEXT="Means &quot;out of order&quot; execution"/>
<node CREATED="1589549646754" FOLDED="true" ID="ID_1081298172" MODIFIED="1589549671730" TEXT="Take set of instructions">
<node CREATED="1589549671928" ID="ID_46633670" MODIFIED="1589549676640" TEXT="Normally run sequentially"/>
<node CREATED="1589549677932" ID="ID_943989918" MODIFIED="1589549686955" TEXT="Finding a way to execute them out of order"/>
<node CREATED="1589549806698" ID="ID_456611779" MODIFIED="1589549813859" TEXT="... to produce same result"/>
<node CREATED="1589549835396" ID="ID_796683056" MODIFIED="1589549868624" TEXT="Concurrency needs to add value">
<node CREATED="1589549868836" ID="ID_974863245" MODIFIED="1589549939028" TEXT="Enough of performance gain"/>
<node CREATED="1589549939380" ID="ID_398249593" MODIFIED="1589549943600" TEXT="... for complexity cost"/>
</node>
</node>
<node CREATED="1589549952110" FOLDED="true" ID="ID_1443448751" MODIFIED="1589549960812" TEXT="Concurrency different than parallelism">
<node CREATED="1589549968009" ID="ID_80178164" MODIFIED="1589549971456" TEXT="Parallelism">
<node CREATED="1589549971606" ID="ID_438941961" MODIFIED="1589549984553" TEXT="Executing 2+ execution at same itme"/>
<node CREATED="1589549990649" ID="ID_1095109269" MODIFIED="1589549993349" TEXT="Only possible when">
<node CREATED="1589549993517" ID="ID_1654153858" MODIFIED="1589550002234" TEXT="2 OS and hardward threads"/>
<node CREATED="1589550002969" ID="ID_1967086475" MODIFIED="1589550007780" TEXT="2 different Go routine"/>
<node CREATED="1589550014435" ID="ID_880109999" MODIFIED="1589550022170" TEXT="... each running independently"/>
<node CREATED="1589550023189" ID="ID_87944494" MODIFIED="1589550026254" TEXT="... on each OS thread"/>
</node>
<node CREATED="1589550086513" ID="ID_360703339" MODIFIED="1589550106543" TEXT="Illustration">
<icon BUILTIN="licq"/>
<node CREATED="1589550090009" ID="ID_1536899531" MODIFIED="1589550101256">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="concurrency_vs_parallelism.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1589550161230" ID="ID_1506183243" MODIFIED="1589550211227" TEXT="G1 and G2 run in parallel"/>
<node CREATED="1589550211822" ID="ID_1113136678" MODIFIED="1589550222787" TEXT="G2, G3 and G5 run concurrently"/>
</node>
</node>
<node CREATED="1589550249827" ID="ID_1491945551" MODIFIED="1589550388183" TEXT="Leveraging concurrency ">
<node CREATED="1589550388469" ID="ID_1456148689" MODIFIED="1589550389126" TEXT="instead of parallelism">
<node CREATED="1589550263154" ID="ID_1443410235" MODIFIED="1589550378564" TEXT="Can reduce throughput"/>
</node>
<node CREATED="1589550394639" ID="ID_111136370" MODIFIED="1589550397194" TEXT="with parallelism">
<node CREATED="1589550397384" ID="ID_687037936" MODIFIED="1589550413959" TEXT="Doesn&apos;t necessarily increase  significantly performance"/>
</node>
</node>
</node>
</node>
<node CREATED="1589550415982" FOLDED="true" ID="ID_1685543987" MODIFIED="1589550980786" TEXT="Workloads">
<icon BUILTIN="full-2"/>
<node CREATED="1589550437649" ID="ID_1443973633" MODIFIED="1589550881303" TEXT="Ask: what&apos;s problem&apos;s type of workload?">
<node CREATED="1589550462353" ID="ID_991393328" LINK="#ID_406491504" MODIFIED="1589550767428" TEXT="CPU Bound">
<icon BUILTIN="full-1"/>
<node CREATED="1589550465360" ID="ID_214239226" MODIFIED="1589550470960" TEXT="No gain having Goroutines"/>
<node CREATED="1589550471301" ID="ID_166668858" MODIFIED="1589550477153" TEXT="CPU is working all the time anyway"/>
<node CREATED="1589550531863" ID="ID_588469207" MODIFIED="1589550545767" TEXT="Needs parallelism">
<node CREATED="1589550551343" ID="ID_513424439" MODIFIED="1589550569024" TEXT="Concurrency don&apos;t switch"/>
<node CREATED="1589550560092" ID="ID_1733747362" MODIFIED="1589550566161" TEXT="... Goroutine in and out"/>
<node CREATED="1589550569836" ID="ID_576409356" MODIFIED="1589550572199" TEXT="... waiting state"/>
<node CREATED="1589550572579" ID="ID_95970734" MODIFIED="1589550578846" TEXT="... since they are always busy"/>
<node CREATED="1589550593102" ID="ID_860502850" MODIFIED="1589550610314" TEXT="If more Goroutines than OS/hardware Threads">
<node CREATED="1589550610776" ID="ID_1445698495" MODIFIED="1589550614977" TEXT="Give latency"/>
<node CREATED="1589550615325" ID="ID_1041314401" MODIFIED="1589550620069" TEXT="Move in and out Goroutine"/>
<node CREATED="1589550634836" ID="ID_217988916" MODIFIED="1589550636925" TEXT="... takes time"/>
<node CREATED="1589550649043" ID="ID_675577049" MODIFIED="1589550655751" TEXT="... Stop of the World event"/>
</node>
</node>
</node>
<node CREATED="1589550491813" ID="ID_1495939496" LINK="#ID_1705009860" MODIFIED="1589550769199" TEXT="IO-Bound">
<icon BUILTIN="full-2"/>
<node CREATED="1589550499330" ID="ID_1871485850" MODIFIED="1589550507583" TEXT="Cause Goroutine to enter waiting state"/>
<node CREATED="1589550669958" ID="ID_617629774" MODIFIED="1589550674083" TEXT="Don&apos;t need parallelism">
<node CREATED="1589550783897" ID="ID_1794274656" MODIFIED="1589550795817" TEXT="Goroutine switch waiting state"/>
<node CREATED="1589550796223" ID="ID_175022938" MODIFIED="1589550801790" TEXT="... naturally as part of their workload"/>
<node CREATED="1589550815245" ID="ID_1905233425" MODIFIED="1589550822014" TEXT="Can have more Goroutine than OS threads">
<node CREATED="1589550823959" ID="ID_1543665715" MODIFIED="1589550832062" TEXT="Multiple Goroutine can switch..."/>
<node CREATED="1589550832458" ID="ID_854163341" MODIFIED="1589550835969" TEXT="... on one OS thread"/>
<node CREATED="1589550836381" ID="ID_840010857" MODIFIED="1589550842696" TEXT="... without Stop of the World"/>
</node>
</node>
</node>
</node>
<node CREATED="1589550899260" ID="ID_633627075" MODIFIED="1589550930994" TEXT="How many Goroutine per hardware thread provides best throughput?">
<node CREATED="1589550935434" ID="ID_777257206" MODIFIED="1589550938714" TEXT="Too few">
<node CREATED="1589550939056" ID="ID_431060662" MODIFIED="1589550940696" TEXT="More idle time"/>
</node>
<node CREATED="1589550941257" ID="ID_1455369850" MODIFIED="1589550942587" TEXT="Too many">
<node CREATED="1589550942793" ID="ID_1177882212" MODIFIED="1589550948944" TEXT="More context switch latency time"/>
</node>
</node>
</node>
<node CREATED="1589550974457" ID="ID_751217405" MODIFIED="1589550978948" TEXT="Adding Numbers">
<icon BUILTIN="full-3"/>
<node CREATED="1589551782430" ID="ID_573251093" LINK="https://play.golang.org/p/r9LdqUsEzEz" MODIFIED="1589552519717" TEXT="Simple code">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>36 func add(numbers []int) int {
37     var v int
38     for _, n := range numbers {
39         v += n
40     }
41     return v
42 }</code></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1589551789075" ID="ID_807189891" MODIFIED="1589551800267" TEXT="Is it suitable for out of order execution?">
<node CREATED="1589551800441" ID="ID_939430517" MODIFIED="1589551801328" TEXT="Yep"/>
<node CREATED="1589551801666" ID="ID_1156558327" MODIFIED="1589551822942" TEXT="List could be broken in smaller list"/>
<node CREATED="1589551823402" ID="ID_1853382876" MODIFIED="1589551829296" TEXT="... and then processed concurrently"/>
<node CREATED="1589551835715" ID="ID_519379181" MODIFIED="1589551839884" TEXT="When all list are summed"/>
<node CREATED="1589551840408" ID="ID_313035547" MODIFIED="1589551847667" TEXT="... everything summed back together"/>
</node>
<node CREATED="1589551855651" ID="ID_764055748" MODIFIED="1589551878462" TEXT="How many smaller lists to get best throughput?">
<node CREATED="1589551889498" ID="ID_948512890" MODIFIED="1589551895597" TEXT="What kind of workload?"/>
<node CREATED="1589551896002" ID="ID_1041593882" MODIFIED="1589551909256" TEXT="add function perform CPU-Bound">
<node CREATED="1589551915912" ID="ID_1744066275" MODIFIED="1589551917490" TEXT="Pure math"/>
</node>
<node CREATED="1589551927628" ID="ID_1850476298" MODIFIED="1589551935002" TEXT="One Goroutine by OS/hardware Thread"/>
</node>
<node CREATED="1589551977124" ID="ID_172647897" LINK="https://play.golang.org/p/r9LdqUsEzEz" MODIFIED="1589552515947" TEXT="Simple Code - concurrent version">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>44 func addConcurrent(goroutines int, numbers []int) int {
45     var v int64
46     totalNumbers := len(numbers)
47     lastGoroutine := goroutines - 1
48     stride := totalNumbers / goroutines
49
50     var wg sync.WaitGroup
51     wg.Add(goroutines)
52
53     for g := 0; g &lt; goroutines; g++ {
54         go func(g int) {
55             start := g * stride
56             end := start + stride
57             if g == lastGoroutine {
58                 end = totalNumbers
59             }
60
61             var lv int
62             for _, n := range numbers[start:end] {
63                 lv += n
64             }
65
66             atomic.AddInt64(&amp;v, int64(lv))
67             wg.Done()
68         }(g)
69     }
70
71     wg.Wait()
72
73     return int(v)
74 }</code></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1589552120505" ID="ID_1429833509" MODIFIED="1589552125321" TEXT="Is concurrent version worth it?">
<node CREATED="1589552125495" ID="ID_803499381" MODIFIED="1589552134672" TEXT="Need to create a benchmark">
<node CREATED="1589552191580" ID="ID_1037480840" MODIFIED="1589552197548" TEXT="Complicated on local machine"/>
<node CREATED="1589552197944" ID="ID_303641302" MODIFIED="1589552205152" TEXT="Make sure machine is idle as possible"/>
<node CREATED="1589552205573" ID="ID_1906930013" MODIFIED="1589552209968" TEXT="Run benchmarks few times"/>
<node CREATED="1589552212018" ID="ID_1012992892" MODIFIED="1589552319898" TEXT="... to make sure consistency in results"/>
</node>
<node CREATED="1589552143441" ID="ID_1174065162" MODIFIED="1589552164067" TEXT="Simple benchmark">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>func BenchmarkSequential(b *testing.B) {
    for i := 0; i &lt; b.N; i++ {
        add(numbers)
    }
}

func BenchmarkConcurrent(b *testing.B) {
    for i := 0; i &lt; b.N; i++ {
        addConcurrent(runtime.NumCPU(), numbers)
    }
}</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589552230523" ID="ID_877134606" MODIFIED="1589552283775" TEXT="Result for 1 OS thread">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>10 Million Numbers using 8 goroutines with 1 core
2.9 GHz Intel 4 Core i7
Concurrency WITHOUT Parallelism
-----------------------------------------------------------------------------
$ GOGC=off go test -cpu 1 -run none -bench . -benchtime 3s
goos: darwin
goarch: amd64
pkg: github.com/ardanlabs/gotraining/topics/go/testing/benchmarks/cpu-bound
BenchmarkSequential      &#x9;    1000&#x9;   5720764 ns/op : ~10% Faster
BenchmarkConcurrent      &#x9;    1000&#x9;   6387344 ns/op
BenchmarkSequentialAgain &#x9;    1000&#x9;   5614666 ns/op : ~13% Faster
BenchmarkConcurrentAgain &#x9;    1000&#x9;   6482612 ns/op</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589552283956" ID="ID_278774936" MODIFIED="1589552287553" TEXT="Concurrency version slower"/>
<node CREATED="1589552287932" ID="ID_821853945" MODIFIED="1589552292369" TEXT="Context switching price"/>
</node>
<node CREATED="1589552293240" ID="ID_1796511463" MODIFIED="1589552305055" TEXT="Result for 8 OS thread">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>10 Million Numbers using 8 goroutines with 8 cores
2.9 GHz Intel 4 Core i7
Concurrency WITH Parallelism
-----------------------------------------------------------------------------
$ GOGC=off go test -cpu 8 -run none -bench . -benchtime 3s
goos: darwin
goarch: amd64
pkg: github.com/ardanlabs/gotraining/topics/go/testing/benchmarks/cpu-bound
BenchmarkSequential-8        &#x9;    1000&#x9;   5910799 ns/op
BenchmarkConcurrent-8        &#x9;    2000&#x9;   3362643 ns/op : ~43% Faster
BenchmarkSequentialAgain-8   &#x9;    1000&#x9;   5933444 ns/op
BenchmarkConcurrentAgain-8   &#x9;    2000&#x9;   3477253 ns/op : ~41% Faster</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589552305907" ID="ID_791060464" MODIFIED="1589552309833" TEXT="Concurrency version faster"/>
<node CREATED="1589552332185" ID="ID_1949200174" MODIFIED="1589552334820" TEXT="Parallelism"/>
</node>
</node>
</node>
</node>
<node CREATED="1589552340954" ID="ID_1666793962" MODIFIED="1589552345589" TEXT="Sorting">
<icon BUILTIN="full-4"/>
<node CREATED="1589552358364" ID="ID_21482368" MODIFIED="1589552435955" TEXT="Not all CPU-Bound workload better with concurrency"/>
<node CREATED="1589552371289" ID="ID_1380971108" MODIFIED="1589552417916" TEXT="Sometimes very expensive to and/or">
<node CREATED="1589552392214" ID="ID_1001989193" MODIFIED="1589552394842" TEXT="break work up"/>
<node CREATED="1589552395285" ID="ID_1258327907" MODIFIED="1589552400489" TEXT="combine results"/>
</node>
<node CREATED="1589552445454" ID="ID_1649037024" MODIFIED="1610010400889" TEXT="Example">
<icon BUILTIN="wizard"/>
<node CREATED="1589552448096" ID="ID_981736324" LINK="https://play.golang.org/p/S0Us1wYBqG6" MODIFIED="1589552542577" TEXT="Bubble sort">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>01 package main
02
03 import &quot;fmt&quot;
04
05 func bubbleSort(numbers []int) {
06     n := len(numbers)
07     for i := 0; i &lt; n; i++ {
08         if !sweep(numbers, i) {
09             return
10         }
11     }
12 }
13
14 func sweep(numbers []int, currentPass int) bool {
15     var idx int
16     idxNext := idx + 1
17     n := len(numbers)
18     var swap bool
19
20     for idxNext &lt; (n - currentPass) {
21         a := numbers[idx]
22         b := numbers[idxNext]
23         if a &gt; b {
24             numbers[idx] = b
25             numbers[idxNext] = a
26             swap = true
27         }
28         idx++
29         idxNext = idx + 1
30     }
31     return swap
32 }
33
34 func main() {
35     org := []int{1, 3, 2, 4, 8, 6, 7, 2, 3, 0}
36     fmt.Println(org)
37
38     bubbleSort(org)
39     fmt.Println(org)
40 }</code></pre>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1589552659992" ID="ID_1729992325" MODIFIED="1589552666814" TEXT="Suitable for concurrency?">
<node CREATED="1589552666973" ID="ID_1274040053" MODIFIED="1589552667940" TEXT="No"/>
<node CREATED="1589552668415" ID="ID_1496843802" MODIFIED="1589552687062" TEXT="Could sort every slice of list concurrently"/>
<node CREATED="1589552677892" ID="ID_449943862" MODIFIED="1589552697493" TEXT="... but then no way to sort smaller lists together"/>
</node>
<node CREATED="1589552698454" ID="ID_817889013" MODIFIED="1589552714430" TEXT="Bubble sort concurrency">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>01 func bubbleSortConcurrent(goroutines int, numbers []int) {
02     totalNumbers := len(numbers)
03     lastGoroutine := goroutines - 1
04     stride := totalNumbers / goroutines
05
06     var wg sync.WaitGroup
07     wg.Add(goroutines)
08
09     for g := 0; g &lt; goroutines; g++ {
10         go func(g int) {
11             start := g * stride
12             end := start + stride
13             if g == lastGoroutine {
14                 end = totalNumbers
15             }
16
17             bubbleSort(numbers[start:end])
18             wg.Done()
19         }(g)
20     }
21
22     wg.Wait()
23
24     // Ugh, we have to sort the entire list again.
25     bubbleSort(numbers)
26 }</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589552750708" ID="ID_977039878" MODIFIED="1589552754590" TEXT="Result">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>Before:
  25 51 15 57 87 10 10 85 90 32 98 53
  91 82 84 97 67 37 71 94 26  2 81 79
  66 70 93 86 19 81 52 75 85 10 87 49

After:
  10 10 15 25 32 51 53 57 85 87 90 98
   2 26 37 67 71 79 81 82 84 91 94 97
  10 19 49 52 66 70 75 81 85 86 87 93</code></pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1589552767874" ID="ID_1804761892" MODIFIED="1589552772093" TEXT="Reading File">
<icon BUILTIN="full-5"/>
<node CREATED="1589552776060" ID="ID_569665586" MODIFIED="1589552781830" TEXT="What about IO-Bound workload?"/>
<node CREATED="1589552793887" ID="ID_1077950132" LINK="https://play.golang.org/p/8gFe5F8zweN" MODIFIED="1589552805804" TEXT="Sequential find">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>42 func find(topic string, docs []string) int {
43     var found int
44     for _, doc := range docs {
45         items, err := read(doc)
46         if err != nil {
47             continue
48         }
49         for _, item := range items {
50             if strings.Contains(item.Description, topic) {
51                 found++
52             }
53         }
54     }
55     return found
56 }</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589552869077" ID="ID_1980290835" MODIFIED="1589552875260" TEXT="Read implementation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>33 func read(doc string) ([]item, error) {
34     time.Sleep(time.Millisecond) // Simulate blocking disk read.
35     var d document
36     if err := xml.Unmarshal([]byte(file), &amp;d); err != nil {
37         return nil, err
38     }
39     return d.Channel.Items, nil
40 }</code></pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1589552956423" ID="ID_1702765931" LINK="https://play.golang.org/p/8gFe5F8zweN" MODIFIED="1589552966614" TEXT="Concurrent find">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>58 func findConcurrent(goroutines int, topic string, docs []string) int {
59     var found int64
60
61     ch := make(chan string, len(docs))
62     for _, doc := range docs {
63         ch &lt;- doc
64     }
65     close(ch)
66
67     var wg sync.WaitGroup
68     wg.Add(goroutines)
69
70     for g := 0; g &lt; goroutines; g++ {
71         go func() {
72             var lFound int64
73             for doc := range ch {
74                 items, err := read(doc)
75                 if err != nil {
76                     continue
77                 }
78                 for _, item := range items {
79                     if strings.Contains(item.Description, topic) {
80                         lFound++
81                     }
82                 }
83             }
84             atomic.AddInt64(&amp;found, lFound)
85             wg.Done()
86         }()
87     }
88
89     wg.Wait()
90
91     return int(found)
92 }</code></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1589553105302" ID="ID_958404511" MODIFIED="1589553108222" TEXT="Is it worth it?">
<node CREATED="1589553112848" ID="ID_875898157" MODIFIED="1589553151305" TEXT="Benchmark single OS thread">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>func BenchmarkSequential(b *testing.B) {
    for i := 0; i &lt; b.N; i++ {
        find(&quot;test&quot;, docs)
    }
}

func BenchmarkConcurrent(b *testing.B) {
    for i := 0; i &lt; b.N; i++ {
        findConcurrent(runtime.NumCPU(), &quot;test&quot;, docs)
    }
}</code></pre>
  </body>
</html></richcontent>
<node CREATED="1589553125753" ID="ID_1977057715" MODIFIED="1589553129103" TEXT="Result">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>10 Thousand Documents using 8 goroutines with 1 core
2.9 GHz Intel 4 Core i7
Concurrency WITHOUT Parallelism
-----------------------------------------------------------------------------
$ GOGC=off go test -cpu 1 -run none -bench . -benchtime 3s
goos: darwin
goarch: amd64
pkg: github.com/ardanlabs/gotraining/topics/go/testing/benchmarks/io-bound
BenchmarkSequential      &#x9;       3&#x9;1483458120 ns/op
BenchmarkConcurrent      &#x9;      20&#x9; 188941855 ns/op : ~87% Faster
BenchmarkSequentialAgain &#x9;       2&#x9;1502682536 ns/op
BenchmarkConcurrentAgain &#x9;      20&#x9; 184037843 ns/op : ~88% Faster</code></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1589553130161" ID="ID_741337085" MODIFIED="1589553134949" TEXT="Concurrent versions faster"/>
</node>
<node CREATED="1589553159322" ID="ID_1006548541" MODIFIED="1589553167846" TEXT="Benchmark parallelism">
<node CREATED="1589553172372" ID="ID_172634706" MODIFIED="1589553175035" TEXT="Result">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8"><code>10 Thousand Documents using 8 goroutines with 1 core
2.9 GHz Intel 4 Core i7
Concurrency WITH Parallelism
-----------------------------------------------------------------------------
$ GOGC=off go test -run none -bench . -benchtime 3s
goos: darwin
goarch: amd64
pkg: github.com/ardanlabs/gotraining/topics/go/testing/benchmarks/io-bound
BenchmarkSequential-8        &#x9;       3&#x9;1490947198 ns/op
BenchmarkConcurrent-8        &#x9;      20&#x9; 187382200 ns/op : ~88% Faster
BenchmarkSequentialAgain-8   &#x9;       3&#x9;1416126029 ns/op
BenchmarkConcurrentAgain-8   &#x9;      20&#x9; 185965460 ns/op : ~87% Faster</code></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1589553180702" ID="ID_323796000" MODIFIED="1589553183530" TEXT="No more performance"/>
<node CREATED="1589553191644" ID="ID_511164358" MODIFIED="1589553196302" TEXT="... compared with one OS Thread"/>
</node>
</node>
</node>
<node CREATED="1589553188161" ID="ID_400987382" MODIFIED="1589553224488" TEXT="Conclusion">
<icon BUILTIN="full-6"/>
</node>
</node>
</node>
</map>
