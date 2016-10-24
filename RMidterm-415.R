# DANIELLE YOSELOFF
# MIDTERM - Cleaning a data set
# Job patterns for minorities and women 
# DUE MONDAY OCTOBER 24TH

## Initial Setup

# reading raw data
data <- read.table("YEAR09_CBSA_NAC3.txt", header= TRUE, sep=";")

View(data)

# rename column names so variable will be readable after melt
names(data)[1] <- "Area"
names(data)[2] <- "Industry"
names(data)[3] <- "to be removed"
names(data)[4] <- "to be removed"

names(data)[5] <- 'Overall:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[6] <- 'Overall:Overall:Total:Professionals Total'
names(data)[7] <- 'Overall:Overall:Total:Technicians Total'
names(data)[8] <- 'Overall:Overall:Total:Sales Total'
names(data)[9] <- 'Overall:Overall:Total:Office & Clerical Total'
names(data)[10] <- 'Overall:Overall:Total:Craft Total'
names(data)[11] <- 'Overall:Overall:Total:Operatives Total'
names(data)[12] <- 'Overall:Overall:Total:Labor Total'
names(data)[13] <- 'Overall:Overall:Total:Service Total'
names(data)[14] <- 'Overall:Overall:Total:Grand Total'
names(data)[15] <- 'Overall:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[16] <- 'Overall:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[17] <- 'Overall:Male:Total:Professionals Total'
names(data)[18] <- 'Overall:Male:Total:Technicians Total'
names(data)[19] <- 'Overall:Male:Total:Sales Total'
names(data)[20] <- 'Overall:Male:Total:Office & Clerical Total'
names(data)[21] <- 'Overall:Male:Total:Craft Total'
names(data)[22] <- 'Overall:Male:Total:Operatives Total'
names(data)[23] <- 'Overall:Male:Total:Labor Total'
names(data)[24] <- 'Overall:Male:Total:Service Total'
names(data)[25] <- 'Overall:Male:Total:Grand Total'
names(data)[26] <- 'Overall:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[27] <- 'Overall:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[28] <- 'Overall:Female:Total:Professionals Total'
names(data)[29] <- 'Overall:Female:Total:Technicians Total'
names(data)[30] <- 'Overall:Female:Total:Sales Total'
names(data)[31] <- 'Overall:Female:Total:Office & Clerical Total'
names(data)[32] <- 'Overall:Female:Total:Craft Total'
names(data)[33] <- 'Overall:Female:Total:Operatives Total'
names(data)[34] <- 'Overall:Female:Total:Labor Total'
names(data)[35] <- 'Overall:Female:Total:Service Total'
names(data)[36] <- 'Overall:Female:Total:Grand Total'
names(data)[37] <- 'Overall:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[38] <- 'White:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[39] <- 'White:Overall:Total:Professionals Total'
names(data)[40] <- 'White:Overall:Total:Technicians Total'
names(data)[41] <- 'White:Overall:Total:Sales Total'
names(data)[42] <- 'White:Overall:Total:Office & Clerical Total'
names(data)[43] <- 'White:Overall:Total:Craft Total'
names(data)[44] <- 'White:Overall:Total:Operatives Total'
names(data)[45] <- 'White:Overall:Total:Labor Total'
names(data)[46] <- 'White:Overall:Total:Service Total'
names(data)[47] <- 'White:Overall:Total:Grand Total'
names(data)[48] <- 'White:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[49] <- 'White:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[50] <- 'White:Male:Total:Professionals Total'
names(data)[51] <- 'White:Male:Total:Technicians Total'
names(data)[52] <- 'White:Male:Total:Sales Total'
names(data)[53] <- 'White:Male:Total:Office & Clerical Total'
names(data)[54] <- 'White:Male:Total:Craft Total'
names(data)[55] <- 'White:Male:Total:Operatives Total'
names(data)[56] <- 'White:Male:Total:Labor Total'
names(data)[57] <- 'White:Male:Total:Service Total'
names(data)[58] <- 'White:Male:Total:Grand Total'
names(data)[59] <- 'White:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[60] <- 'White:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[61] <- 'White:Female:Total:Professionals Total'
names(data)[62] <- 'White:Female:Total:Technicians Total'
names(data)[63] <- 'White:Female:Total:Sales Total'
names(data)[64] <- 'White:Female:Total:Office & Clerical Total'
names(data)[65] <- 'White:Female:Total:Craft Total'
names(data)[66] <- 'White:Female:Total:Operatives Total'
names(data)[67] <- 'White:Female:Total:Labor Total'
names(data)[68] <- 'White:Female:Total:Service Total'
names(data)[69] <- 'White:Female:Total:Grand Total'
names(data)[70] <- 'White:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[71] <- 'Black:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[72] <- 'Black:Overall:Total:Professionals Total'
names(data)[73] <- 'Black:Overall:Total:Technicians Total'
names(data)[74] <- 'Black:Overall:Total:Sales Total'
names(data)[75] <- 'Black:Overall:Total:Office & Clerical Total'
names(data)[76] <- 'Black:Overall:Total:Craft Total'
names(data)[77] <- 'Black:Overall:Total:Operatives Total'
names(data)[78] <- 'Black:Overall:Total:Labor Total'
names(data)[79] <- 'Black:Overall:Total:Service Total'
names(data)[80] <- 'Black:Overall:Total:Grand Total'
names(data)[81] <- 'Black:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[82] <- 'Black:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[83] <- 'Black:Male:Total:Professionals Total'
names(data)[84] <- 'Black:Male:Total:Technicians Total'
names(data)[85] <- 'Black:Male:Total:Sales Total'
names(data)[86] <- 'Black:Male:Total:Office & Clerical Total'
names(data)[87] <- 'Black:Male:Total:Craft Total'
names(data)[88] <- 'Black:Male:Total:Operatives Total'
names(data)[89] <- 'Black:Male:Total:Labor Total'
names(data)[90] <- 'Black:Male:Total:Service Total'
names(data)[91] <- 'Black:Male:Total:Grand Total'
names(data)[92] <- 'Black:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[93] <- 'Black:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[94] <- 'Black:Female:Total:Professionals Total'
names(data)[95] <- 'Black:Female:Total:Technicians Total'
names(data)[96] <- 'Black:Female:Total:Sales Total'
names(data)[97] <- 'Black:Female:Total:Office & Clerical Total'
names(data)[98] <- 'Black:Female:Total:Craft Total'
names(data)[99] <- 'Black:Female:Total:Operatives Total'
names(data)[100] <- 'Black:Female:Total:Labor Total'
names(data)[101] <- 'Black:Female:Total:Service Total'
names(data)[102] <- 'Black:Female:Total:Grand Total'
names(data)[103] <- 'Black:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[104] <- 'Hispanic:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[105] <- 'Hispanic:Overall:Total:Professionals Total'
names(data)[106] <- 'Hispanic:Overall:Total:Technicians Total'
names(data)[107] <- 'Hispanic:Overall:Total:Sales Total'
names(data)[108] <- 'Hispanic:Overall:Total:Office & Clerical Total'
names(data)[109] <- 'Hispanic:Overall:Total:Craft Total'
names(data)[110] <- 'Hispanic:Overall:Total:Operatives Total'
names(data)[111] <- 'Hispanic:Overall:Total:Labor Total'
names(data)[112] <- 'Hispanic:Overall:Total:Service Total'
names(data)[113] <- 'Hispanic:Overall:Total:Grand Total'
names(data)[114] <- 'Hispanic:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[115] <- 'Hispanic:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[116] <- 'Hispanic:Male:Total:Professionals Total'
names(data)[117] <- 'Hispanic:Male:Total:Technicians Total'
names(data)[118] <- 'Hispanic:Male:Total:Sales Total'
names(data)[119] <- 'Hispanic:Male:Total:Office & Clerical Total'
names(data)[120] <- 'Hispanic:Male:Total:Craft Total'
names(data)[121] <- 'Hispanic:Male:Total:Operatives Total'
names(data)[122] <- 'Hispanic:Male:Total:Labor Total'
names(data)[123] <- 'Hispanic:Male:Total:Service Total'
names(data)[124] <- 'Hispanic:Male:Total:Grand Total'
names(data)[125] <- 'Hispanic:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[126] <- 'Hispanic:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[127] <- 'Hispanic:Female:Total:Professionals Total'
names(data)[128] <- 'Hispanic:Female:Total:Technicians Total'
names(data)[129] <- 'Hispanic:Female:Total:Sales Total'
names(data)[130] <- 'Hispanic:Female:Total:Office & Clerical Total'
names(data)[131] <- 'Hispanic:Female:Total:Craft Total'
names(data)[132] <- 'Hispanic:Female:Total:Operatives Total'
names(data)[133] <- 'Hispanic:Female:Total:Labor Total'
names(data)[134] <- 'Hispanic:Female:Total:Service Total'
names(data)[135] <- 'Hispanic:Female:Total:Grand Total'
names(data)[136] <- 'Hispanic:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[137] <- 'Asian:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[138] <- 'Asian:Overall:Total:Professionals Total'
names(data)[139] <- 'Asian:Overall:Total:Technicians Total'
names(data)[140] <- 'Asian:Overall:Total:Sales Total'
names(data)[141] <- 'Asian:Overall:Total:Office & Clerical Total'
names(data)[142] <- 'Asian:Overall:Total:Craft Total'
names(data)[143] <- 'Asian:Overall:Total:Operatives Total'
names(data)[144] <- 'Asian:Overall:Total:Labor Total'
names(data)[145] <- 'Asian:Overall:Total:Service Total'
names(data)[146] <- 'Asian:Overall:Total:Grand Total'
names(data)[147] <- 'Asian:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[148] <- 'Asian:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[149] <- 'Asian:Male:Total:Professionals Total'
names(data)[150] <- 'Asian:Male:Total:Technicians Total'
names(data)[151] <- 'Asian:Male:Total:Sales Total'
names(data)[152] <- 'Asian:Male:Total:Office & Clerical Total'
names(data)[153] <- 'Asian:Male:Total:Craft Total'
names(data)[154] <- 'Asian:Male:Total:Operatives Total'
names(data)[155] <- 'Asian:Male:Total:Labor Total'
names(data)[156] <- 'Asian:Male:Total:Service Total'
names(data)[157] <- 'Asian:Male:Total:Grand Total'
names(data)[158] <- 'Asian:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[159] <- 'Asian:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[160] <- 'Asian:Female:Total:Professionals Total'
names(data)[161] <- 'Asian:Female:Total:Technicians Total'
names(data)[162] <- 'Asian:Female:Total:Sales Total'
names(data)[163] <- 'Asian:Female:Total:Office & Clerical Total'
names(data)[164] <- 'Asian:Female:Total:Craft Total'
names(data)[165] <- 'Asian:Female:Total:Operatives Total'
names(data)[166] <- 'Asian:Female:Total:Labor Total'
names(data)[167] <- 'Asian:Female:Total:Service Total'
names(data)[168] <- 'Asian:Female:Total:Grand Total'
names(data)[169] <- 'Asian:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[170] <- 'American-Indian:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[171] <- 'American-Indian:Overall:Total:Professionals Total'
names(data)[172] <- 'American-Indian:Overall:Total:Technicians Total'
names(data)[173] <- 'American-Indian:Overall:Total:Sales Total'
names(data)[174] <- 'American-Indian:Overall:Total:Office & Clerical Total'
names(data)[175] <- 'American-Indian:Overall:Total:Craft Total'
names(data)[176] <- 'American-Indian:Overall:Total:Operatives Total'
names(data)[177] <- 'American-Indian:Overall:Total:Labor Total'
names(data)[178] <- 'American-Indian:Overall:Total:Service Total'
names(data)[179] <- 'American-Indian:Overall:Total:Grand Total'
names(data)[180] <- 'American-Indian:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[181] <- 'American-Indian:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[182] <- 'American-Indian:Male:Total:Professionals Total'
names(data)[183] <- 'American-Indian:Male:Total:Technicians Total'
names(data)[184] <- 'American-Indian:Male:Total:Sales Total'
names(data)[185] <- 'American-Indian:Male:Total:Office & Clerical Total'
names(data)[186] <- 'American-Indian:Male:Total:Craft Total'
names(data)[187] <- 'American-Indian:Male:Total:Operatives Total'
names(data)[188] <- 'American-Indian:Male:Total:Labor Total'
names(data)[189] <- 'American-Indian:Male:Total:Service Total'
names(data)[190] <- 'American-Indian:Male:Total:Grand Total'
names(data)[191] <- 'American-Indian:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[192] <- 'American-Indian:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[193] <- 'American-Indian:Female:Total:Professionals Total'
names(data)[194] <- 'American-Indian:Female:Total:Technicians Total'
names(data)[195] <- 'American-Indian:Female:Total:Sales Total'
names(data)[196] <- 'American-Indian:Female:Total:Office & Clerical Total'
names(data)[197] <- 'American-Indian:Female:Total:Craft Total'
names(data)[198] <- 'American-Indian:Female:Total:Operatives Total'
names(data)[199] <- 'American-Indian:Female:Total:Labor Total'
names(data)[200] <- 'American-Indian:Female:Total:Service Total'
names(data)[201] <- 'American-Indian:Female:Total:Grand Total'
names(data)[202] <- 'American-Indian:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[203] <- 'Hawaiian:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[204] <- 'Hawaiian:Overall:Total:Professionals Total'
names(data)[205] <- 'Hawaiian:Overall:Total:Technicians Total'
names(data)[206] <- 'Hawaiian:Overall:Total:Sales Total'
names(data)[207] <- 'Hawaiian:Overall:Total:Office & Clerical Total'
names(data)[208] <- 'Hawaiian:Overall:Total:Craft Total'
names(data)[209] <- 'Hawaiian:Overall:Total:Operatives Total'
names(data)[210] <- 'Hawaiian:Overall:Total:Labor Total'
names(data)[211] <- 'Hawaiian:Overall:Total:Service Total'
names(data)[212] <- 'Hawaiian:Overall:Total:Grand Total'
names(data)[213] <- 'Hawaiian:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[214] <- 'Hawaiian:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[215] <- 'Hawaiian:Male:Total:Professionals Total'
names(data)[216] <- 'Hawaiian:Male:Total:Technicians Total'
names(data)[217] <- 'Hawaiian:Male:Total:Sales Total'
names(data)[218] <- 'Hawaiian:Male:Total:Office & Clerical Total'
names(data)[219] <- 'Hawaiian:Male:Total:Craft Total'
names(data)[220] <- 'Hawaiian:Male:Total:Operatives Total'
names(data)[221] <- 'Hawaiian:Male:Total:Labor Total'
names(data)[222] <- 'Hawaiian:Male:Total:Service Total'
names(data)[223] <- 'Hawaiian:Male:Total:Grand Total'
names(data)[224] <- 'Hawaiian:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[225] <- 'Hawaiian:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[226] <- 'Hawaiian:Female:Total:Professionals Total'
names(data)[227] <- 'Hawaiian:Female:Total:Technicians Total'
names(data)[228] <- 'Hawaiian:Female:Total:Sales Total'
names(data)[229] <- 'Hawaiian:Female:Total:Office & Clerical Total'
names(data)[230] <- 'Hawaiian:Female:Total:Craft Total'
names(data)[231] <- 'Hawaiian:Female:Total:Operatives Total'
names(data)[232] <- 'Hawaiian:Female:Total:Labor Total'
names(data)[233] <- 'Hawaiian:Female:Total:Service Total'
names(data)[234] <- 'Hawaiian:Female:Total:Grand Total'
names(data)[235] <- 'Hawaiian:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[236] <- 'Two or More Races:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[237] <- 'Two or More Races:Overall:Total:Professionals Total'
names(data)[238] <- 'Two or More Races:Overall:Total:Technicians Total'
names(data)[239] <- 'Two or More Races:Overall:Total:Sales Total'
names(data)[240] <- 'Two or More Races:Overall:Total:Office & Clerical Total'
names(data)[241] <- 'Two or More Races:Overall:Total:Craft Total'
names(data)[242] <- 'Two or More Races:Overall:Total:Operatives Total'
names(data)[243] <- 'Two or More Races:Overall:Total:Labor Total'
names(data)[244] <- 'Two or More Races:Overall:Total:Service Total'
names(data)[245] <- 'Two or More Races:Overall:Total:Grand Total'
names(data)[246] <- 'Two or More Races:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[247] <- 'Two or More Races:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[248] <- 'Two or More Races:Male:Total:Professionals Total'
names(data)[249] <- 'Two or More Races:Male:Total:Technicians Total'
names(data)[250] <- 'Two or More Races:Male:Total:Sales Total'
names(data)[251] <- 'Two or More Races:Male:Total:Office & Clerical Total'
names(data)[252] <- 'Two or More Races:Male:Total:Craft Total'
names(data)[253] <- 'Two or More Races:Male:Total:Operatives Total'
names(data)[254] <- 'Two or More Races:Male:Total:Labor Total'
names(data)[255] <- 'Two or More Races:Male:Total:Service Total'
names(data)[256] <- 'Two or More Races:Male:Total:Grand Total'
names(data)[257] <- 'Two or More Races:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[258] <- 'Two or More Races:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[259] <- 'Two or More Races:Female:Total:Professionals Total'
names(data)[260] <- 'Two or More Races:Female:Total:Technicians Total'
names(data)[261] <- 'Two or More Races:Female:Total:Sales Total'
names(data)[262] <- 'Two or More Races:Female:Total:Office & Clerical Total'
names(data)[263] <- 'Two or More Races:Female:Total:Craft Total'
names(data)[264] <- 'Two or More Races:Female:Total:Operatives Total'
names(data)[265] <- 'Two or More Races:Female:Total:Labor Total'
names(data)[266] <- 'Two or More Races:Female:Total:Service Total'
names(data)[267] <- 'Two or More Races:Female:Total:Grand Total'
names(data)[268] <- 'Two or More Races:Female:Total:First/Mid Level Officials and Managers Total'

names(data)[269] <- 'Minority:Overall:Total:Senior/Exec Officials and Managers Total'
names(data)[270] <- 'Minority:Overall:Total:Professionals Total'
names(data)[271] <- 'Minority:Overall:Total:Technicians Total'
names(data)[272] <- 'Minority:Overall:Total:Sales Total'
names(data)[273] <- 'Minority:Overall:Total:Office & Clerical Total'
names(data)[274] <- 'Minority:Overall:Total:Craft Total'
names(data)[275] <- 'Minority:Overall:Total:Operatives Total'
names(data)[276] <- 'Minority:Overall:Total:Labor Total'
names(data)[277] <- 'Minority:Overall:Total:Service Total'
names(data)[278] <- 'Minority:Overall:Total:Grand Total'
names(data)[279] <- 'Minority:Overall:Total:First/Mid Level Officials and Managers Total'

names(data)[280] <- 'Minority:Male:Total:Senior/Exec Officials and Managers Total'
names(data)[281] <- 'Minority:Male:Total:Professionals Total'
names(data)[282] <- 'Minority:Male:Total:Technicians Total'
names(data)[283] <- 'Minority:Male:Total:Sales Total'
names(data)[284] <- 'Minority:Male:Total:Office & Clerical Total'
names(data)[285] <- 'Minority:Male:Total:Craft Total'
names(data)[286] <- 'Minority:Male:Total:Operatives Total'
names(data)[287] <- 'Minority:Male:Total:Labor Total'
names(data)[288] <- 'Minority:Male:Total:Service Total'
names(data)[289] <- 'Minority:Male:Total:Grand Total'
names(data)[290] <- 'Minority:Male:Total:First/Mid Level Officials and Managers Total'

names(data)[291] <- 'Minority:Female:Total:Senior/Exec Officials and Managers Total'
names(data)[292] <- 'Minority:Female:Total:Professionals Total'
names(data)[293] <- 'Minority:Female:Total:Technicians Total'
names(data)[294] <- 'Minority:Female:Total:Sales Total'
names(data)[295] <- 'Minority:Female:Total:Office & Clerical Total'
names(data)[296] <- 'Minority:Female:Total:Craft Total'
names(data)[297] <- 'Minority:Female:Total:Operatives Total'
names(data)[298] <- 'Minority:Female:Total:Labor Total'
names(data)[299] <- 'Minority:Female:Total:Service Total'
names(data)[300] <- 'Minority:Female:Total:Grand Total'
names(data)[301] <- 'Minority:Female:Total:First/Mid Level Officials and Managers Total'

## ALERT!
## Now the table switches over to percentage of work force (PoW)

names(data)[302] <- 'White:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[303] <- 'White:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[304] <- 'White:Male:PoW:Professionals Total'
names(data)[305] <- 'White:Male:PoW:Technicians Total'
names(data)[306] <- 'White:Male:PoW:Sales Total'
names(data)[307] <- 'White:Male:PoW:Office & Clerical Total'
names(data)[308] <- 'White:Male:PoW:Craft Total'
names(data)[309] <- 'White:Male:PoW:Operatives Total'
names(data)[310] <- 'White:Male:PoW:Labor Total'
names(data)[311] <- 'White:Male:PoW:Service Total'
names(data)[312] <- 'White:Male:PoW:Grand Total'

names(data)[313] <- 'Black:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[314] <- 'Black:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[315] <- 'Black:Male:PoW:Professionals Total'
names(data)[316] <- 'Black:Male:PoW:Technicians Total'
names(data)[317] <- 'Black:Male:PoW:Sales Total'
names(data)[318] <- 'Black:Male:PoW:Office & Clerical Total'
names(data)[319] <- 'Black:Male:PoW:Craft Total'
names(data)[320] <- 'Black:Male:PoW:Operatives Total'
names(data)[321] <- 'Black:Male:PoW:Labor Total'
names(data)[322] <- 'Black:Male:PoW:Service Total'
names(data)[323] <- 'Black:Male:PoW:Grand Total'

names(data)[324] <- 'Hispanic:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[325] <- 'Hispanic:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[326] <- 'Hispanic:Male:PoW:Professionals Total'
names(data)[327] <- 'Hispanic:Male:PoW:Technicians Total'
names(data)[328] <- 'Hispanic:Male:PoW:Sales Total'
names(data)[329] <- 'Hispanic:Male:PoW:Office & Clerical Total'
names(data)[330] <- 'Hispanic:Male:PoW:Craft Total'
names(data)[331] <- 'Hispanic:Male:PoW:Operatives Total'
names(data)[332] <- 'Hispanic:Male:PoW:Labor Total'
names(data)[333] <- 'Hispanic:Male:PoW:Service Total'
names(data)[334] <- 'Hispanic:Male:PoW:Grand Total'

names(data)[335] <- 'American-Indian:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[336] <- 'American-Indian:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[337] <- 'American-Indian:Male:PoW:Professionals Total'
names(data)[338] <- 'American-Indian:Male:PoW:Technicians Total'
names(data)[339] <- 'American-Indian:Male:PoW:Sales Total'
names(data)[340] <- 'American-Indian:Male:PoW:Office & Clerical Total'
names(data)[341] <- 'American-Indian:Male:PoW:Craft Total'
names(data)[342] <- 'American-Indian:Male:PoW:Operatives Total'
names(data)[343] <- 'American-Indian:Male:PoW:Labor Total'
names(data)[344] <- 'American-Indian:Male:PoW:Service Total'
names(data)[345] <- 'American-Indian:Male:PoW:Grand Total'

names(data)[346] <- 'Hawaiian:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[347] <- 'Hawaiian:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[348] <- 'Hawaiian:Male:PoW:Professionals Total'
names(data)[349] <- 'Hawaiian:Male:PoW:Technicians Total'
names(data)[350] <- 'Hawaiian:Male:PoW:Sales Total'
names(data)[351] <- 'Hawaiian:Male:PoW:Office & Clerical Total'
names(data)[352] <- 'Hawaiian:Male:PoW:Craft Total'
names(data)[353] <- 'Hawaiian:Male:PoW:Operatives Total'
names(data)[354] <- 'Hawaiian:Male:PoW:Labor Total'
names(data)[355] <- 'Hawaiian:Male:PoW:Service Total'
names(data)[356] <- 'Hawaiian:Male:PoW:Grand Total'

names(data)[357] <- 'Asian:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[358] <- 'Asian:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[359] <- 'Asian:Male:PoW:Professionals Total'
names(data)[360] <- 'Asian:Male:PoW:Technicians Total'
names(data)[361] <- 'Asian:Male:PoW:Sales Total'
names(data)[362] <- 'Asian:Male:PoW:Office & Clerical Total'
names(data)[363] <- 'Asian:Male:PoW:Craft Total'
names(data)[364] <- 'Asian:Male:PoW:Operatives Total'
names(data)[365] <- 'Asian:Male:PoW:Labor Total'
names(data)[366] <- 'Asian:Male:PoW:Service Total'
names(data)[367] <- 'Asian:Male:PoW:Grand Total'

names(data)[368] <- 'Two or More Races:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[369] <- 'Two or More Races:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[370] <- 'Two or More Races:Male:PoW:Professionals Total'
names(data)[371] <- 'Two or More Races:Male:PoW:Technicians Total'
names(data)[372] <- 'Two or More Races:Male:PoW:Sales Total'
names(data)[373] <- 'Two or More Races:Male:PoW:Office & Clerical Total'
names(data)[374] <- 'Two or More Races:Male:PoW:Craft Total'
names(data)[375] <- 'Two or More Races:Male:PoW:Operatives Total'
names(data)[376] <- 'Two or More Races:Male:PoW:Labor Total'
names(data)[377] <- 'Two or More Races:Male:PoW:Service Total'
names(data)[378] <- 'Two or More Races:Male:PoW:Grand Total'

names(data)[379] <- 'Minority:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[380] <- 'Minority:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[381] <- 'Minority:Male:PoW:Professionals Total'
names(data)[382] <- 'Minority:Male:PoW:Technicians Total'
names(data)[383] <- 'Minority:Male:PoW:Sales Total'
names(data)[384] <- 'Minority:Male:PoW:Office & Clerical Total'
names(data)[385] <- 'Minority:Male:PoW:Craft Total'
names(data)[386] <- 'Minority:Male:PoW:Operatives Total'
names(data)[387] <- 'Minority:Male:PoW:Labor Total'
names(data)[388] <- 'Minority:Male:PoW:Service Total'
names(data)[389] <- 'Minority:Male:PoW:Grand Total'

names(data)[390] <- 'White:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[391] <- 'White:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[392] <- 'White:Female:PoW:Professionals Total'
names(data)[393] <- 'White:Female:PoW:Technicians Total'
names(data)[394] <- 'White:Female:PoW:Sales Total'
names(data)[395] <- 'White:Female:PoW:Office & Clerical Total'
names(data)[396] <- 'White:Female:PoW:Craft Total'
names(data)[397] <- 'White:Female:PoW:Operatives Total'
names(data)[398] <- 'White:Female:PoW:Labor Total'
names(data)[399] <- 'White:Female:PoW:Service Total'
names(data)[400] <- 'White:Female:PoW:Grand Total'

names(data)[401] <- 'Black:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[402] <- 'Black:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[403] <- 'Black:Female:PoW:Professionals Total'
names(data)[404] <- 'Black:Female:PoW:Technicians Total'
names(data)[405] <- 'Black:Female:PoW:Sales Total'
names(data)[406] <- 'Black:Female:PoW:Office & Clerical Total'
names(data)[407] <- 'Black:Female:PoW:Craft Total'
names(data)[408] <- 'Black:Female:PoW:Operatives Total'
names(data)[409] <- 'Black:Female:PoW:Labor Total'
names(data)[410] <- 'Black:Female:PoW:Service Total'
names(data)[411] <- 'Black:Female:PoW:Grand Total'

names(data)[412] <- 'Hispanic:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[413] <- 'Hispanic:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[414] <- 'Hispanic:Female:PoW:Professionals Total'
names(data)[415] <- 'Hispanic:Female:PoW:Technicians Total'
names(data)[416] <- 'Hispanic:Female:PoW:Sales Total'
names(data)[417] <- 'Hispanic:Female:PoW:Office & Clerical Total'
names(data)[418] <- 'Hispanic:Female:PoW:Craft Total'
names(data)[419] <- 'Hispanic:Female:PoW:Operatives Total'
names(data)[420] <- 'Hispanic:Female:PoW:Labor Total'
names(data)[421] <- 'Hispanic:Female:PoW:Service Total'
names(data)[422] <- 'Hispanic:Female:PoW:Grand Total'

names(data)[423] <- 'American-Indian:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[424] <- 'American-Indian:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[425] <- 'American-Indian:Female:PoW:Professionals Total'
names(data)[426] <- 'American-Indian:Female:PoW:Technicians Total'
names(data)[427] <- 'American-Indian:Female:PoW:Sales Total'
names(data)[428] <- 'American-Indian:Female:PoW:Office & Clerical Total'
names(data)[429] <- 'American-Indian:Female:PoW:Craft Total'
names(data)[430] <- 'American-Indian:Female:PoW:Operatives Total'
names(data)[431] <- 'American-Indian:Female:PoW:Labor Total'
names(data)[432] <- 'American-Indian:Female:PoW:Service Total'
names(data)[433] <- 'American-Indian:Female:PoW:Grand Total'

names(data)[434] <- 'Hawaiian:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[435] <- 'Hawaiian:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[436] <- 'Hawaiian:Female:PoW:Professionals Total'
names(data)[437] <- 'Hawaiian:Female:PoW:Technicians Total'
names(data)[438] <- 'Hawaiian:Female:PoW:Sales Total'
names(data)[439] <- 'Hawaiian:Female:PoW:Office & Clerical Total'
names(data)[440] <- 'Hawaiian:Female:PoW:Craft Total'
names(data)[441] <- 'Hawaiian:Female:PoW:Operatives Total'
names(data)[442] <- 'Hawaiian:Female:PoW:Labor Total'
names(data)[443] <- 'Hawaiian:Female:PoW:Service Total'
names(data)[444] <- 'Hawaiian:Female:PoW:Grand Total'

names(data)[445] <- 'Asian:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[446] <- 'Asian:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[447] <- 'Asian:Female:PoW:Professionals Total'
names(data)[448] <- 'Asian:Female:PoW:Technicians Total'
names(data)[449] <- 'Asian:Female:PoW:Sales Total'
names(data)[450] <- 'Asian:Female:PoW:Office & Clerical Total'
names(data)[451] <- 'Asian:Female:PoW:Craft Total'
names(data)[452] <- 'Asian:Female:PoW:Operatives Total'
names(data)[453] <- 'Asian:Female:PoW:Labor Total'
names(data)[454] <- 'Asian:Female:PoW:Service Total'
names(data)[455] <- 'Asian:Female:PoW:Grand Total'

names(data)[456] <- 'Two or More Races:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[457] <- 'Two or More Races:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[458] <- 'Two or More Races:Female:PoW:Professionals Total'
names(data)[459] <- 'Two or More Races:Female:PoW:Technicians Total'
names(data)[460] <- 'Two or More Races:Female:PoW:Sales Total'
names(data)[461] <- 'Two or More Races:Female:PoW:Office & Clerical Total'
names(data)[462] <- 'Two or More Races:Female:PoW:Craft Total'
names(data)[463] <- 'Two or More Races:Female:PoW:Operatives Total'
names(data)[464] <- 'Two or More Races:Female:PoW:Labor Total'
names(data)[465] <- 'Two or More Races:Female:PoW:Service Total'
names(data)[466] <- 'Two or More Races:Female:PoW:Grand Total'

names(data)[467] <- 'Minority:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[468] <- 'Minority:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[469] <- 'Minority:Female:PoW:Professionals Total'
names(data)[470] <- 'Minority:Female:PoW:Technicians Total'
names(data)[471] <- 'Minority:Female:PoW:Sales Total'
names(data)[472] <- 'Minority:Female:PoW:Office & Clerical Total'
names(data)[473] <- 'Minority:Female:PoW:Craft Total'
names(data)[474] <- 'Minority:Female:PoW:Operatives Total'
names(data)[475] <- 'Minority:Female:PoW:Labor Total'
names(data)[476] <- 'Minority:Female:PoW:Service Total'
names(data)[477] <- 'Minority:Female:PoW:Grand Total'

names(data)[478] <- 'White:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[479] <- 'White:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[480] <- 'White:Overall:PoW:Professionals Total'
names(data)[481] <- 'White:Overall:PoW:Technicians Total'
names(data)[482] <- 'White:Overall:PoW:Sales Total'
names(data)[483] <- 'White:Overall:PoW:Office & Clerical Total'
names(data)[484] <- 'White:Overall:PoW:Craft Total'
names(data)[485] <- 'White:Overall:PoW:Operatives Total'
names(data)[486] <- 'White:Overall:PoW:Labor Total'
names(data)[487] <- 'White:Overall:PoW:Service Total'
names(data)[488] <- 'White:Overall:PoW:Grand Total'

names(data)[489] <- 'Black:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[490] <- 'Black:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[491] <- 'Black:Overall:PoW:Professionals Total'
names(data)[492] <- 'Black:Overall:PoW:Technicians Total'
names(data)[493] <- 'Black:Overall:PoW:Sales Total'
names(data)[494] <- 'Black:Overall:PoW:Office & Clerical Total'
names(data)[495] <- 'Black:Overall:PoW:Craft Total'
names(data)[496] <- 'Black:Overall:PoW:Operatives Total'
names(data)[497] <- 'Black:Overall:PoW:Labor Total'
names(data)[498] <- 'Black:Overall:PoW:Service Total'
names(data)[499] <- 'Black:Overall:PoW:Grand Total'

names(data)[500] <- 'Hispanic:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[501] <- 'Hispanic:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[502] <- 'Hispanic:Overall:PoW:Professionals Total'
names(data)[503] <- 'Hispanic:Overall:PoW:Technicians Total'
names(data)[504] <- 'Hispanic:Overall:PoW:Sales Total'
names(data)[505] <- 'Hispanic:Overall:PoW:Office & Clerical Total'
names(data)[506] <- 'Hispanic:Overall:PoW:Craft Total'
names(data)[507] <- 'Hispanic:Overall:PoW:Operatives Total'
names(data)[508] <- 'Hispanic:Overall:PoW:Labor Total'
names(data)[509] <- 'Hispanic:Overall:PoW:Service Total'
names(data)[510] <- 'Hispanic:Overall:PoW:Grand Total'

names(data)[511] <- 'American-Indian:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[512] <- 'American-Indian:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[513] <- 'American-Indian:Overall:PoW:Professionals Total'
names(data)[514] <- 'American-Indian:Overall:PoW:Technicians Total'
names(data)[515] <- 'American-Indian:Overall:PoW:Sales Total'
names(data)[516] <- 'American-Indian:Overall:PoW:Office & Clerical Total'
names(data)[517] <- 'American-Indian:Overall:PoW:Craft Total'
names(data)[518] <- 'American-Indian:Overall:PoW:Operatives Total'
names(data)[519] <- 'American-Indian:Overall:PoW:Labor Total'
names(data)[520] <- 'American-Indian:Overall:PoW:Service Total'
names(data)[521] <- 'American-Indian:Overall:PoW:Grand Total'

names(data)[522] <- 'Hawaiian:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[523] <- 'Hawaiian:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[524] <- 'Hawaiian:Overall:PoW:Professionals Total'
names(data)[525] <- 'Hawaiian:Overall:PoW:Technicians Total'
names(data)[526] <- 'Hawaiian:Overall:PoW:Sales Total'
names(data)[527] <- 'Hawaiian:Overall:PoW:Office & Clerical Total'
names(data)[528] <- 'Hawaiian:Overall:PoW:Craft Total'
names(data)[529] <- 'Hawaiian:Overall:PoW:Operatives Total'
names(data)[530] <- 'Hawaiian:Overall:PoW:Labor Total'
names(data)[531] <- 'Hawaiian:Overall:PoW:Service Total'
names(data)[532] <- 'Hawaiian:Overall:PoW:Grand Total'

names(data)[533] <- 'Asian:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[534] <- 'Asian:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[535] <- 'Asian:Overall:PoW:Professionals Total'
names(data)[536] <- 'Asian:Overall:PoW:Technicians Total'
names(data)[537] <- 'Asian:Overall:PoW:Sales Total'
names(data)[538] <- 'Asian:Overall:PoW:Office & Clerical Total'
names(data)[539] <- 'Asian:Overall:PoW:Craft Total'
names(data)[540] <- 'Asian:Overall:PoW:Operatives Total'
names(data)[541] <- 'Asian:Overall:PoW:Labor Total'
names(data)[542] <- 'Asian:Overall:PoW:Service Total'
names(data)[543] <- 'Asian:Overall:PoW:Grand Total'

names(data)[544] <- 'Two or More Races:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[545] <- 'Two or More Races:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[546] <- 'Two or More Races:Overall:PoW:Professionals Total'
names(data)[547] <- 'Two or More Races:Overall:PoW:Technicians Total'
names(data)[548] <- 'Two or More Races:Overall:PoW:Sales Total'
names(data)[549] <- 'Two or More Races:Overall:PoW:Office & Clerical Total'
names(data)[550] <- 'Two or More Races:Overall:PoW:Craft Total'
names(data)[551] <- 'Two or More Races:Overall:PoW:Operatives Total'
names(data)[552] <- 'Two or More Races:Overall:PoW:Labor Total'
names(data)[553] <- 'Two or More Races:Overall:PoW:Service Total'
names(data)[554] <- 'Two or More Races:Overall:PoW:Grand Total'

names(data)[555] <- 'Minority:Overall:PoW:Senior/Exec Officials and Managers Total'
names(data)[556] <- 'Minority:Overall:PoW:First/Mid Level Officials and Managers Total'
names(data)[557] <- 'Minority:Overall:PoW:Professionals Total'
names(data)[558] <- 'Minority:Overall:PoW:Technicians Total'
names(data)[559] <- 'Minority:Overall:PoW:Sales Total'
names(data)[560] <- 'Minority:Overall:PoW:Office & Clerical Total'
names(data)[561] <- 'Minority:Overall:PoW:Craft Total'
names(data)[562] <- 'Minority:Overall:PoW:Operatives Total'
names(data)[563] <- 'Minority:Overall:PoW:Labor Total'
names(data)[564] <- 'Minority:Overall:PoW:Service Total'
names(data)[565] <- 'Minority:Overall:PoW:Grand Total'

names(data)[566] <- 'Overall:Male:PoW:Senior/Exec Officials and Managers Total'
names(data)[567] <- 'Overall:Male:PoW:First/Mid Level Officials and Managers Total'
names(data)[568] <- 'Overall:Male:PoW:Professionals Total'
names(data)[569] <- 'Overall:Male:PoW:Technicians Total'
names(data)[570] <- 'Overall:Male:PoW:Sales Total'
names(data)[571] <- 'Overall:Male:PoW:Office & Clerical Total'
names(data)[572] <- 'Overall:Male:PoW:Craft Total'
names(data)[573] <- 'Overall:Male:PoW:Operatives Total'
names(data)[574] <- 'Overall:Male:PoW:Labor Total'
names(data)[575] <- 'Overall:Male:PoW:Service Total'
names(data)[576] <- 'Overall:Male:PoW:Grand Total'

names(data)[577] <- 'Overall:Female:PoW:Senior/Exec Officials and Managers Total'
names(data)[578] <- 'Overall:Female:PoW:First/Mid Level Officials and Managers Total'
names(data)[579] <- 'Overall:Female:PoW:Professionals Total'
names(data)[580] <- 'Overall:Female:PoW:Technicians Total'
names(data)[581] <- 'Overall:Female:PoW:Sales Total'
names(data)[582] <- 'Overall:Female:PoW:Office & Clerical Total'
names(data)[583] <- 'Overall:Female:PoW:Craft Total'
names(data)[584] <- 'Overall:Female:PoW:Operatives Total'
names(data)[585] <- 'Overall:Female:PoW:Labor Total'
names(data)[586] <- 'Overall:Female:PoW:Service Total'
names(data)[587] <- 'Overall:Female:PoW:Grand Total'

# Due to vastness of data set fiter data to focus on one area for this project 
data <- subset(data, Area=='Boston-Cambridge-Quincy, MA-NH')

# Remove city, state column since we filtered data to be only for specific area 
# Remove comulmns 'X_TYPE_' and 'TOTAL_UNIT' -s no data of significance
# 588 through 598 were deleted because they had no data of significance
# 599 and 600 were deleted because they were missing from the legend
data <- data[-c(1, 3, 4, 588:598, 599, 600)]


## Melt data (turn columns into rows)

library(reshape)
melted <- melt(data, id=c("Industry"))

View(melted)


## Split columns

library(tidyr)
split <- separate(melted, variable, c("Race", "Gender", "Type", "Position"), sep = ":")

View(split)

# 'Structural missing values, which represent measurements that cannot be made can be safely removed' (Wickham 2014, Tidy Data p.4)
# Rows containing 'N/A' data will be removed
split <- subset(split, !is.na(value))

## Move both observation units (total # of works vs % of workforce) to separate tables
totals <- subset(split, Type=="Total")
percentage <- subset(split, Type=="PoW")

## Finishing Touches

# Remove column indicating table title
totals <- totals[-c(4)]
percentage <- percentage[-c(4)]

# Rename 'value' to be more specific to observational unit
names(totals)[5] <- "Total"
names(percentage)[5] <- "Total"

## Display final data

View(totals)
View(percentage)

## Visually interpreting data 
library(ggplot2)

# limiting scope of data for these specific graphs
# Also remove Any data dealing with overall genders since those are derived values anyways
totalOverallByGender <- subset(totals, Gender != "Overall" & Race != "Minority")
percentageFood <- subset(percentage, Gender == "Overall" & Industry == "Food Services and Drinking Places" & Race != "Minority")

# Job participation by profession/gender
ggplot(data = totalOverallByGender, aes(x=Position,y=Total,fill=factor(Gender))) + 
  geom_bar(stat="identity",position='dodge') +
  theme(axis.text.x=element_text(angle=70,hjust=1,vjust=1)) +
  labs(title='Total Workforce in Positions by Gender', fill='Gender', y='# of Workers')

# Percentage of Food Services workforce by position/race
ggplot(data = percentageFood, aes(x=Position,y=Total,fill=factor(Race))) + 
  geom_bar(stat="identity") +
  theme(axis.text.x=element_text(angle=70,hjust=1,vjust=1)) +
  labs(title='Food Services and Drinking Places Industry', y='% of Workforce', fill='Race')





