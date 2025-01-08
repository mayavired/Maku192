function ktx(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast('Results '..#data..' Edited') local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else return false end else return false end end


local HexPatches = {}
function HexPatches.ktz(Lib,Offset,Edit,Type)
local Ranges = gg.getRangesList(Lib)
local v = {}
v[1] = {}
v[1].address = Ranges[1].start + Offset
v[1].flags = Type
v[1].value = Edit.."r"
v[1].freeze = true
gg.setValues(v)
end





function Lib() end
function setvalue(address,flags,value) Lib('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setValues(address, flags, value) gg.setValues({[1] = {address = address, flags = flags, value = value}}) end
function setvalue(address,flags,value)
local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end




ktz = 1


function homee()
q = gg.choice({
"WEAPON SKINS",
"CHARACTER SKINS",
},nil,"zkei | @Keiji681")
if q == nil then else
if q == 1 then skins() end
if q == 2 then charac() end
end
end

function skins()


weaponSkins = gg.multiChoice({
    'AK117 Hizuki', 
    'AK117 Hizuki lvl 3',
    'AK117 Hizuki lvl 7',
    'AK47 Mythic', 
    'AK47 Mythic lvl 3',
    'AK47 Mythic lvl 7',
    'MK2 Redgun', 
    'MK2 Redgun lvl 3',
    'MK2 Redgun lvl 7',
    'ASVAL Redgun', 
    'ASVAL Redgun lvl 3',
    'ASVAL Redgun lvl 7',
    'ASVAL Redgun', 
    'M13 Forerunner', 
    'M13 Forerunner lvl 3',
    'M13 Forerunner lvl 7',
    'Kilo141 FallingAngel', 
    'Kilo141 FallingAngel lvl 3',
    'Kilo141 FallingAngel lvl 7',
    'Oden Mythic', 
    'Oden Mythic lvl 3',
    'Oden Mythic lvl 7',
    'Krig6 IceDrake', 
    'Krig6 IceDrake lvl 3',
    'Krig6 IceDrake lvl 7',
    'EM2 Redgun', 
    'EM2 Redgun lvl 3',
    'EM2 Redgun lvl 7',
    'FFAR1CW BrightBlade', 
    'FFAR1CW BrightBlade lvl 3',
    'FFAR1CW BrightBlade lvl 7',
    'GRAU556 SBT', 
    'GRAU556 SBT lvl 3',
    'GRAU556 SBT lvl 7',
    'TYPE19X Ink', 
    'TYPE19X Ink lvl 3',
    'TYPE19X Ink lvl 7',
    'F2000 StarEnergy', 
    'F2000 StarEnergy lvl 3',
    'F2000 StarEnergy lvl 7',
    'DLQ33 LotusFlames', 
    'DLQ33 LotusFlames lvl 3',
    'DLQ33 LotusFlames lvl 7',
    'AMR Redgun', 
    'AMR Redgun lvl 3',
    'AMR Redgun lvl 7',
    'Holger26 DarkFrontier', 
    'Holger26 DarkFrontier lvl 3',
    'Holger26 DarkFrontier lvl 7',
    'MG42 Debris', 
    'MG42 Debris lvl 3',
    'MG42 Debris lvl 7',
    'QQ9 wakuwaku', 
    'QQ9 wakuwaku lvl 3',
    'QQ9 wakuwaku lvl 7',
    'Fennec Ascended', 
    'Fennec Ascended lvl 3',
    'Fennec Ascended lvl 7',
    'P90 Mythic', 
    'P90 Mythic lvl 3',
    'P90 Mythic lvl 7',
    'Switchblade X9Tyuunibyou', 
    'Switchblade X9Tyuunibyou lvl 3',
    'Switchblade X9Tyuunibyou lvl 7',
    'CX9 Reddo', 
    'CX9 Reddo lvl 3',
    'CX9 Reddo lvl 7',
	'AK47 Pumpkin', 
	'M4A1TECH CourtJester',
	'XPR50 DemonMask', 
    'XPR50 BrokenWill', 
	'M21EBR RisingAshes', 
	'DL Q33 LuxuryChristmas', 
    'DL Q33 Zealot', 
    'DL Q33 AdvancedArtillery', 
    'DL Q33 Precise', 
    'DLQ33 BLKMT', 
    'LOCUS Neptune', 
    'LOCUS Railgun', 
    'LOCUS GhostHunter', 
    'LOCUS MetalWhiskers', 
	'MAC 10 AtomicStar', 
    'MAC 10 DragonMight', 
    'MAC 10 BastIdol', 
    'MAC10 CodmDark', 
    'BY15 ChaBaiDao', 
    'BY15 ctopus', 
    'M1887 KinnguNoTorannpetto', 
    'KRM262 Ejector', 
    'KRM262 GameBoy', 
    'Echo NaturalCauses', 
    'R90 Untapped', 
    'JAK12 HardArmour',
	'KaliSticks cobra', 
    'ButterflyKnife Legendary', 
    'KnifeChinano1 Chinano1', 
    'SAI LiangZhai', 
    'SPEAR loyalty',
    'DIAMOND CAMO [USE NORMAL CAMO]',
    'MALPRACTICE [BASE MELLE]',
}, nil, "VIP")
if weaponSkins == nil then else
if weaponSkins[1] == true then skinFunction("AK117 Hizuki") end
if weaponSkins[2] == true then skinFunction("AK117 Hizuki lvl 3") end
if weaponSkins[3] == true then skinFunction("AK117 Hizuki lvl 7") end
if weaponSkins[4] == true then skinFunction("AK47 Mythic") end
if weaponSkins[5] == true then skinFunction("AK47 Mythic lvl 3") end
if weaponSkins[6] == true then skinFunction("AK47 Mythic lvl 7") end
if weaponSkins[7] == true then skinFunction("MK2 Redgun") end
if weaponSkins[8] == true then skinFunction("MK2 Redgun lvl 3") end
if weaponSkins[9] == true then skinFunction("MK2 Redgun lvl 7") end
if weaponSkins[10] == true then skinFunction("ASVAL Redgun") end
if weaponSkins[11] == true then skinFunction("ASVAL Redgun lvl 3") end
if weaponSkins[12] == true then skinFunction("ASVAL Redgun lvl 7") end
if weaponSkins[13] == true then skinFunction("ASVAL Redgun") end
if weaponSkins[14] == true then skinFunction("M13 Forerunner") end
if weaponSkins[15] == true then skinFunction("M13 Forerunner lvl 3") end
if weaponSkins[16] == true then skinFunction("M13 Forerunner lvl 7") end
if weaponSkins[17] == true then skinFunction("Kilo141 FallingAngel") end
if weaponSkins[18] == true then skinFunction("Kilo141 FallingAngel lvl 3") end
if weaponSkins[19] == true then skinFunction("Kilo141 FallingAngel lvl 7") end
if weaponSkins[20] == true then skinFunction("Oden Mythic") end
if weaponSkins[21] == true then skinFunction("Oden Mythic lvl 3") end
if weaponSkins[22] == true then skinFunction("Oden Mythic lvl 7") end
if weaponSkins[23] == true then skinFunction("Krig6 IceDrake") end
if weaponSkins[24] == true then skinFunction("Krig6 IceDrake lvl 3") end
if weaponSkins[25] == true then skinFunction("Krig6 IceDrake lvl 7") end
if weaponSkins[26] == true then skinFunction("EM2 Redgun") end
if weaponSkins[27] == true then skinFunction("EM2 Redgun lvl 3") end
if weaponSkins[28] == true then skinFunction("EM2 Redgun lvl 7") end
if weaponSkins[29] == true then skinFunction("FFAR1CW BrightBlade") end
if weaponSkins[30] == true then skinFunction("FFAR1CW BrightBlade lvl 3") end
if weaponSkins[31] == true then skinFunction("FFAR1CW BrightBlade lvl 7") end
if weaponSkins[32] == true then skinFunction("GRAU556 SBT") end
if weaponSkins[33] == true then skinFunction("GRAU556 SBT lvl 3") end
if weaponSkins[34] == true then skinFunction("GRAU556 SBT lvl 7") end
if weaponSkins[35] == true then skinFunction("TYPE19X Ink") end
if weaponSkins[36] == true then skinFunction("TYPE19X Ink lvl 3") end
if weaponSkins[37] == true then skinFunction("TYPE19X Ink lvl 7") end
if weaponSkins[38] == true then skinFunction("F2000 StarEnergy") end
if weaponSkins[39] == true then skinFunction("F2000 StarEnergy lvl 3") end
if weaponSkins[40] == true then skinFunction("F2000 StarEnergy lvl 7") end
if weaponSkins[41] == true then skinFunction("DLQ33 LotusFlames") end
if weaponSkins[42] == true then skinFunction("DLQ33 LotusFlames lvl 3") end
if weaponSkins[43] == true then skinFunction("DLQ33 LotusFlames lvl 7") end
if weaponSkins[44] == true then skinFunction("AMR Redgun") end
if weaponSkins[45] == true then skinFunction("AMR Redgun lvl 3") end
if weaponSkins[46] == true then skinFunction("AMR Redgun lvl 7") end
if weaponSkins[47] == true then skinFunction("Holger26 DarkFrontier") end
if weaponSkins[48] == true then skinFunction("Holger26 DarkFrontier lvl 3") end
if weaponSkins[49] == true then skinFunction("Holger26 DarkFrontier lvl 7") end
if weaponSkins[50] == true then skinFunction("MG42 Debris") end
if weaponSkins[51] == true then skinFunction("MG42 Debris lvl 3") end
if weaponSkins[52] == true then skinFunction("MG42 Debris lvl 7") end
if weaponSkins[53] == true then skinFunction("QQ9 wakuwaku") end
if weaponSkins[54] == true then skinFunction("QQ9 wakuwaku lvl 3") end
if weaponSkins[55] == true then skinFunction("QQ9 wakuwaku lvl 7") end
if weaponSkins[56] == true then skinFunction("Fennec Ascended") end
if weaponSkins[57] == true then skinFunction("Fennec Ascended lvl 3") end
if weaponSkins[58] == true then skinFunction("Fennec Ascended lvl 7") end
if weaponSkins[59] == true then skinFunction("P90 Mythic") end
if weaponSkins[60] == true then skinFunction("P90 Mythic lvl 3") end
if weaponSkins[61] == true then skinFunction("P90 Mythic lvl 7") end
if weaponSkins[62] == true then skinFunction("Switchblade X9Tyuunibyou") end
if weaponSkins[63] == true then skinFunction("Switchblade X9Tyuunibyou lvl 3") end
if weaponSkins[64] == true then skinFunction("Switchblade X9Tyuunibyou lvl 7") end
if weaponSkins[65] == true then skinFunction("CX9 Reddo") end
if weaponSkins[66] == true then skinFunction("CX9 Reddo lvl 3") end
if weaponSkins[67] == true then skinFunction("CX9 Reddo lvl 7") end
if weaponSkins[68] == true then skinFunction("AK47 Pumpkin" ) end
if weaponSkins[69] == true then skinFunction("M4A1TECH CourtJester") end
if weaponSkins[70] == true then skinFunction("XPR50 DemonMask" ) end
if weaponSkins[71] == true then skinFunction("XPR50 BrokenWill") end
if weaponSkins[72] == true then skinFunction("M21EBR RisingAshes") end
if weaponSkins[73] == true then skinFunction("DL Q33 LuxuryChristmas") end
if weaponSkins[74] == true then skinFunction("DL Q33 Zealot") end
if weaponSkins[75] == true then skinFunction("DL Q33 AdvancedArtillery") end
if weaponSkins[76] == true then skinFunction("DL Q33 Precise") end
if weaponSkins[77] == true then skinFunction("DLQ33 BLKMT") end
if weaponSkins[78] == true then skinFunction("LOCUS Neptune") end
if weaponSkins[79] == true then skinFunction("LOCUS Railgun") end
if weaponSkins[80] == true then skinFunction("LOCUS GhostHunter") end
if weaponSkins[81] == true then skinFunction("LOCUS MetalWhiskers") end
if weaponSkins[82] == true then skinFunction("MAC 10 AtomicStar") end
if weaponSkins[83] == true then skinFunction("MAC 10 DragonMight") end
if weaponSkins[84] == true then skinFunction("MAC 10 BastIdol") end
if weaponSkins[85] == true then skinFunction("MAC10 CodmDark") end
if weaponSkins[86] == true then skinFunction("BY15 ChaBaiDao") end
if weaponSkins[87] == true then skinFunction("BY15 ctopus") end
if weaponSkins[88] == true then skinFunction("M1887 KinnguNoTorannpetto") end
if weaponSkins[89] == true then skinFunction("KRM262 Ejector") end
if weaponSkins[90] == true then skinFunction("KRM262 GameBoy") end
if weaponSkins[91] == true then skinFunction("Echo NaturalCauses") end
if weaponSkins[92] == true then skinFunction("R90 Untapped") end
if weaponSkins[93] == true then skinFunction("JAK12 HardArmour") end
if weaponSkins[94] == true then skinFunction("KaliSticks cobra") end
if weaponSkins[95] == true then skinFunction("ButterflyKnife Legendary") end
if weaponSkins[96] == true then skinFunction("KnifeChinano1 Chinano1" ) end
if weaponSkins[97] == true then skinFunction("SAI LiangZhai") end
if weaponSkins[98] == true then skinFunction("SPEAR loyalty" ) end
if weaponSkins[99] == true then skinFunction("DIAMOND CAMO") end
if weaponSkins[100] == true then skinFunction("MALPRACTICE") end
end
end


function skinFunction(skin)


if (skin == 'AK117 Hizuki') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106001, 0}, {19, -16}} -- Skin
    ck2 = {{100715, 4}, {10106173, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106201, 0}, {19, -16}} -- Skin
    ck2 = {{100715, 4}, {10106173, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {10106001, 0x40}}
    ck2 = {{10106173, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {0, 0x18}, {300199, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10106001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400015, 0x20}, {200206, 0x24}, {300199, 0x28}, {0, 0x2C}, {28, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{86173, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86197, -0x24}, {86195, -0x20}, {86197, -0x1C}, {86196, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{86157, -0x30}, {86159, -0x2C}, {86158, -0x28}, {85129, -0x24}, {85127, -0x20}, {85129, -0x1C}, {85128, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86152, -0x24}, {85125, -0x20}, {86152, -0x1C}, {85126, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86176, -0x24}, {85123, -0x20}, {86176, -0x1C}, {85124, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85122, -0x24}, {85120, -0x20}, {85122, -0x1C}, {85121, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86151, -0x24}, {85118, -0x20}, {86151, -0x1C}, {85119, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85153, -0x24}, {85151, -0x20}, {85153, -0x1C}, {85152, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85150, -0x24}, {85148, -0x20}, {85150, -0x1C}, {85149, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85147, -0x24}, {85145, -0x20}, {85147, -0x1C}, {85146, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85144, -0x24}, {85142, -0x20}, {85144, -0x1C}, {85143, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{86154, -0x30}, {86156, -0x2C}, {86155, -0x28}, {85135, -0x24}, {85133, -0x20}, {85135, -0x1C}, {85134, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'AK117 Hizuki lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106001, 0}, {19, -16}} -- Skin
    ck2 = {{100715, 4}, {10106173, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106201, 0}, {19, -16}} -- Skin
    ck2 = {{100715, 4}, {10106173, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {10106001, 0x40}}
    ck2 = {{10106173, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {0, 0x18}, {300199, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10106001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400015, 0x20}, {200206, 0x24}, {400006, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{86173, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86197, -0x24}, {86195, -0x20}, {86197, -0x1C}, {86196, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{86157, -0x30}, {86159, -0x2C}, {86158, -0x28}, {85129, -0x24}, {85127, -0x20}, {85129, -0x1C}, {85128, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86152, -0x24}, {85125, -0x20}, {86152, -0x1C}, {85126, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86176, -0x24}, {85123, -0x20}, {86176, -0x1C}, {85124, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85122, -0x24}, {85120, -0x20}, {85122, -0x1C}, {85121, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86151, -0x24}, {85118, -0x20}, {86151, -0x1C}, {85119, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85153, -0x24}, {85151, -0x20}, {85153, -0x1C}, {85152, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85150, -0x24}, {85148, -0x20}, {85150, -0x1C}, {85149, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85147, -0x24}, {85145, -0x20}, {85147, -0x1C}, {85146, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85144, -0x24}, {85142, -0x20}, {85144, -0x1C}, {85143, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{86154, -0x30}, {86156, -0x2C}, {86155, -0x28}, {85135, -0x24}, {85133, -0x20}, {85135, -0x1C}, {85134, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003860, 0}, {100664, 0x40}} --Attachment
    ck2 = {{361003869, -48}, {361003870, -44}, {361003873, -40}, {361003876, -36}, {361003872, -32}, {361003875, -28}, {361003871, -4}, {361004029, 8}, {361003874, 28}, {361003877, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'AK117 Hizuki lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106001, 0}, {19, -16}} -- Skin
    ck2 = {{100715, 4}, {10106173, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106201, 0}, {19, -16}} -- Skin
    ck2 = {{100715, 4}, {10106173, 8}}
    czk(ck1, ck2, 4)
    
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {10106001, 0x40}}
    ck2 = {{10106173, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {0, 0x18}, {300199, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10106001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10106001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400015, 0x20}, {200206, 0x24}, {400007, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10106001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{86173, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86197, -0x24}, {86195, -0x20}, {86197, -0x1C}, {86196, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{86157, -0x30}, {86159, -0x2C}, {86158, -0x28}, {85129, -0x24}, {85127, -0x20}, {85129, -0x1C}, {85128, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86152, -0x24}, {85125, -0x20}, {86152, -0x1C}, {85126, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86176, -0x24}, {85123, -0x20}, {86176, -0x1C}, {85124, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85122, -0x24}, {85120, -0x20}, {85122, -0x1C}, {85121, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {86151, -0x24}, {85118, -0x20}, {86151, -0x1C}, {85119, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85153, -0x24}, {85151, -0x20}, {85153, -0x1C}, {85152, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85150, -0x24}, {85148, -0x20}, {85150, -0x1C}, {85149, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85147, -0x24}, {85145, -0x20}, {85147, -0x1C}, {85146, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {85144, -0x24}, {85142, -0x20}, {85144, -0x1C}, {85143, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {19, -0x5C}} --Attachment
    ck2 = {{86154, -0x30}, {86156, -0x2C}, {86155, -0x28}, {85135, -0x24}, {85133, -0x20}, {85135, -0x1C}, {85134, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003860, 0}, {100664, 0x40}} --Attachment
    ck2 = {{361003869, -48}, {361003870, -44}, {361003873, -40}, {361003876, -36}, {361003872, -32}, {361003875, -28}, {361003871, -4}, {361004029, 8}, {361003874, 28}, {361003877, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'AK47 Mythic') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {9, -16}} -- Skin
    ck2 = {{100233, 4}, {10107146, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107201, 0}, {9, -16}} -- Skin
    ck2 = {{100233, 4}, {10107146, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {10107001, 0x40}}
    ck2 = {{10107146, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {0, 0x18}, {300119, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10107001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400007, 0x20}, {200126, 0x24}, {300119, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{66737, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30313001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82254, -0x24}, {82252, -0x20}, {82254, -0x1C}, {82253, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45696, -0x24}, {45694, -0x20}, {45696, -0x1C}, {45695, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45693, -0x24}, {45691, -0x20}, {45693, -0x1C}, {45692, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901027, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{51240, -0x30}, {51242, -0x2C}, {51241, -0x28}, {67746, -0x24}, {66747, -0x20}, {67746, -0x1C}, {66748, -0x18}, {361002262, -0x10}, {361002263, -0xC}, {361002264, -0x8}, {361002263, -0x4}, {45724, 0xC}, {45726, 0x10}, {45725, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45687, -0x24}, {45685, -0x20}, {45687, -0x1C}, {45686, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82260, -0x24}, {82258, -0x20}, {82260, -0x1C}, {82259, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30202001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {51248, -0x24}, {51246, -0x20}, {51248, -0x1C}, {51247, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {67507, -0x24}, {66749, -0x20}, {67507, -0x1C}, {66750, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82890, -0x24}, {82888, -0x20}, {82890, -0x1C}, {82889, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82887, -0x24}, {82885, -0x20}, {82887, -0x1C}, {82886, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82884, -0x24}, {82882, -0x20}, {82884, -0x1C}, {82883, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82257, -0x24}, {82255, -0x20}, {82257, -0x1C}, {82256, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45681, -0x24}, {82877, -0x20}, {45681, -0x1C}, {82878, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{45700, -0x30}, {45702, -0x2C}, {45701, -0x28}, {67744, -0x24}, {66741, -0x20}, {67744, -0x1C}, {66742, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {51252, 0xC}, {51254, 0x10}, {51253, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{51252, -0x30}, {51254, -0x2C}, {51253, -0x28}, {67745, -0x24}, {66743, -0x20}, {67745, -0x1C}, {67471, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'AK47 Mythic lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {9, -16}} -- Skin
    ck2 = {{100233, 4}, {10107146, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107201, 0}, {9, -16}} -- Skin
    ck2 = {{100233, 4}, {10107146, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {10107001, 0x40}}
    ck2 = {{10107146, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {0, 0x18}, {300119, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10107001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400007, 0x20}, {200126, 0x24}, {800039, 0x28}, {32, 0x2C}, {35, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{66737, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30313001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82254, -0x24}, {82252, -0x20}, {82254, -0x1C}, {82253, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45696, -0x24}, {45694, -0x20}, {45696, -0x1C}, {45695, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45693, -0x24}, {45691, -0x20}, {45693, -0x1C}, {45692, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901027, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{51240, -0x30}, {51242, -0x2C}, {51241, -0x28}, {67746, -0x24}, {66747, -0x20}, {67746, -0x1C}, {66748, -0x18}, {361002262, -0x10}, {361002263, -0xC}, {361002264, -0x8}, {361002263, -0x4}, {45724, 0xC}, {45726, 0x10}, {45725, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45687, -0x24}, {45685, -0x20}, {45687, -0x1C}, {45686, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82260, -0x24}, {82258, -0x20}, {82260, -0x1C}, {82259, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30202001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {51248, -0x24}, {51246, -0x20}, {51248, -0x1C}, {51247, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {67507, -0x24}, {66749, -0x20}, {67507, -0x1C}, {66750, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82890, -0x24}, {82888, -0x20}, {82890, -0x1C}, {82889, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82887, -0x24}, {82885, -0x20}, {82887, -0x1C}, {82886, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82884, -0x24}, {82882, -0x20}, {82884, -0x1C}, {82883, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82257, -0x24}, {82255, -0x20}, {82257, -0x1C}, {82256, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45681, -0x24}, {82877, -0x20}, {45681, -0x1C}, {82878, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{45700, -0x30}, {45702, -0x2C}, {45701, -0x28}, {67744, -0x24}, {66741, -0x20}, {67744, -0x1C}, {66742, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {51252, 0xC}, {51254, 0x10}, {51253, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{51252, -0x30}, {51254, -0x2C}, {51253, -0x28}, {67745, -0x24}, {66743, -0x20}, {67745, -0x1C}, {67471, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002263, 0}, {100524, 0x40}} --Attachment
    ck2 = {{361002270, -48}, {361002271, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361002272, -4}, {0, 8}, {361002358, 28}, {361002359, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'AK47 Mythic lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {9, -16}} -- Skin
    ck2 = {{100233, 4}, {10107146, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107201, 0}, {9, -16}} -- Skin
    ck2 = {{100233, 4}, {10107146, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {10107001, 0x40}}
    ck2 = {{10107146, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {0, 0x18}, {300119, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10107001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400007, 0x20}, {200126, 0x24}, {800040, 0x28}, {33, 0x2C}, {36, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{66737, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30313001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82254, -0x24}, {82252, -0x20}, {82254, -0x1C}, {82253, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45696, -0x24}, {45694, -0x20}, {45696, -0x1C}, {45695, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45693, -0x24}, {45691, -0x20}, {45693, -0x1C}, {45692, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901027, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{51240, -0x30}, {51242, -0x2C}, {51241, -0x28}, {67746, -0x24}, {66747, -0x20}, {67746, -0x1C}, {66748, -0x18}, {361002262, -0x10}, {361002263, -0xC}, {361002264, -0x8}, {361002263, -0x4}, {45724, 0xC}, {45726, 0x10}, {45725, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45687, -0x24}, {45685, -0x20}, {45687, -0x1C}, {45686, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82260, -0x24}, {82258, -0x20}, {82260, -0x1C}, {82259, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30202001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {51248, -0x24}, {51246, -0x20}, {51248, -0x1C}, {51247, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {67507, -0x24}, {66749, -0x20}, {67507, -0x1C}, {66750, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82890, -0x24}, {82888, -0x20}, {82890, -0x1C}, {82889, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82887, -0x24}, {82885, -0x20}, {82887, -0x1C}, {82886, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82884, -0x24}, {82882, -0x20}, {82884, -0x1C}, {82883, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82257, -0x24}, {82255, -0x20}, {82257, -0x1C}, {82256, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {45681, -0x24}, {82877, -0x20}, {45681, -0x1C}, {82878, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{45700, -0x30}, {45702, -0x2C}, {45701, -0x28}, {67744, -0x24}, {66741, -0x20}, {67744, -0x1C}, {66742, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {51252, 0xC}, {51254, 0x10}, {51253, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {9, -0x5C}} --Attachment
    ck2 = {{51252, -0x30}, {51254, -0x2C}, {51253, -0x28}, {67745, -0x24}, {66743, -0x20}, {67745, -0x1C}, {67471, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002263, 0}, {100524, 0x40}} --Attachment
    ck2 = {{361002270, -48}, {361002271, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361002272, -4}, {0, 8}, {361002358, 28}, {361002359, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'MK2 Redgun') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10118001, 0}, {32, -16}} -- Skin
    ck2 = {{10162, 4}, {10118002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10118201, 0}, {32, -16}} -- Skin
    ck2 = {{10162, 4}, {10118002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10118001, 0}, {1880000001, 0x14}, {10118001, 0x40}}
    ck2 = {{10118002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10118001, 0}, {1880000001, 0x14}, {0, 0x18}, {300039, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10118001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10118001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400001, 0x20}, {200048, 0x24}, {300039, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10118001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010177, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101017, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007210, -0x24}, {160007209, -0x20}, {160007210, -0x1C}, {201015550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101016, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007212, -0x24}, {160007211, -0x20}, {160007212, -0x1C}, {201015551, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007255, -0x24}, {160007254, -0x20}, {160007255, -0x1C}, {201015574, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303003, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007219, -0x24}, {160007218, -0x20}, {160007219, -0x1C}, {201015556, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007247, -0x24}, {160007246, -0x20}, {160007247, -0x1C}, {201015570, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401006, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007245, -0x24}, {160007244, -0x20}, {160007245, -0x1C}, {201015569, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501013, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007253, -0x24}, {160007252, -0x20}, {160007253, -0x1C}, {201015573, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501012, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007251, -0x24}, {160007250, -0x20}, {160007251, -0x1C}, {201015572, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501010, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007249, -0x24}, {160007248, -0x20}, {160007249, -0x1C}, {201015571, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007243, -0x24}, {160007242, -0x20}, {160007243, -0x1C}, {201015568, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901019, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007201, -0x30}, {160007207, -0x2C}, {201015547, -0x28}, {160007233, -0x24}, {160007232, -0x20}, {160007233, -0x1C}, {201015563, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007234, 0xC}, {160007235, 0x10}, {201015564, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901018, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007201, -0x30}, {160007207, -0x2C}, {201015547, -0x28}, {160007237, -0x24}, {160007236, -0x20}, {160007237, -0x1C}, {201015565, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007238, 0xC}, {160007239, 0x10}, {201015566, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901017, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007228, -0x30}, {160007229, -0x2C}, {201015561, -0x28}, {160007227, -0x24}, {160007226, -0x20}, {160007227, -0x1C}, {201015560, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007230, 0xC}, {160007231, 0x10}, {201015562, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901016, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007201, -0x30}, {160007207, -0x2C}, {201015547, -0x28}, {160007241, -0x24}, {160007240, -0x20}, {160007241, -0x1C}, {201015567, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007230, 0xC}, {160007231, 0x10}, {201015562, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007213, -0x24}, {72935, -0x20}, {160007213, -0x1C}, {201015552, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001006, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007214, -0x24}, {0, -0x20}, {160007214, -0x1C}, {201015553, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001005, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007215, -0x24}, {0, -0x20}, {160007215, -0x1C}, {201015554, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901015, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007222, -0x30}, {160007223, -0x2C}, {201015558, -0x28}, {160007221, -0x24}, {160007220, -0x20}, {160007221, -0x1C}, {201015557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007224, 0xC}, {160007225, 0x10}, {201015559, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'MK2 Redgun lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10118001, 0}, {32, -16}} -- Skin
    ck2 = {{10162, 4}, {10118002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10118201, 0}, {32, -16}} -- Skin
    ck2 = {{10162, 4}, {10118002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10118001, 0}, {1880000001, 0x14}, {10118001, 0x40}}
    ck2 = {{10118002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10118001, 0}, {1880000001, 0x14}, {0, 0x18}, {300039, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10118001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10118001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400001, 0x20}, {200048, 0x24}, {800006, 0x28}, {1, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10118001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010177, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101017, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007210, -0x24}, {160007209, -0x20}, {160007210, -0x1C}, {201015550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101016, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007212, -0x24}, {160007211, -0x20}, {160007212, -0x1C}, {201015551, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007255, -0x24}, {160007254, -0x20}, {160007255, -0x1C}, {201015574, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303003, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007219, -0x24}, {160007218, -0x20}, {160007219, -0x1C}, {201015556, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007247, -0x24}, {160007246, -0x20}, {160007247, -0x1C}, {201015570, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401006, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007245, -0x24}, {160007244, -0x20}, {160007245, -0x1C}, {201015569, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501013, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007253, -0x24}, {160007252, -0x20}, {160007253, -0x1C}, {201015573, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501012, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007251, -0x24}, {160007250, -0x20}, {160007251, -0x1C}, {201015572, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501010, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007249, -0x24}, {160007248, -0x20}, {160007249, -0x1C}, {201015571, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007243, -0x24}, {160007242, -0x20}, {160007243, -0x1C}, {201015568, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901019, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007201, -0x30}, {160007207, -0x2C}, {201015547, -0x28}, {160007233, -0x24}, {160007232, -0x20}, {160007233, -0x1C}, {201015563, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007234, 0xC}, {160007235, 0x10}, {201015564, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901018, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007201, -0x30}, {160007207, -0x2C}, {201015547, -0x28}, {160007237, -0x24}, {160007236, -0x20}, {160007237, -0x1C}, {201015565, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007238, 0xC}, {160007239, 0x10}, {201015566, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901017, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007228, -0x30}, {160007229, -0x2C}, {201015561, -0x28}, {160007227, -0x24}, {160007226, -0x20}, {160007227, -0x1C}, {201015560, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007230, 0xC}, {160007231, 0x10}, {201015562, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901016, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007201, -0x30}, {160007207, -0x2C}, {201015547, -0x28}, {160007241, -0x24}, {160007240, -0x20}, {160007241, -0x1C}, {201015567, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007230, 0xC}, {160007231, 0x10}, {201015562, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007213, -0x24}, {72935, -0x20}, {160007213, -0x1C}, {201015552, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001006, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007214, -0x24}, {0, -0x20}, {160007214, -0x1C}, {201015553, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001005, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160007215, -0x24}, {0, -0x20}, {160007215, -0x1C}, {201015554, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901015, 0}, {0, 0x24}, {32, -0x5C}} --Attachment
    ck2 = {{160007222, -0x30}, {160007223, -0x2C}, {201015558, -0x28}, {160007221, -0x24}, {160007220, -0x20}, {160007221, -0x1C}, {201015557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160007224, 0xC}, {160007225, 0x10}, {201015559, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{310000711, 0}, {73, 0x40}} --Attachment
    ck2 = {{310000712, -48}, {310000714, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {310000713, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
     if (skin == 'ASVAL Redgun') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {34, -16}} -- Skin
    ck2 = {{10306, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120201, 0}, {34, -16}} -- Skin
    ck2 = {{10306, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {10120001, 0x40}}
    ck2 = {{10120002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {0, 0x18}, {300049, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10120001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200056, 0x24}, {300049, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010262, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008789, -0x24}, {160008788, -0x20}, {160008789, -0x1C}, {201016390, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008787, -0x24}, {160008786, -0x20}, {160008787, -0x1C}, {201016389, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30316001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008785, -0x24}, {160008784, -0x20}, {160008785, -0x1C}, {201016388, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901022, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008782, -0x30}, {160008783, -0x2C}, {201016387, -0x28}, {160008781, -0x24}, {160008780, -0x20}, {160008781, -0x1C}, {201016386, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901021, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008778, -0x30}, {160008779, -0x2C}, {201016385, -0x28}, {160008777, -0x24}, {160008776, -0x20}, {160008777, -0x1C}, {201016384, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901020, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008774, -0x30}, {160008775, -0x2C}, {201016383, -0x28}, {160008773, -0x24}, {160008772, -0x20}, {160008773, -0x1C}, {201016382, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008803, -0x24}, {160008802, -0x20}, {160008803, -0x1C}, {201016397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008801, -0x24}, {160008800, -0x20}, {160008801, -0x1C}, {201016396, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008799, -0x24}, {160008798, -0x20}, {160008799, -0x1C}, {201016395, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008797, -0x24}, {160008796, -0x20}, {160008797, -0x1C}, {201016394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008795, -0x24}, {160008794, -0x20}, {160008795, -0x1C}, {201016393, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008793, -0x24}, {160008792, -0x20}, {160008793, -0x1C}, {201016392, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008791, -0x24}, {160008790, -0x20}, {160008791, -0x1C}, {201016391, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009110, -0x24}, {160009109, -0x20}, {160009110, -0x1C}, {201016558, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009108, -0x24}, {160009107, -0x20}, {160009108, -0x1C}, {201016557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008789, -0x24}, {160008788, -0x20}, {160008789, -0x1C}, {201016390, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008787, -0x24}, {160008786, -0x20}, {160008787, -0x1C}, {201016389, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30316001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008785, -0x24}, {160008784, -0x20}, {160008785, -0x1C}, {201016388, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901022, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008782, -0x30}, {160008783, -0x2C}, {201016387, -0x28}, {160008781, -0x24}, {160008780, -0x20}, {160008781, -0x1C}, {201016386, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901021, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008778, -0x30}, {160008779, -0x2C}, {201016385, -0x28}, {160008777, -0x24}, {160008776, -0x20}, {160008777, -0x1C}, {201016384, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901020, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008774, -0x30}, {160008775, -0x2C}, {201016383, -0x28}, {160008773, -0x24}, {160008772, -0x20}, {160008773, -0x1C}, {201016382, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008803, -0x24}, {160008802, -0x20}, {160008803, -0x1C}, {201016397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008801, -0x24}, {160008800, -0x20}, {160008801, -0x1C}, {201016396, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008799, -0x24}, {160008798, -0x20}, {160008799, -0x1C}, {201016395, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008797, -0x24}, {160008796, -0x20}, {160008797, -0x1C}, {201016394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008795, -0x24}, {160008794, -0x20}, {160008795, -0x1C}, {201016393, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008793, -0x24}, {160008792, -0x20}, {160008793, -0x1C}, {201016392, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008791, -0x24}, {160008790, -0x20}, {160008791, -0x1C}, {201016391, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009110, -0x24}, {160009109, -0x20}, {160009110, -0x1C}, {201016558, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009108, -0x24}, {160009107, -0x20}, {160009108, -0x1C}, {201016557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'ASVAL Redgun lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {34, -16}} -- Skin
    ck2 = {{10306, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120201, 0}, {34, -16}} -- Skin
    ck2 = {{10306, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {10120001, 0x40}}
    ck2 = {{10120002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {0, 0x18}, {300049, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10120001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200056, 0x24}, {800016, 0x28}, {4, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010262, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008789, -0x24}, {160008788, -0x20}, {160008789, -0x1C}, {201016390, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008787, -0x24}, {160008786, -0x20}, {160008787, -0x1C}, {201016389, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30316001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008785, -0x24}, {160008784, -0x20}, {160008785, -0x1C}, {201016388, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901022, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008782, -0x30}, {160008783, -0x2C}, {201016387, -0x28}, {160008781, -0x24}, {160008780, -0x20}, {160008781, -0x1C}, {201016386, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901021, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008778, -0x30}, {160008779, -0x2C}, {201016385, -0x28}, {160008777, -0x24}, {160008776, -0x20}, {160008777, -0x1C}, {201016384, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901020, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008774, -0x30}, {160008775, -0x2C}, {201016383, -0x28}, {160008773, -0x24}, {160008772, -0x20}, {160008773, -0x1C}, {201016382, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008803, -0x24}, {160008802, -0x20}, {160008803, -0x1C}, {201016397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008801, -0x24}, {160008800, -0x20}, {160008801, -0x1C}, {201016396, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008799, -0x24}, {160008798, -0x20}, {160008799, -0x1C}, {201016395, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008797, -0x24}, {160008796, -0x20}, {160008797, -0x1C}, {201016394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008795, -0x24}, {160008794, -0x20}, {160008795, -0x1C}, {201016393, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008793, -0x24}, {160008792, -0x20}, {160008793, -0x1C}, {201016392, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008791, -0x24}, {160008790, -0x20}, {160008791, -0x1C}, {201016391, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009110, -0x24}, {160009109, -0x20}, {160009110, -0x1C}, {201016558, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009108, -0x24}, {160009107, -0x20}, {160009108, -0x1C}, {201016557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008789, -0x24}, {160008788, -0x20}, {160008789, -0x1C}, {201016390, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008787, -0x24}, {160008786, -0x20}, {160008787, -0x1C}, {201016389, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30316001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008785, -0x24}, {160008784, -0x20}, {160008785, -0x1C}, {201016388, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901022, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008782, -0x30}, {160008783, -0x2C}, {201016387, -0x28}, {160008781, -0x24}, {160008780, -0x20}, {160008781, -0x1C}, {201016386, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901021, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008778, -0x30}, {160008779, -0x2C}, {201016385, -0x28}, {160008777, -0x24}, {160008776, -0x20}, {160008777, -0x1C}, {201016384, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901020, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008774, -0x30}, {160008775, -0x2C}, {201016383, -0x28}, {160008773, -0x24}, {160008772, -0x20}, {160008773, -0x1C}, {201016382, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008803, -0x24}, {160008802, -0x20}, {160008803, -0x1C}, {201016397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008801, -0x24}, {160008800, -0x20}, {160008801, -0x1C}, {201016396, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008799, -0x24}, {160008798, -0x20}, {160008799, -0x1C}, {201016395, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008797, -0x24}, {160008796, -0x20}, {160008797, -0x1C}, {201016394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008795, -0x24}, {160008794, -0x20}, {160008795, -0x1C}, {201016393, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008793, -0x24}, {160008792, -0x20}, {160008793, -0x1C}, {201016392, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008791, -0x24}, {160008790, -0x20}, {160008791, -0x1C}, {201016391, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009110, -0x24}, {160009109, -0x20}, {160009110, -0x1C}, {201016558, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009108, -0x24}, {160009107, -0x20}, {160009108, -0x1C}, {201016557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000052, 0}, {100202, 0x40}} --Attachment
    ck2 = {{361000095, -48}, {361000096, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000097, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'ASVAL Redgun lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {34, -16}} -- Skin
    ck2 = {{10306, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120201, 0}, {34, -16}} -- Skin
    ck2 = {{10306, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {10120001, 0x40}}
    ck2 = {{10120002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {0, 0x18}, {300049, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10120001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200056, 0x24}, {800017, 0x28}, {5, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010262, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008789, -0x24}, {160008788, -0x20}, {160008789, -0x1C}, {201016390, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008787, -0x24}, {160008786, -0x20}, {160008787, -0x1C}, {201016389, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30316001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008785, -0x24}, {160008784, -0x20}, {160008785, -0x1C}, {201016388, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901022, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008782, -0x30}, {160008783, -0x2C}, {201016387, -0x28}, {160008781, -0x24}, {160008780, -0x20}, {160008781, -0x1C}, {201016386, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901021, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008778, -0x30}, {160008779, -0x2C}, {201016385, -0x28}, {160008777, -0x24}, {160008776, -0x20}, {160008777, -0x1C}, {201016384, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901020, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008774, -0x30}, {160008775, -0x2C}, {201016383, -0x28}, {160008773, -0x24}, {160008772, -0x20}, {160008773, -0x1C}, {201016382, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008803, -0x24}, {160008802, -0x20}, {160008803, -0x1C}, {201016397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008801, -0x24}, {160008800, -0x20}, {160008801, -0x1C}, {201016396, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008799, -0x24}, {160008798, -0x20}, {160008799, -0x1C}, {201016395, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008797, -0x24}, {160008796, -0x20}, {160008797, -0x1C}, {201016394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008795, -0x24}, {160008794, -0x20}, {160008795, -0x1C}, {201016393, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008793, -0x24}, {160008792, -0x20}, {160008793, -0x1C}, {201016392, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008791, -0x24}, {160008790, -0x20}, {160008791, -0x1C}, {201016391, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009110, -0x24}, {160009109, -0x20}, {160009110, -0x1C}, {201016558, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009108, -0x24}, {160009107, -0x20}, {160009108, -0x1C}, {201016557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008789, -0x24}, {160008788, -0x20}, {160008789, -0x1C}, {201016390, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008787, -0x24}, {160008786, -0x20}, {160008787, -0x1C}, {201016389, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30316001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008785, -0x24}, {160008784, -0x20}, {160008785, -0x1C}, {201016388, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901022, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008782, -0x30}, {160008783, -0x2C}, {201016387, -0x28}, {160008781, -0x24}, {160008780, -0x20}, {160008781, -0x1C}, {201016386, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901021, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008778, -0x30}, {160008779, -0x2C}, {201016385, -0x28}, {160008777, -0x24}, {160008776, -0x20}, {160008777, -0x1C}, {201016384, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901020, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{160008774, -0x30}, {160008775, -0x2C}, {201016383, -0x28}, {160008773, -0x24}, {160008772, -0x20}, {160008773, -0x1C}, {201016382, -0x18}, {0, -0x10}, {300000184, -0xC}, {0, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008803, -0x24}, {160008802, -0x20}, {160008803, -0x1C}, {201016397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008801, -0x24}, {160008800, -0x20}, {160008801, -0x1C}, {201016396, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008799, -0x24}, {160008798, -0x20}, {160008799, -0x1C}, {201016395, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101003, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008797, -0x24}, {160008796, -0x20}, {160008797, -0x1C}, {201016394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008795, -0x24}, {160008794, -0x20}, {160008795, -0x1C}, {201016393, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008793, -0x24}, {160008792, -0x20}, {160008793, -0x1C}, {201016392, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501007, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160008791, -0x24}, {160008790, -0x20}, {160008791, -0x1C}, {201016391, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009110, -0x24}, {160009109, -0x20}, {160009110, -0x1C}, {201016558, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {34, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160009108, -0x24}, {160009107, -0x20}, {160009108, -0x1C}, {201016557, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000052, 0}, {100202, 0x40}} --Attachment
    ck2 = {{361000095, -48}, {361000096, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000097, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'ASVAL Redgun') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {34, -16}} -- Skin
    ck2 = {{10387, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120201, 0}, {34, -16}} -- Skin
    ck2 = {{10387, 4}, {10120002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {10120001, 0x40}}
    ck2 = {{10120999, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {0, 0x18}, {300049, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10120001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10120001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200056, 0x24}, {300049, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10120001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010303, -0xC}}
    czk(ck1, ck2, 4)
        end
 
    if (skin == 'M13 Forerunner') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122001, 0}, {36, -16}} -- Skin
    ck2 = {{100004, 4}, {10122002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122201, 0}, {36, -16}} -- Skin
    ck2 = {{100004, 4}, {10122002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {10122001, 0x40}}
    ck2 = {{10122002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {0, 0x18}, {300082, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10122001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200089, 0x24}, {300082, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{1175, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2250, -0x24}, {2249, -0x20}, {2250, -0x1C}, {2251, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2247, -0x24}, {2246, -0x20}, {2247, -0x1C}, {2248, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2244, -0x24}, {2243, -0x20}, {2244, -0x1C}, {2245, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2241, -0x24}, {2240, -0x20}, {2241, -0x1C}, {2242, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2235, -0x24}, {2234, -0x20}, {2235, -0x1C}, {2236, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2232, -0x24}, {2231, -0x20}, {2232, -0x1C}, {2233, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2229, -0x24}, {2228, -0x20}, {2229, -0x1C}, {2230, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2226, -0x24}, {2225, -0x20}, {2226, -0x1C}, {2227, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2223, -0x24}, {2222, -0x20}, {2223, -0x1C}, {2224, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2186, -0x30}, {2187, -0x2C}, {2188, -0x28}, {2184, -0x24}, {2183, -0x20}, {2184, -0x1C}, {2185, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {2189, 0xC}, {2190, 0x10}, {2191, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2256, -0x24}, {2255, -0x20}, {2256, -0x1C}, {2257, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2253, -0x24}, {2252, -0x20}, {2253, -0x1C}, {2254, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30317003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {3039, -0x24}, {3038, -0x20}, {3039, -0x1C}, {3040, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30317002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2208, -0x24}, {2207, -0x20}, {2208, -0x1C}, {2209, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2195, -0x30}, {2196, -0x2C}, {2197, -0x28}, {2193, -0x24}, {2192, -0x20}, {2193, -0x1C}, {2194, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {2198, 0xC}, {2199, 0x10}, {2200, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2204, -0x30}, {2205, -0x2C}, {2206, -0x28}, {2202, -0x24}, {2201, -0x20}, {2202, -0x1C}, {2203, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {2237, 0xC}, {2238, 0x10}, {2239, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'M13 Forerunner lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122001, 0}, {36, -16}} -- Skin
    ck2 = {{100004, 4}, {10122002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122201, 0}, {36, -16}} -- Skin
    ck2 = {{100004, 4}, {10122002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {10122001, 0x40}}
    ck2 = {{10122002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {0, 0x18}, {300082, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10122001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200089, 0x24}, {800027, 0x28}, {18, 0x2C}, {38, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{1175, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2250, -0x24}, {2249, -0x20}, {2250, -0x1C}, {2251, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2247, -0x24}, {2246, -0x20}, {2247, -0x1C}, {2248, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2244, -0x24}, {2243, -0x20}, {2244, -0x1C}, {2245, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2241, -0x24}, {2240, -0x20}, {2241, -0x1C}, {2242, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2235, -0x24}, {2234, -0x20}, {2235, -0x1C}, {2236, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2232, -0x24}, {2231, -0x20}, {2232, -0x1C}, {2233, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2229, -0x24}, {2228, -0x20}, {2229, -0x1C}, {2230, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2226, -0x24}, {2225, -0x20}, {2226, -0x1C}, {2227, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2223, -0x24}, {2222, -0x20}, {2223, -0x1C}, {2224, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2186, -0x30}, {2187, -0x2C}, {2188, -0x28}, {2184, -0x24}, {2183, -0x20}, {2184, -0x1C}, {2185, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {2189, 0xC}, {2190, 0x10}, {2191, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2256, -0x24}, {2255, -0x20}, {2256, -0x1C}, {2257, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2253, -0x24}, {2252, -0x20}, {2253, -0x1C}, {2254, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30317003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {3039, -0x24}, {3038, -0x20}, {3039, -0x1C}, {3040, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30317002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2208, -0x24}, {2207, -0x20}, {2208, -0x1C}, {2209, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2195, -0x30}, {2196, -0x2C}, {2197, -0x28}, {2193, -0x24}, {2192, -0x20}, {2193, -0x1C}, {2194, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {2198, 0xC}, {2199, 0x10}, {2200, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2204, -0x30}, {2205, -0x2C}, {2206, -0x28}, {2202, -0x24}, {2201, -0x20}, {2202, -0x1C}, {2203, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {2237, 0xC}, {2238, 0x10}, {2239, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000430, 0}, {100472, 0x40}} --Attachment
    ck2 = {{361000436, -48}, {361000437, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000438, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'M13 Forerunner lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122001, 0}, {36, -16}} -- Skin
    ck2 = {{100004, 4}, {10122002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122201, 0}, {36, -16}} -- Skin
    ck2 = {{100004, 4}, {10122002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {10122001, 0x40}}
    ck2 = {{10122002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {0, 0x18}, {300082, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10122001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10122001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400002, 0x20}, {200089, 0x24}, {800028, 0x28}, {19, 0x2C}, {39, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10122001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{1175, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2250, -0x24}, {2249, -0x20}, {2250, -0x1C}, {2251, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2247, -0x24}, {2246, -0x20}, {2247, -0x1C}, {2248, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2244, -0x24}, {2243, -0x20}, {2244, -0x1C}, {2245, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2241, -0x24}, {2240, -0x20}, {2241, -0x1C}, {2242, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2235, -0x24}, {2234, -0x20}, {2235, -0x1C}, {2236, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2232, -0x24}, {2231, -0x20}, {2232, -0x1C}, {2233, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2229, -0x24}, {2228, -0x20}, {2229, -0x1C}, {2230, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2226, -0x24}, {2225, -0x20}, {2226, -0x1C}, {2227, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2223, -0x24}, {2222, -0x20}, {2223, -0x1C}, {2224, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2186, -0x30}, {2187, -0x2C}, {2188, -0x28}, {2184, -0x24}, {2183, -0x20}, {2184, -0x1C}, {2185, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {2189, 0xC}, {2190, 0x10}, {2191, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2256, -0x24}, {2255, -0x20}, {2256, -0x1C}, {2257, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2253, -0x24}, {2252, -0x20}, {2253, -0x1C}, {2254, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30317003, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {3039, -0x24}, {3038, -0x20}, {3039, -0x1C}, {3040, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30317002, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {2208, -0x24}, {2207, -0x20}, {2208, -0x1C}, {2209, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2195, -0x30}, {2196, -0x2C}, {2197, -0x28}, {2193, -0x24}, {2192, -0x20}, {2193, -0x1C}, {2194, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {2198, 0xC}, {2199, 0x10}, {2200, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {36, -0x5C}} --Attachment
    ck2 = {{2204, -0x30}, {2205, -0x2C}, {2206, -0x28}, {2202, -0x24}, {2201, -0x20}, {2202, -0x1C}, {2203, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {2237, 0xC}, {2238, 0x10}, {2239, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000430, 0}, {100472, 0x40}} --Attachment
    ck2 = {{361000436, -48}, {361000437, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000438, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'Kilo141 FallingAngel') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124001, 0}, {38, -16}} -- Skin
    ck2 = {{100155, 4}, {10124002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124201, 0}, {38, -16}} -- Skin
    ck2 = {{100155, 4}, {10124002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {10124001, 0x40}}
    ck2 = {{10124002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {0, 0x18}, {300105, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10124001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400006, 0x20}, {200112, 0x24}, {300105, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{9479, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9548, -0x24}, {9546, -0x20}, {9548, -0x1C}, {9547, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9533, -0x24}, {9531, -0x20}, {9533, -0x1C}, {9532, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101002, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9551, -0x24}, {9549, -0x20}, {9551, -0x1C}, {9550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304009, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9506, -0x24}, {9504, -0x20}, {9506, -0x1C}, {9505, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9509, -0x24}, {9507, -0x20}, {9509, -0x1C}, {9508, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9503, -0x24}, {9501, -0x20}, {9503, -0x1C}, {9502, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9537, -0x30}, {9539, -0x2C}, {9538, -0x28}, {9497, -0x24}, {10380, -0x20}, {9497, -0x1C}, {9719, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {9540, 0xC}, {9542, 0x10}, {9541, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9500, -0x24}, {9498, -0x20}, {9500, -0x1C}, {9499, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9521, -0x24}, {9519, -0x20}, {9521, -0x1C}, {9520, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9524, -0x24}, {9522, -0x20}, {9524, -0x1C}, {9523, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9518, -0x24}, {9516, -0x20}, {9518, -0x1C}, {9517, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9528, -0x30}, {9530, -0x2C}, {9529, -0x28}, {9512, -0x24}, {10381, -0x20}, {9512, -0x1C}, {9718, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9525, -0x30}, {9527, -0x2C}, {9526, -0x28}, {9515, -0x24}, {10382, -0x20}, {9515, -0x1C}, {9717, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9545, -0x24}, {9543, -0x20}, {9545, -0x1C}, {9544, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {67403, -0x24}, {9534, -0x20}, {67403, -0x1C}, {9535, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'Kilo141 FallingAngel lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124001, 0}, {38, -16}} -- Skin
    ck2 = {{100155, 4}, {10124002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124201, 0}, {38, -16}} -- Skin
    ck2 = {{100155, 4}, {10124002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {10124001, 0x40}}
    ck2 = {{10124002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {0, 0x18}, {300105, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10124001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400006, 0x20}, {200112, 0x24}, {800036, 0x28}, {26, 0x2C}, {29, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{9479, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9548, -0x24}, {9546, -0x20}, {9548, -0x1C}, {9547, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9533, -0x24}, {9531, -0x20}, {9533, -0x1C}, {9532, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101002, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9551, -0x24}, {9549, -0x20}, {9551, -0x1C}, {9550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304009, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9506, -0x24}, {9504, -0x20}, {9506, -0x1C}, {9505, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9509, -0x24}, {9507, -0x20}, {9509, -0x1C}, {9508, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9503, -0x24}, {9501, -0x20}, {9503, -0x1C}, {9502, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9537, -0x30}, {9539, -0x2C}, {9538, -0x28}, {9497, -0x24}, {10380, -0x20}, {9497, -0x1C}, {9719, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {9540, 0xC}, {9542, 0x10}, {9541, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9500, -0x24}, {9498, -0x20}, {9500, -0x1C}, {9499, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9521, -0x24}, {9519, -0x20}, {9521, -0x1C}, {9520, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9524, -0x24}, {9522, -0x20}, {9524, -0x1C}, {9523, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9518, -0x24}, {9516, -0x20}, {9518, -0x1C}, {9517, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9528, -0x30}, {9530, -0x2C}, {9529, -0x28}, {9512, -0x24}, {10381, -0x20}, {9512, -0x1C}, {9718, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9525, -0x30}, {9527, -0x2C}, {9526, -0x28}, {9515, -0x24}, {10382, -0x20}, {9515, -0x1C}, {9717, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9545, -0x24}, {9543, -0x20}, {9545, -0x1C}, {9544, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {67403, -0x24}, {9534, -0x20}, {67403, -0x1C}, {9535, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002131, 0}, {100511, 0x40}} --Attachment
    ck2 = {{361002139, -48}, {361002140, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361002141, -4}, {361002173, 8}, {361002186, 28}, {361002187, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'Kilo141 FallingAngel lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124001, 0}, {38, -16}} -- Skin
    ck2 = {{100155, 4}, {10124002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124201, 0}, {38, -16}} -- Skin
    ck2 = {{100155, 4}, {10124002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {10124001, 0x40}}
    ck2 = {{10124002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {0, 0x18}, {300105, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10124001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10124001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400006, 0x20}, {200112, 0x24}, {800037, 0x28}, {27, 0x2C}, {30, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10124001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{9479, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9548, -0x24}, {9546, -0x20}, {9548, -0x1C}, {9547, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9533, -0x24}, {9531, -0x20}, {9533, -0x1C}, {9532, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101002, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9551, -0x24}, {9549, -0x20}, {9551, -0x1C}, {9550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304009, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9506, -0x24}, {9504, -0x20}, {9506, -0x1C}, {9505, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9509, -0x24}, {9507, -0x20}, {9509, -0x1C}, {9508, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9503, -0x24}, {9501, -0x20}, {9503, -0x1C}, {9502, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9537, -0x30}, {9539, -0x2C}, {9538, -0x28}, {9497, -0x24}, {10380, -0x20}, {9497, -0x1C}, {9719, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {9540, 0xC}, {9542, 0x10}, {9541, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9500, -0x24}, {9498, -0x20}, {9500, -0x1C}, {9499, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9521, -0x24}, {9519, -0x20}, {9521, -0x1C}, {9520, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9524, -0x24}, {9522, -0x20}, {9524, -0x1C}, {9523, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9518, -0x24}, {9516, -0x20}, {9518, -0x1C}, {9517, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9528, -0x30}, {9530, -0x2C}, {9529, -0x28}, {9512, -0x24}, {10381, -0x20}, {9512, -0x1C}, {9718, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{9525, -0x30}, {9527, -0x2C}, {9526, -0x28}, {9515, -0x24}, {10382, -0x20}, {9515, -0x1C}, {9717, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {9545, -0x24}, {9543, -0x20}, {9545, -0x1C}, {9544, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {38, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {67403, -0x24}, {9534, -0x20}, {67403, -0x1C}, {9535, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002131, 0}, {100511, 0x40}} --Attachment
    ck2 = {{361002139, -48}, {361002140, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361002141, -4}, {361002173, 8}, {361002186, 28}, {361002187, 32}}
    czk(ck1, ck2, 4)
    
    end
    
     if (skin == 'Oden Mythic') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125001, 0}, {39, -16}} -- Skin
    ck2 = {{100287, 4}, {10125002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125201, 0}, {39, -16}} -- Skin
    ck2 = {{100287, 4}, {10125002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {10125001, 0x40}}
    ck2 = {{10125002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {0, 0x18}, {300125, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10125001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400008, 0x20}, {200132, 0x24}, {300125, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{70111, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68554, -0x24}, {68552, -0x20}, {68554, -0x1C}, {68553, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201004, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {70104, -0x24}, {70102, -0x20}, {70104, -0x1C}, {70103, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68581, -0x24}, {68579, -0x20}, {68581, -0x1C}, {68580, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68590, -0x24}, {68588, -0x20}, {68590, -0x1C}, {68589, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68587, -0x24}, {68585, -0x20}, {68587, -0x1C}, {68586, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68566, -0x24}, {68564, -0x20}, {68566, -0x1C}, {68565, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68578, -0x24}, {68576, -0x20}, {68578, -0x1C}, {68577, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68548, -0x24}, {68546, -0x20}, {68548, -0x1C}, {68547, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68542, -0x24}, {68540, -0x20}, {68542, -0x1C}, {68541, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68536, -0x24}, {68534, -0x20}, {68536, -0x1C}, {68535, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{68573, -0x30}, {68575, -0x2C}, {68574, -0x28}, {68539, -0x24}, {69848, -0x20}, {68539, -0x1C}, {69685, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70035, 0xC}, {70037, 0x10}, {70036, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{70099, -0x30}, {70101, -0x2C}, {70100, -0x28}, {68560, -0x24}, {68558, -0x20}, {68560, -0x1C}, {68559, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70038, 0xC}, {70040, 0x10}, {70039, 0x14}}
      czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{68567, -0x30}, {68569, -0x2C}, {68568, -0x28}, {68563, -0x24}, {68561, -0x20}, {68563, -0x1C}, {68562, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70041, 0xC}, {70043, 0x10}, {70042, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68557, -0x24}, {68555, -0x20}, {68557, -0x1C}, {68556, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68551, -0x24}, {68549, -0x20}, {68551, -0x1C}, {68550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'Oden Mythic lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125001, 0}, {39, -16}} -- Skin
    ck2 = {{100287, 4}, {10125002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125201, 0}, {39, -16}} -- Skin
    ck2 = {{100287, 4}, {10125002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {10125001, 0x40}}
    ck2 = {{10125002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {0, 0x18}, {300125, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10125001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400008, 0x20}, {200132, 0x24}, {800043, 0x28}, {46, 0x2C}, {44, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{70111, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68554, -0x24}, {68552, -0x20}, {68554, -0x1C}, {68553, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201004, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {70104, -0x24}, {70102, -0x20}, {70104, -0x1C}, {70103, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68581, -0x24}, {68579, -0x20}, {68581, -0x1C}, {68580, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68590, -0x24}, {68588, -0x20}, {68590, -0x1C}, {68589, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68587, -0x24}, {68585, -0x20}, {68587, -0x1C}, {68586, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68566, -0x24}, {68564, -0x20}, {68566, -0x1C}, {68565, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68578, -0x24}, {68576, -0x20}, {68578, -0x1C}, {68577, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68548, -0x24}, {68546, -0x20}, {68548, -0x1C}, {68547, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68542, -0x24}, {68540, -0x20}, {68542, -0x1C}, {68541, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68536, -0x24}, {68534, -0x20}, {68536, -0x1C}, {68535, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{68573, -0x30}, {68575, -0x2C}, {68574, -0x28}, {68539, -0x24}, {69848, -0x20}, {68539, -0x1C}, {69685, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70035, 0xC}, {70037, 0x10}, {70036, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{70099, -0x30}, {70101, -0x2C}, {70100, -0x28}, {68560, -0x24}, {68558, -0x20}, {68560, -0x1C}, {68559, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70038, 0xC}, {70040, 0x10}, {70039, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{68567, -0x30}, {68569, -0x2C}, {68568, -0x28}, {68563, -0x24}, {68561, -0x20}, {68563, -0x1C}, {68562, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70041, 0xC}, {70043, 0x10}, {70042, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68557, -0x24}, {68555, -0x20}, {68557, -0x1C}, {68556, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68551, -0x24}, {68549, -0x20}, {68551, -0x1C}, {68550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002408, 0}, {100542, 0x40}} --Attachment
    ck2 = {{0, -48}, {0, -44}, {0, -40}, {0, -36}, {0, -32}, {0, -28}, {0, -4}, {0, 8}, {0, 28}, {0, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'Oden Mythic lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125001, 0}, {39, -16}} -- Skin
    ck2 = {{100287, 4}, {10125002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125201, 0}, {39, -16}} -- Skin
    ck2 = {{100287, 4}, {10125002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {10125001, 0x40}}
    ck2 = {{10125002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {0, 0x18}, {300125, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10125001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10125001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400008, 0x20}, {200132, 0x24}, {800044, 0x28}, {47, 0x2C}, {45, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10125001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{70111, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68554, -0x24}, {68552, -0x20}, {68554, -0x1C}, {68553, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201004, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {70104, -0x24}, {70102, -0x20}, {70104, -0x1C}, {70103, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68581, -0x24}, {68579, -0x20}, {68581, -0x1C}, {68580, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68590, -0x24}, {68588, -0x20}, {68590, -0x1C}, {68589, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68587, -0x24}, {68585, -0x20}, {68587, -0x1C}, {68586, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68566, -0x24}, {68564, -0x20}, {68566, -0x1C}, {68565, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68578, -0x24}, {68576, -0x20}, {68578, -0x1C}, {68577, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68548, -0x24}, {68546, -0x20}, {68548, -0x1C}, {68547, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68542, -0x24}, {68540, -0x20}, {68542, -0x1C}, {68541, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68536, -0x24}, {68534, -0x20}, {68536, -0x1C}, {68535, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{68573, -0x30}, {68575, -0x2C}, {68574, -0x28}, {68539, -0x24}, {69848, -0x20}, {68539, -0x1C}, {69685, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70035, 0xC}, {70037, 0x10}, {70036, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{70099, -0x30}, {70101, -0x2C}, {70100, -0x28}, {68560, -0x24}, {68558, -0x20}, {68560, -0x1C}, {68559, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70038, 0xC}, {70040, 0x10}, {70039, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{68567, -0x30}, {68569, -0x2C}, {68568, -0x28}, {68563, -0x24}, {68561, -0x20}, {68563, -0x1C}, {68562, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {70041, 0xC}, {70043, 0x10}, {70042, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68557, -0x24}, {68555, -0x20}, {68557, -0x1C}, {68556, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {39, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {68551, -0x24}, {68549, -0x20}, {68551, -0x1C}, {68550, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002408, 0}, {100542, 0x40}} --Attachment
    ck2 = {{0, -48}, {0, -44}, {0, -40}, {0, -36}, {0, -32}, {0, -28}, {0, -4}, {0, 8}, {0, 28}, {0, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'Krig6 IceDrake') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126001, 0}, {40, -16}} -- Skin
    ck2 = {{100416, 4}, {10126002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126201, 0}, {40, -16}} -- Skin
    ck2 = {{100416, 4}, {10126002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {10126001, 0x40}}
    ck2 = {{10126002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {0, 0x18}, {300150, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10126001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400010, 0x20}, {200157, 0x24}, {300150, 0x28}, {3, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{74474, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75017, -0x24}, {75015, -0x20}, {75017, -0x1C}, {75016, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74488, -0x30}, {74490, -0x2C}, {74489, -0x28}, {74484, -0x24}, {74482, -0x20}, {74484, -0x1C}, {74483, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {75491, 0xC}, {75493, 0x10}, {75492, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901017, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74442, -0x30}, {74413, -0x2C}, {74412, -0x28}, {74409, -0x24}, {74436, -0x20}, {74409, -0x1C}, {74408, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {74444, 0xC}, {74417, 0x10}, {74416, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74441, -0x30}, {74415, -0x2C}, {74414, -0x28}, {74407, -0x24}, {74440, -0x20}, {74407, -0x1C}, {74406, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {74443, 0xC}, {74419, 0x10}, {74418, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74493, -0x24}, {74491, -0x20}, {74493, -0x1C}, {74492, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303003, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74487, -0x24}, {74485, -0x20}, {74487, -0x1C}, {74486, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501011, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74405, -0x24}, {74439, -0x20}, {74405, -0x1C}, {74404, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74478, -0x24}, {74476, -0x20}, {74478, -0x1C}, {74477, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75020, -0x24}, {75018, -0x20}, {75020, -0x1C}, {75019, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74438, -0x24}, {74437, -0x20}, {74438, -0x1C}, {74410, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74481, -0x24}, {74479, -0x20}, {74481, -0x1C}, {74480, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'Krig6 IceDrake lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126001, 0}, {40, -16}} -- Skin
    ck2 = {{100416, 4}, {10126002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126201, 0}, {40, -16}} -- Skin
    ck2 = {{100416, 4}, {10126002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {10126001, 0x40}}
    ck2 = {{10126002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {0, 0x18}, {300150, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10126001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400010, 0x20}, {200157, 0x24}, {500062, 0x28}, {54, 0x2C}, {57, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{74474, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75017, -0x24}, {75015, -0x20}, {75017, -0x1C}, {75016, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74488, -0x30}, {74490, -0x2C}, {74489, -0x28}, {74484, -0x24}, {74482, -0x20}, {74484, -0x1C}, {74483, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {75491, 0xC}, {75493, 0x10}, {75492, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901017, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74442, -0x30}, {74413, -0x2C}, {74412, -0x28}, {74409, -0x24}, {74436, -0x20}, {74409, -0x1C}, {74408, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {74444, 0xC}, {74417, 0x10}, {74416, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74441, -0x30}, {74415, -0x2C}, {74414, -0x28}, {74407, -0x24}, {74440, -0x20}, {74407, -0x1C}, {74406, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {74443, 0xC}, {74419, 0x10}, {74418, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74493, -0x24}, {74491, -0x20}, {74493, -0x1C}, {74492, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303003, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74487, -0x24}, {74485, -0x20}, {74487, -0x1C}, {74486, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501011, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74405, -0x24}, {74439, -0x20}, {74405, -0x1C}, {74404, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74478, -0x24}, {74476, -0x20}, {74478, -0x1C}, {74477, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75020, -0x24}, {75018, -0x20}, {75020, -0x1C}, {75019, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74438, -0x24}, {74437, -0x20}, {74438, -0x1C}, {74410, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74481, -0x24}, {74479, -0x20}, {74481, -0x1C}, {74480, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002725, 0}, {100583, 0x40}} --Attachment
    ck2 = {{361002733, -48}, {361002734, -44}, {361002785, -40}, {361002786, -36}, {361002736, -32}, {361002737, -28}, {361002735, -4}, {0, 8}, {361002727, 28}, {361002728, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'Krig6 IceDrake lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126001, 0}, {40, -16}} -- Skin
    ck2 = {{100416, 4}, {10126002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126201, 0}, {40, -16}} -- Skin
    ck2 = {{100416, 4}, {10126002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {10126001, 0x40}}
    ck2 = {{10126002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {0, 0x18}, {300150, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10126001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10126001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400010, 0x20}, {200157, 0x24}, {500063, 0x28}, {55, 0x2C}, {58, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10126001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{74474, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75017, -0x24}, {75015, -0x20}, {75017, -0x1C}, {75016, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74488, -0x30}, {74490, -0x2C}, {74489, -0x28}, {74484, -0x24}, {74482, -0x20}, {74484, -0x1C}, {74483, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {75491, 0xC}, {75493, 0x10}, {75492, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901017, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74442, -0x30}, {74413, -0x2C}, {74412, -0x28}, {74409, -0x24}, {74436, -0x20}, {74409, -0x1C}, {74408, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {74444, 0xC}, {74417, 0x10}, {74416, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{74441, -0x30}, {74415, -0x2C}, {74414, -0x28}, {74407, -0x24}, {74440, -0x20}, {74407, -0x1C}, {74406, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {74443, 0xC}, {74419, 0x10}, {74418, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74493, -0x24}, {74491, -0x20}, {74493, -0x1C}, {74492, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303003, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74487, -0x24}, {74485, -0x20}, {74487, -0x1C}, {74486, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501011, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74405, -0x24}, {74439, -0x20}, {74405, -0x1C}, {74404, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74478, -0x24}, {74476, -0x20}, {74478, -0x1C}, {74477, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75020, -0x24}, {75018, -0x20}, {75020, -0x1C}, {75019, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74438, -0x24}, {74437, -0x20}, {74438, -0x1C}, {74410, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {40, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74481, -0x24}, {74479, -0x20}, {74481, -0x1C}, {74480, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002725, 0}, {100583, 0x40}} --Attachment
    ck2 = {{361002733, -48}, {361002734, -44}, {361002785, -40}, {361002786, -36}, {361002736, -32}, {361002737, -28}, {361002735, -4}, {0, 8}, {361002727, 28}, {361002728, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'EM2 Redgun') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127001, 0}, {41, -16}} -- Skin
    ck2 = {{100450, 4}, {10127002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127201, 0}, {41, -16}} -- Skin
    ck2 = {{100450, 4}, {10127002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {10127001, 0x40}}
    ck2 = {{10127002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {0, 0x18}, {300153, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10127001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400011, 0x20}, {200160, 0x24}, {300153, 0x28}, {6, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{77567, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75715, -0x24}, {75713, -0x20}, {75715, -0x1C}, {75714, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901024, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{75704, -0x30}, {75706, -0x2C}, {75705, -0x28}, {75682, -0x24}, {75680, -0x20}, {75682, -0x1C}, {75681, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75697, -0x24}, {75695, -0x20}, {75697, -0x1C}, {75696, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75685, -0x24}, {75683, -0x20}, {75685, -0x1C}, {75684, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75718, -0x24}, {75716, -0x20}, {75718, -0x1C}, {75717, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101033, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75709, -0x24}, {75707, -0x20}, {75709, -0x1C}, {75708, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75700, -0x24}, {75698, -0x20}, {75700, -0x1C}, {75699, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75694, -0x24}, {75692, -0x20}, {75694, -0x1C}, {75693, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75691, -0x24}, {77570, -0x20}, {75691, -0x1C}, {77571, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901032, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{75701, -0x30}, {75703, -0x2C}, {75702, -0x28}, {75688, -0x24}, {75686, -0x20}, {75688, -0x1C}, {75687, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'EM2 Redgun lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127001, 0}, {41, -16}} -- Skin
    ck2 = {{100450, 4}, {10127002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127201, 0}, {41, -16}} -- Skin
    ck2 = {{100450, 4}, {10127002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {10127001, 0x40}}
    ck2 = {{10127002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {0, 0x18}, {300153, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10127001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400011, 0x20}, {200160, 0x24}, {800003, 0x28}, {59, 0x2C}, {61, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{77567, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75715, -0x24}, {75713, -0x20}, {75715, -0x1C}, {75714, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901024, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{75704, -0x30}, {75706, -0x2C}, {75705, -0x28}, {75682, -0x24}, {75680, -0x20}, {75682, -0x1C}, {75681, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75697, -0x24}, {75695, -0x20}, {75697, -0x1C}, {75696, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75685, -0x24}, {75683, -0x20}, {75685, -0x1C}, {75684, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75718, -0x24}, {75716, -0x20}, {75718, -0x1C}, {75717, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101033, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75709, -0x24}, {75707, -0x20}, {75709, -0x1C}, {75708, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75700, -0x24}, {75698, -0x20}, {75700, -0x1C}, {75699, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75694, -0x24}, {75692, -0x20}, {75694, -0x1C}, {75693, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75691, -0x24}, {77570, -0x20}, {75691, -0x1C}, {77571, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901032, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{75701, -0x30}, {75703, -0x2C}, {75702, -0x28}, {75688, -0x24}, {75686, -0x20}, {75688, -0x1C}, {75687, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002906, 0}, {100603, 0x40}} --Attachment
    ck2 = {{361002908, -48}, {361002909, -44}, {361002924, -40}, {361002926, -36}, {361002923, -32}, {361002925, -28}, {361002910, -4}, {0, 8}, {361002919, 28}, {361002920, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'EM2 Redgun lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127001, 0}, {41, -16}} -- Skin
    ck2 = {{100450, 4}, {10127002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127201, 0}, {41, -16}} -- Skin
    ck2 = {{100450, 4}, {10127002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {10127001, 0x40}}
    ck2 = {{10127002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {0, 0x18}, {300153, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10127001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10127001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400011, 0x20}, {200160, 0x24}, {800004, 0x28}, {60, 0x2C}, {62, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10127001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{77567, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75715, -0x24}, {75713, -0x20}, {75715, -0x1C}, {75714, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901024, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{75704, -0x30}, {75706, -0x2C}, {75705, -0x28}, {75682, -0x24}, {75680, -0x20}, {75682, -0x1C}, {75681, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75697, -0x24}, {75695, -0x20}, {75697, -0x1C}, {75696, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75685, -0x24}, {75683, -0x20}, {75685, -0x1C}, {75684, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75718, -0x24}, {75716, -0x20}, {75718, -0x1C}, {75717, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101033, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75709, -0x24}, {75707, -0x20}, {75709, -0x1C}, {75708, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001007, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75700, -0x24}, {75698, -0x20}, {75700, -0x1C}, {75699, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75694, -0x24}, {75692, -0x20}, {75694, -0x1C}, {75693, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {75691, -0x24}, {77570, -0x20}, {75691, -0x1C}, {77571, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901032, 0}, {0, 0x24}, {41, -0x5C}} --Attachment
    ck2 = {{75701, -0x30}, {75703, -0x2C}, {75702, -0x28}, {75688, -0x24}, {75686, -0x20}, {75688, -0x1C}, {75687, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002906, 0}, {100603, 0x40}} --Attachment
    ck2 = {{361002908, -48}, {361002909, -44}, {361002924, -40}, {361002926, -36}, {361002923, -32}, {361002925, -28}, {361002910, -4}, {0, 8}, {361002919, 28}, {361002920, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'FFAR1CW BrightBlade') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129001, 0}, {43, -16}} -- Skin
    ck2 = {{100646, 4}, {10129002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129201, 0}, {43, -16}} -- Skin
    ck2 = {{100646, 4}, {10129002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {10129001, 0x40}}
    ck2 = {{10129002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {0, 0x18}, {300189, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10129001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400014, 0x20}, {200196, 0x24}, {300189, 0x28}, {22, 0x2C}, {40, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84281, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303002, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82813, -0x24}, {82811, -0x20}, {82813, -0x1C}, {82812, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501013, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82807, -0x24}, {82805, -0x20}, {82807, -0x1C}, {82806, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501011, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82810, -0x24}, {82808, -0x20}, {82810, -0x1C}, {82809, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901046, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84293, -0x24}, {84291, -0x20}, {84293, -0x1C}, {84292, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001016, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84054, -0x24}, {84052, -0x20}, {84054, -0x1C}, {84053, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001005, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82862, -0x24}, {82860, -0x20}, {82862, -0x1C}, {86444, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901044, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84290, -0x24}, {84288, -0x20}, {84290, -0x1C}, {84289, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901045, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84287, -0x24}, {84285, -0x20}, {84287, -0x1C}, {84286, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82825, -0x24}, {82823, -0x20}, {82825, -0x1C}, {82824, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82822, -0x24}, {82820, -0x20}, {82822, -0x1C}, {82821, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101033, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82828, -0x24}, {82826, -0x20}, {82828, -0x1C}, {82827, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'FFAR1CW BrightBlade lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129001, 0}, {43, -16}} -- Skin
    ck2 = {{100646, 4}, {10129002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129201, 0}, {43, -16}} -- Skin
    ck2 = {{100646, 4}, {10129002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {10129001, 0x40}}
    ck2 = {{10129002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {0, 0x18}, {300189, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10129001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400014, 0x20}, {200196, 0x24}, {800030, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84281, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303002, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82813, -0x24}, {82811, -0x20}, {82813, -0x1C}, {82812, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501013, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82807, -0x24}, {82805, -0x20}, {82807, -0x1C}, {82806, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501011, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82810, -0x24}, {82808, -0x20}, {82810, -0x1C}, {82809, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901046, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84293, -0x24}, {84291, -0x20}, {84293, -0x1C}, {84292, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001016, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84054, -0x24}, {84052, -0x20}, {84054, -0x1C}, {84053, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001005, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82862, -0x24}, {82860, -0x20}, {82862, -0x1C}, {86444, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901044, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84290, -0x24}, {84288, -0x20}, {84290, -0x1C}, {84289, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901045, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84287, -0x24}, {84285, -0x20}, {84287, -0x1C}, {84286, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82825, -0x24}, {82823, -0x20}, {82825, -0x1C}, {82824, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82822, -0x24}, {82820, -0x20}, {82822, -0x1C}, {82821, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101033, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82828, -0x24}, {82826, -0x20}, {82828, -0x1C}, {82827, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003502, 0}, {100651, 0x40}} --Attachment
    ck2 = {{361003514, -48}, {361003515, -44}, {361003518, -40}, {361003520, -36}, {361003517, -32}, {361003519, -28}, {361003516, -4}, {0, 8}, {361003504, 28}, {361003505, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'FFAR1CW BrightBlade lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129001, 0}, {43, -16}} -- Skin
    ck2 = {{100646, 4}, {10129002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129201, 0}, {43, -16}} -- Skin
    ck2 = {{100646, 4}, {10129002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {10129001, 0x40}}
    ck2 = {{10129002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {0, 0x18}, {300189, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10129001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10129001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400014, 0x20}, {200196, 0x24}, {800034, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10129001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84281, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30303002, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82813, -0x24}, {82811, -0x20}, {82813, -0x1C}, {82812, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501013, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82807, -0x24}, {82805, -0x20}, {82807, -0x1C}, {82806, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501011, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82810, -0x24}, {82808, -0x20}, {82810, -0x1C}, {82809, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901046, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84293, -0x24}, {84291, -0x20}, {84293, -0x1C}, {84292, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001016, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84054, -0x24}, {84052, -0x20}, {84054, -0x1C}, {84053, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001005, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82862, -0x24}, {82860, -0x20}, {82862, -0x1C}, {86444, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901044, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84290, -0x24}, {84288, -0x20}, {84290, -0x1C}, {84289, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901045, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {84287, -0x24}, {84285, -0x20}, {84287, -0x1C}, {84286, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101031, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82825, -0x24}, {82823, -0x20}, {82825, -0x1C}, {82824, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201008, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82822, -0x24}, {82820, -0x20}, {82822, -0x1C}, {82821, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101033, 0}, {0, 0x24}, {43, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {82828, -0x24}, {82826, -0x20}, {82828, -0x1C}, {82827, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003502, 0}, {100651, 0x40}} --Attachment
    ck2 = {{361003514, -48}, {361003515, -44}, {361003518, -40}, {361003520, -36}, {361003517, -32}, {361003519, -28}, {361003516, -4}, {0, 8}, {361003504, 28}, {361003505, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'GRAU556 SBT') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130001, 0}, {44, -16}} -- Skin
    ck2 = {{100846, 4}, {10130012, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130201, 0}, {44, -16}} -- Skin
    ck2 = {{100846, 4}, {10130012, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {10130001, 0x40}}
    ck2 = {{10130012, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {0, 0x18}, {300221, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10130001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400017, 0x20}, {200231, 0x24}, {300221, 0x28}, {0, 0x2C}, {43, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{91113, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89328, -0x24}, {89326, -0x20}, {89328, -0x1C}, {89327, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89319, -0x24}, {89317, -0x20}, {89319, -0x1C}, {89318, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89310, -0x24}, {89308, -0x20}, {89310, -0x1C}, {89309, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89307, -0x24}, {89305, -0x20}, {89307, -0x1C}, {89306, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901047, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89314, -0x30}, {89316, -0x2C}, {89315, -0x28}, {89304, -0x24}, {89302, -0x20}, {89304, -0x1C}, {89303, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {89329, 0xC}, {89331, 0x10}, {89330, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901049, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89311, -0x30}, {89313, -0x2C}, {89312, -0x28}, {89301, -0x24}, {89299, -0x20}, {89301, -0x1C}, {89300, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89298, -0x24}, {89296, -0x20}, {89298, -0x1C}, {89297, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89295, -0x24}, {89293, -0x20}, {89295, -0x1C}, {89294, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89292, -0x24}, {89290, -0x20}, {89292, -0x1C}, {89291, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901048, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89320, -0x30}, {89322, -0x2C}, {89321, -0x28}, {89289, -0x24}, {89287, -0x20}, {89289, -0x1C}, {89288, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89286, -0x24}, {89284, -0x20}, {89286, -0x1C}, {89285, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'GRAU556 SBT lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130001, 0}, {44, -16}} -- Skin
    ck2 = {{100846, 4}, {10130012, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130201, 0}, {44, -16}} -- Skin
    ck2 = {{100846, 4}, {10130012, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {10130001, 0x40}}
    ck2 = {{10130012, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {0, 0x18}, {300221, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10130001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400017, 0x20}, {200231, 0x24}, {500029, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{91113, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89328, -0x24}, {89326, -0x20}, {89328, -0x1C}, {89327, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89319, -0x24}, {89317, -0x20}, {89319, -0x1C}, {89318, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89310, -0x24}, {89308, -0x20}, {89310, -0x1C}, {89309, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89307, -0x24}, {89305, -0x20}, {89307, -0x1C}, {89306, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901047, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89314, -0x30}, {89316, -0x2C}, {89315, -0x28}, {89304, -0x24}, {89302, -0x20}, {89304, -0x1C}, {89303, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {89329, 0xC}, {89331, 0x10}, {89330, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901049, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89311, -0x30}, {89313, -0x2C}, {89312, -0x28}, {89301, -0x24}, {89299, -0x20}, {89301, -0x1C}, {89300, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89298, -0x24}, {89296, -0x20}, {89298, -0x1C}, {89297, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89295, -0x24}, {89293, -0x20}, {89295, -0x1C}, {89294, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89292, -0x24}, {89290, -0x20}, {89292, -0x1C}, {89291, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901048, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89320, -0x30}, {89322, -0x2C}, {89321, -0x28}, {89289, -0x24}, {89287, -0x20}, {89289, -0x1C}, {89288, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89286, -0x24}, {89284, -0x20}, {89286, -0x1C}, {89285, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004469, 0}, {100705, 0x40}} --Attachment
    ck2 = {{361004484, -48}, {361004485, -44}, {361004488, -40}, {361004490, -36}, {361004487, -32}, {361004489, -28}, {361004486, -4}, {0, 8}, {361004471, 28}, {361004472, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'GRAU556 SBT lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130001, 0}, {44, -16}} -- Skin
    ck2 = {{100846, 4}, {10130012, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130201, 0}, {44, -16}} -- Skin
    ck2 = {{100846, 4}, {10130012, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {10130001, 0x40}}
    ck2 = {{10130012, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {0, 0x18}, {300221, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10130001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10130001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400017, 0x20}, {200231, 0x24}, {500030, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10130001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{91113, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89328, -0x24}, {89326, -0x20}, {89328, -0x1C}, {89327, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89319, -0x24}, {89317, -0x20}, {89319, -0x1C}, {89318, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301002, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89310, -0x24}, {89308, -0x20}, {89310, -0x1C}, {89309, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89307, -0x24}, {89305, -0x20}, {89307, -0x1C}, {89306, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901047, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89314, -0x30}, {89316, -0x2C}, {89315, -0x28}, {89304, -0x24}, {89302, -0x20}, {89304, -0x1C}, {89303, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {89329, 0xC}, {89331, 0x10}, {89330, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901049, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89311, -0x30}, {89313, -0x2C}, {89312, -0x28}, {89301, -0x24}, {89299, -0x20}, {89301, -0x1C}, {89300, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89298, -0x24}, {89296, -0x20}, {89298, -0x1C}, {89297, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89295, -0x24}, {89293, -0x20}, {89295, -0x1C}, {89294, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89292, -0x24}, {89290, -0x20}, {89292, -0x1C}, {89291, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901048, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{89320, -0x30}, {89322, -0x2C}, {89321, -0x28}, {89289, -0x24}, {89287, -0x20}, {89289, -0x1C}, {89288, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {44, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {89286, -0x24}, {89284, -0x20}, {89286, -0x1C}, {89285, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004469, 0}, {100705, 0x40}} --Attachment
    ck2 = {{361004484, -48}, {361004485, -44}, {361004488, -40}, {361004490, -36}, {361004487, -32}, {361004489, -28}, {361004486, -4}, {0, 8}, {361004471, 28}, {361004472, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'TYPE19X Ink') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132001, 0}, {46, -16}} -- Skin
    ck2 = {{100894, 4}, {10132002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132201, 0}, {46, -16}} -- Skin
    ck2 = {{100894, 4}, {10132002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {10132001, 0x40}}
    ck2 = {{10132002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {0, 0x18}, {300231, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10132001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400018, 0x20}, {200241, 0x24}, {300231, 0x28}, {0, 0x2C}, {51, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{93180, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101040, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91302, -0x24}, {92847, -0x20}, {91302, -0x1C}, {92848, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302003, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91272, -0x24}, {93190, -0x20}, {91272, -0x1C}, {93191, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001022, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91275, -0x24}, {92839, -0x20}, {91275, -0x1C}, {92840, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501025, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91266, -0x24}, {92853, -0x20}, {91266, -0x1C}, {92854, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901052, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{91288, -0x30}, {91290, -0x2C}, {91289, -0x28}, {91269, -0x24}, {92837, -0x20}, {91269, -0x1C}, {92838, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {91241, 0xC}, {91261, 0x10}, {91251, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30807002, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91284, -0x24}, {93299, -0x20}, {91284, -0x1C}, {92844, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901053, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{91291, -0x30}, {91293, -0x2C}, {91292, -0x28}, {91287, -0x24}, {93188, -0x20}, {91287, -0x1C}, {93189, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {91241, 0xC}, {91261, 0x10}, {91251, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301006, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91278, -0x24}, {92841, -0x20}, {91278, -0x1C}, {92842, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501023, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91281, -0x24}, {93186, -0x20}, {91281, -0x1C}, {93187, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201010, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91299, -0x24}, {92849, -0x20}, {91299, -0x1C}, {92850, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91296, -0x24}, {92845, -0x20}, {91296, -0x1C}, {92846, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'TYPE19X Ink lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132001, 0}, {46, -16}} -- Skin
    ck2 = {{100894, 4}, {10132002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132201, 0}, {46, -16}} -- Skin
    ck2 = {{100894, 4}, {10132002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {10132001, 0x40}}
    ck2 = {{10132002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {0, 0x18}, {300231, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10132001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400018, 0x20}, {200241, 0x24}, {500031, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{93180, -0xC}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101040, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91302, -0x24}, {92847, -0x20}, {91302, -0x1C}, {92848, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302003, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91272, -0x24}, {93190, -0x20}, {91272, -0x1C}, {93191, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001022, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91275, -0x24}, {92839, -0x20}, {91275, -0x1C}, {92840, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501025, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91266, -0x24}, {92853, -0x20}, {91266, -0x1C}, {92854, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901052, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{91288, -0x30}, {91290, -0x2C}, {91289, -0x28}, {91269, -0x24}, {92837, -0x20}, {91269, -0x1C}, {92838, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {91241, 0xC}, {91261, 0x10}, {91251, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30807002, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91284, -0x24}, {93299, -0x20}, {91284, -0x1C}, {92844, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901053, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{91291, -0x30}, {91293, -0x2C}, {91292, -0x28}, {91287, -0x24}, {93188, -0x20}, {91287, -0x1C}, {93189, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {91241, 0xC}, {91261, 0x10}, {91251, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301006, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91278, -0x24}, {92841, -0x20}, {91278, -0x1C}, {92842, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501023, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91281, -0x24}, {93186, -0x20}, {91281, -0x1C}, {93187, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201010, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91299, -0x24}, {92849, -0x20}, {91299, -0x1C}, {92850, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91296, -0x24}, {92845, -0x20}, {91296, -0x1C}, {92846, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004776, 0}, {100872, 0x40}} --Attachment
    ck2 = {{361004789, -48}, {361004790, -44}, {361004779, -40}, {361004781, -36}, {361004778, -32}, {361004780, -28}, {361004791, -4}, {0, 8}, {361004975, 28}, {361004976, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'TYPE19X Ink lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132001, 0}, {46, -16}} -- Skin
    ck2 = {{100894, 4}, {10132002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132201, 0}, {46, -16}} -- Skin
    ck2 = {{100894, 4}, {10132002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {10132001, 0x40}}
    ck2 = {{10132002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {0, 0x18}, {300231, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10132001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10132001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400018, 0x20}, {200241, 0x24}, {500032, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10132001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{93180, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101040, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91302, -0x24}, {92847, -0x20}, {91302, -0x1C}, {92848, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302003, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91272, -0x24}, {93190, -0x20}, {91272, -0x1C}, {93191, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001022, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91275, -0x24}, {92839, -0x20}, {91275, -0x1C}, {92840, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501025, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91266, -0x24}, {92853, -0x20}, {91266, -0x1C}, {92854, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901052, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{91288, -0x30}, {91290, -0x2C}, {91289, -0x28}, {91269, -0x24}, {92837, -0x20}, {91269, -0x1C}, {92838, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {91241, 0xC}, {91261, 0x10}, {91251, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30807002, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91284, -0x24}, {93299, -0x20}, {91284, -0x1C}, {92844, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901053, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{91291, -0x30}, {91293, -0x2C}, {91292, -0x28}, {91287, -0x24}, {93188, -0x20}, {91287, -0x1C}, {93189, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {91241, 0xC}, {91261, 0x10}, {91251, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301006, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91278, -0x24}, {92841, -0x20}, {91278, -0x1C}, {92842, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501023, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91281, -0x24}, {93186, -0x20}, {91281, -0x1C}, {93187, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201010, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91299, -0x24}, {92849, -0x20}, {91299, -0x1C}, {92850, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {46, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {91296, -0x24}, {92845, -0x20}, {91296, -0x1C}, {92846, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004776, 0}, {100872, 0x40}} --Attachment
    ck2 = {{361004789, -48}, {361004790, -44}, {361004779, -40}, {361004781, -36}, {361004778, -32}, {361004780, -28}, {361004791, -4}, {0, 8}, {361004975, 28}, {361004976, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'F2000 StarEnergy') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133001, 0}, {47, -16}} -- Skin
    ck2 = {{101052, 4}, {10133002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133201, 0}, {47, -16}} -- Skin
    ck2 = {{101052, 4}, {10133002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {10133001, 0x40}}
    ck2 = {{10133002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {0, 0x18}, {300252, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10133001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400020, 0x20}, {200262, 0x24}, {300252, 0x28}, {0, 0x2C}, {65, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{97745, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305011, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96680, -0x24}, {96678, -0x20}, {96680, -0x1C}, {96679, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{96935, -0x30}, {96937, -0x2C}, {96936, -0x28}, {97754, -0x24}, {96932, -0x20}, {97754, -0x1C}, {96933, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901032, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{96938, -0x30}, {96940, -0x2C}, {96939, -0x28}, {97755, -0x24}, {97604, -0x20}, {97755, -0x1C}, {97605, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304007, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96683, -0x24}, {96681, -0x20}, {96683, -0x1C}, {96682, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501028, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {97753, -0x24}, {97751, -0x20}, {97753, -0x1C}, {97752, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208005, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96689, -0x24}, {96687, -0x20}, {96689, -0x1C}, {96688, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96686, -0x24}, {96684, -0x20}, {96686, -0x1C}, {96685, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96698, -0x24}, {96696, -0x20}, {96698, -0x1C}, {96697, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001027, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96677, -0x24}, {96675, -0x20}, {96677, -0x1C}, {96676, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001023, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96674, -0x24}, {96672, -0x20}, {96674, -0x1C}, {96673, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96701, -0x24}, {96699, -0x20}, {96701, -0x1C}, {96700, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'F2000 StarEnergy lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133001, 0}, {47, -16}} -- Skin
    ck2 = {{101052, 4}, {10133002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133201, 0}, {47, -16}} -- Skin
    ck2 = {{101052, 4}, {10133002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {10133001, 0x40}}
    ck2 = {{10133002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {0, 0x18}, {300252, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10133001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400020, 0x20}, {200262, 0x24}, {500041, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{97745, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305011, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96680, -0x24}, {96678, -0x20}, {96680, -0x1C}, {96679, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{96935, -0x30}, {96937, -0x2C}, {96936, -0x28}, {97754, -0x24}, {96932, -0x20}, {97754, -0x1C}, {96933, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901032, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{96938, -0x30}, {96940, -0x2C}, {96939, -0x28}, {97755, -0x24}, {97604, -0x20}, {97755, -0x1C}, {97605, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304007, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96683, -0x24}, {96681, -0x20}, {96683, -0x1C}, {96682, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501028, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {97753, -0x24}, {97751, -0x20}, {97753, -0x1C}, {97752, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208005, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96689, -0x24}, {96687, -0x20}, {96689, -0x1C}, {96688, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96686, -0x24}, {96684, -0x20}, {96686, -0x1C}, {96685, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96698, -0x24}, {96696, -0x20}, {96698, -0x1C}, {96697, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001027, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96677, -0x24}, {96675, -0x20}, {96677, -0x1C}, {96676, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001023, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96674, -0x24}, {96672, -0x20}, {96674, -0x1C}, {96673, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96701, -0x24}, {96699, -0x20}, {96701, -0x1C}, {96700, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361005300, 0}, {100913, 0x40}} --Attachment
    ck2 = {{361005299, -48}, {361005300, -44}, {361005382, -40}, {361005383, -36}, {361005381, -32}, {361005431, -28}, {361005301, -4}, {0, 8}, {361005429, 28}, {361005430, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'F2000 StarEnergy lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133001, 0}, {47, -16}} -- Skin
    ck2 = {{101052, 4}, {10133002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133201, 0}, {47, -16}} -- Skin
    ck2 = {{101052, 4}, {10133002, 8}}
    czk(ck1, ck2, 4)
    
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {10133001, 0x40}}
    ck2 = {{10133002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {0, 0x18}, {300252, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10133001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10133001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400020, 0x20}, {200262, 0x24}, {500042, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10133001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{97745, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305011, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96680, -0x24}, {96678, -0x20}, {96680, -0x1C}, {96679, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{96935, -0x30}, {96937, -0x2C}, {96936, -0x28}, {97754, -0x24}, {96932, -0x20}, {97754, -0x1C}, {96933, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901032, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{96938, -0x30}, {96940, -0x2C}, {96939, -0x28}, {97755, -0x24}, {97604, -0x20}, {97755, -0x1C}, {97605, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304007, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96683, -0x24}, {96681, -0x20}, {96683, -0x1C}, {96682, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501028, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {97753, -0x24}, {97751, -0x20}, {97753, -0x1C}, {97752, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208005, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96689, -0x24}, {96687, -0x20}, {96689, -0x1C}, {96688, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96686, -0x24}, {96684, -0x20}, {96686, -0x1C}, {96685, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401008, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96698, -0x24}, {96696, -0x20}, {96698, -0x1C}, {96697, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001027, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96677, -0x24}, {96675, -0x20}, {96677, -0x1C}, {96676, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001023, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96674, -0x24}, {96672, -0x20}, {96674, -0x1C}, {96673, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {47, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {96701, -0x24}, {96699, -0x20}, {96701, -0x1C}, {96700, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361005300, 0}, {100913, 0x40}} --Attachment
    ck2 = {{361005299, -48}, {361005300, -44}, {361005382, -40}, {361005383, -36}, {361005381, -32}, {361005431, -28}, {361005301, -4}, {0, 8}, {361005429, 28}, {361005430, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'DLQ33 LotusFlames') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{100531, 4}, {10207155, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{100531, 4}, {10207155, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207155, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300168, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400012, 0x20}, {200175, 0x24}, {300168, 0x28}, {10, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{79116, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78864, -0x24}, {78862, -0x20}, {78864, -0x1C}, {78863, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{78877, -0x30}, {78879, -0x2C}, {78878, -0x28}, {78861, -0x24}, {78859, -0x20}, {78861, -0x1C}, {78860, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {79123, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{78880, -0x30}, {78882, -0x2C}, {78881, -0x28}, {78858, -0x24}, {78856, -0x20}, {78858, -0x1C}, {78857, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {79121, 0xC}, {0, 0x10}, {79122, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78855, -0x24}, {78853, -0x20}, {78855, -0x1C}, {78854, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78852, -0x24}, {78850, -0x20}, {78852, -0x1C}, {78851, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78849, -0x24}, {78847, -0x20}, {78849, -0x1C}, {78848, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30204001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78888, -0x24}, {78886, -0x20}, {78888, -0x1C}, {78887, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201002, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78885, -0x24}, {78883, -0x20}, {78885, -0x1C}, {78884, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78876, -0x24}, {78874, -0x20}, {78876, -0x1C}, {78875, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78873, -0x24}, {78871, -0x20}, {78873, -0x1C}, {78872, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30325001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78867, -0x24}, {78865, -0x20}, {78867, -0x1C}, {78866, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'DLQ33 LotusFlames lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{100531, 4}, {10207155, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{100531, 4}, {10207155, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207155, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300168, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400012, 0x20}, {200175, 0x24}, {300024, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{79116, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78864, -0x24}, {78862, -0x20}, {78864, -0x1C}, {78863, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{78877, -0x30}, {78879, -0x2C}, {78878, -0x28}, {78861, -0x24}, {78859, -0x20}, {78861, -0x1C}, {78860, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {79123, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{78880, -0x30}, {78882, -0x2C}, {78881, -0x28}, {78858, -0x24}, {78856, -0x20}, {78858, -0x1C}, {78857, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {79121, 0xC}, {0, 0x10}, {79122, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78855, -0x24}, {78853, -0x20}, {78855, -0x1C}, {78854, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78852, -0x24}, {78850, -0x20}, {78852, -0x1C}, {78851, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78849, -0x24}, {78847, -0x20}, {78849, -0x1C}, {78848, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30204001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78888, -0x24}, {78886, -0x20}, {78888, -0x1C}, {78887, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201002, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78885, -0x24}, {78883, -0x20}, {78885, -0x1C}, {78884, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78876, -0x24}, {78874, -0x20}, {78876, -0x1C}, {78875, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78873, -0x24}, {78871, -0x20}, {78873, -0x1C}, {78872, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30325001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78867, -0x24}, {78865, -0x20}, {78867, -0x1C}, {78866, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003092, 0}, {100612, 0x40}} --Attachment
    ck2 = {{361003107, -48}, {361003108, -44}, {361003111, -40}, {361003113, -36}, {361003110, -32}, {361003112, -28}, {361003109, -4}, {361003236, 8}, {361003094, 28}, {361003095, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'DLQ33 LotusFlames lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{100531, 4}, {10207155, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{100531, 4}, {10207155, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207155, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300168, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400012, 0x20}, {200175, 0x24}, {300025, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{79116, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78864, -0x24}, {78862, -0x20}, {78864, -0x1C}, {78863, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901004, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{78877, -0x30}, {78879, -0x2C}, {78878, -0x28}, {78861, -0x24}, {78859, -0x20}, {78861, -0x1C}, {78860, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {79123, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{78880, -0x30}, {78882, -0x2C}, {78881, -0x28}, {78858, -0x24}, {78856, -0x20}, {78858, -0x1C}, {78857, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {79121, 0xC}, {0, 0x10}, {79122, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78855, -0x24}, {78853, -0x20}, {78855, -0x1C}, {78854, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78852, -0x24}, {78850, -0x20}, {78852, -0x1C}, {78851, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78849, -0x24}, {78847, -0x20}, {78849, -0x1C}, {78848, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30204001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78888, -0x24}, {78886, -0x20}, {78888, -0x1C}, {78887, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201002, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78885, -0x24}, {78883, -0x20}, {78885, -0x1C}, {78884, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78876, -0x24}, {78874, -0x20}, {78876, -0x1C}, {78875, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78873, -0x24}, {78871, -0x20}, {78873, -0x1C}, {78872, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30325001, 0}, {0, 0x24}, {1035, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {78867, -0x24}, {78865, -0x20}, {78867, -0x1C}, {78866, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003092, 0}, {100612, 0x40}} --Attachment
    ck2 = {{361003107, -48}, {361003108, -44}, {361003111, -40}, {361003113, -36}, {361003110, -32}, {361003112, -28}, {361003109, -4}, {361003236, 8}, {361003094, 28}, {361003095, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'AMR Redgun') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211001, 0}, {1039, -16}} -- Skin
    ck2 = {{10899, 4}, {10211002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211201, 0}, {1039, -16}} -- Skin
    ck2 = {{10899, 4}, {10211002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {10211001, 0x40}}
    ck2 = {{10211002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {0, 0x18}, {300072, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10211001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400004, 0x20}, {200080, 0x24}, {300072, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010444, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501006, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013489, -0x24}, {160013488, -0x20}, {160013489, -0x1C}, {201018897, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013493, -0x24}, {160013492, -0x20}, {160013493, -0x1C}, {201018899, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013491, -0x24}, {160013490, -0x20}, {160013491, -0x1C}, {201018898, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013482, -0x30}, {160013483, -0x2C}, {201018894, -0x28}, {160013481, -0x24}, {160013480, -0x20}, {160013481, -0x1C}, {201018893, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160013484, 0xC}, {160013485, 0x10}, {201018895, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30204001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013507, -0x24}, {160013506, -0x20}, {160013507, -0x1C}, {201018906, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013527, -0x24}, {160013526, -0x20}, {160013527, -0x1C}, {201018916, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30319001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013525, -0x24}, {160013524, -0x20}, {160013525, -0x1C}, {201018915, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30308001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013523, -0x24}, {160013522, -0x20}, {160013523, -0x1C}, {201018914, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013519, -0x24}, {160013518, -0x20}, {160013519, -0x1C}, {201018912, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013521, -0x24}, {160013520, -0x20}, {160013521, -0x1C}, {201018913, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013517, -0x24}, {160013516, -0x20}, {160013517, -0x1C}, {201018911, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013515, -0x24}, {160013514, -0x20}, {160013515, -0x1C}, {201018910, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013510, -0x30}, {160013511, -0x2C}, {201018908, -0x28}, {160013509, -0x24}, {160013508, -0x20}, {160013509, -0x1C}, {201018907, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160013512, 0xC}, {160013513, 0x10}, {201018909, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013504, -0x30}, {160013505, -0x2C}, {201018905, -0x28}, {160013503, -0x24}, {160013502, -0x20}, {160013503, -0x1C}, {201018904, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30808003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013487, -0x24}, {160013486, -0x20}, {160013487, -0x1C}, {201018896, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'AMR Redgun lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211001, 0}, {1039, -16}} -- Skin
    ck2 = {{10899, 4}, {10211002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211201, 0}, {1039, -16}} -- Skin
    ck2 = {{10899, 4}, {10211002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {10211001, 0x40}}
    ck2 = {{10211002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {0, 0x18}, {300072, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10211001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400004, 0x20}, {200080, 0x24}, {800024, 0x28}, {11, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010444, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501006, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013489, -0x24}, {160013488, -0x20}, {160013489, -0x1C}, {201018897, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013493, -0x24}, {160013492, -0x20}, {160013493, -0x1C}, {201018899, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013491, -0x24}, {160013490, -0x20}, {160013491, -0x1C}, {201018898, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013482, -0x30}, {160013483, -0x2C}, {201018894, -0x28}, {160013481, -0x24}, {160013480, -0x20}, {160013481, -0x1C}, {201018893, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160013484, 0xC}, {160013485, 0x10}, {201018895, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30204001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013507, -0x24}, {160013506, -0x20}, {160013507, -0x1C}, {201018906, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013527, -0x24}, {160013526, -0x20}, {160013527, -0x1C}, {201018916, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30319001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013525, -0x24}, {160013524, -0x20}, {160013525, -0x1C}, {201018915, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30308001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013523, -0x24}, {160013522, -0x20}, {160013523, -0x1C}, {201018914, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013519, -0x24}, {160013518, -0x20}, {160013519, -0x1C}, {201018912, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013521, -0x24}, {160013520, -0x20}, {160013521, -0x1C}, {201018913, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013517, -0x24}, {160013516, -0x20}, {160013517, -0x1C}, {201018911, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013515, -0x24}, {160013514, -0x20}, {160013515, -0x1C}, {201018910, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013510, -0x30}, {160013511, -0x2C}, {201018908, -0x28}, {160013509, -0x24}, {160013508, -0x20}, {160013509, -0x1C}, {201018907, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160013512, 0xC}, {160013513, 0x10}, {201018909, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013504, -0x30}, {160013505, -0x2C}, {201018905, -0x28}, {160013503, -0x24}, {160013502, -0x20}, {160013503, -0x1C}, {201018904, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30808003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013487, -0x24}, {160013486, -0x20}, {160013487, -0x1C}, {201018896, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000311, 0}, {100415, 0x40}} --Attachment
    ck2 = {{361000171, -48}, {361000172, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000173, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'AMR Redgun lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211001, 0}, {1039, -16}} -- Skin
    ck2 = {{10899, 4}, {10211002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211201, 0}, {1039, -16}} -- Skin
    ck2 = {{10899, 4}, {10211002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {10211001, 0x40}}
    ck2 = {{10211002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {0, 0x18}, {300072, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10211001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10211001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400004, 0x20}, {200080, 0x24}, {800025, 0x28}, {12, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10211001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010444, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501006, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013489, -0x24}, {160013488, -0x20}, {160013489, -0x1C}, {201018897, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013493, -0x24}, {160013492, -0x20}, {160013493, -0x1C}, {201018899, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013491, -0x24}, {160013490, -0x20}, {160013491, -0x1C}, {201018898, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013482, -0x30}, {160013483, -0x2C}, {201018894, -0x28}, {160013481, -0x24}, {160013480, -0x20}, {160013481, -0x1C}, {201018893, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160013484, 0xC}, {160013485, 0x10}, {201018895, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30204001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013507, -0x24}, {160013506, -0x20}, {160013507, -0x1C}, {201018906, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101012, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013527, -0x24}, {160013526, -0x20}, {160013527, -0x1C}, {201018916, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30319001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013525, -0x24}, {160013524, -0x20}, {160013525, -0x1C}, {201018915, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30308001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013523, -0x24}, {160013522, -0x20}, {160013523, -0x1C}, {201018914, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013519, -0x24}, {160013518, -0x20}, {160013519, -0x1C}, {201018912, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013521, -0x24}, {160013520, -0x20}, {160013521, -0x1C}, {201018913, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013517, -0x24}, {160013516, -0x20}, {160013517, -0x1C}, {201018911, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013515, -0x24}, {160013514, -0x20}, {160013515, -0x1C}, {201018910, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013510, -0x30}, {160013511, -0x2C}, {201018908, -0x28}, {160013509, -0x24}, {160013508, -0x20}, {160013509, -0x1C}, {201018907, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160013512, 0xC}, {160013513, 0x10}, {201018909, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{160013504, -0x30}, {160013505, -0x2C}, {201018905, -0x28}, {160013503, -0x24}, {160013502, -0x20}, {160013503, -0x1C}, {201018904, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30808003, 0}, {0, 0x24}, {1039, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160013487, -0x24}, {160013486, -0x20}, {160013487, -0x1C}, {201018896, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000311, 0}, {100415, 0x40}} --Attachment
    ck2 = {{361000171, -48}, {361000172, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000173, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'Holger26 DarkFrontier') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309001, 0}, {3084, -16}} -- Skin
    ck2 = {{10520, 4}, {10309002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309201, 0}, {3084, -16}} -- Skin
    ck2 = {{10520, 4}, {10309002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {10309001, 0x40}}
    ck2 = {{10309002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {0, 0x18}, {300064, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10309001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400003, 0x20}, {200072, 0x24}, {300064, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
      czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010357, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011506, -0x24}, {160011505, -0x20}, {160011506, -0x1C}, {201017860, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011504, -0x24}, {160011503, -0x20}, {160011504, -0x1C}, {201017859, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011538, -0x24}, {160011781, -0x20}, {160011538, -0x1C}, {201017876, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011536, -0x24}, {160011535, -0x20}, {160011536, -0x1C}, {201017875, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011534, -0x24}, {160011533, -0x20}, {160011534, -0x1C}, {201017874, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501006, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011532, -0x24}, {160011531, -0x20}, {160011532, -0x1C}, {201017873, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011530, -0x24}, {160011529, -0x20}, {160011530, -0x1C}, {201017872, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011528, -0x24}, {160011527, -0x20}, {160011528, -0x1C}, {201017871, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011526, -0x24}, {160011525, -0x20}, {160011526, -0x1C}, {201017870, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011524, -0x24}, {160011523, -0x20}, {160011524, -0x1C}, {201017869, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011522, -0x24}, {160011521, -0x20}, {160011522, -0x1C}, {201017868, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011520, -0x24}, {160011519, -0x20}, {160011520, -0x1C}, {201017867, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011610, -0x24}, {160011609, -0x20}, {160011610, -0x1C}, {201017912, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{160011515, -0x30}, {160011516, -0x2C}, {201017865, -0x28}, {160011514, -0x24}, {160011513, -0x20}, {160011514, -0x1C}, {201017864, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{160011511, -0x30}, {160011512, -0x2C}, {201017863, -0x28}, {160011510, -0x24}, {160011509, -0x20}, {160011510, -0x1C}, {201017862, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011508, -0x24}, {160011507, -0x20}, {160011508, -0x1C}, {201017861, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
            if (skin == 'Holger26 DarkFrontier lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309001, 0}, {3084, -16}} -- Skin
    ck2 = {{10520, 4}, {10309002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309201, 0}, {3084, -16}} -- Skin
    ck2 = {{10520, 4}, {10309002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {10309001, 0x40}}
    ck2 = {{10309002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {0, 0x18}, {300064, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10309001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400003, 0x20}, {200072, 0x24}, {800019, 0x28}, {7, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010357, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011506, -0x24}, {160011505, -0x20}, {160011506, -0x1C}, {201017860, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011504, -0x24}, {160011503, -0x20}, {160011504, -0x1C}, {201017859, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011538, -0x24}, {160011781, -0x20}, {160011538, -0x1C}, {201017876, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011536, -0x24}, {160011535, -0x20}, {160011536, -0x1C}, {201017875, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011534, -0x24}, {160011533, -0x20}, {160011534, -0x1C}, {201017874, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501006, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011532, -0x24}, {160011531, -0x20}, {160011532, -0x1C}, {201017873, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011530, -0x24}, {160011529, -0x20}, {160011530, -0x1C}, {201017872, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011528, -0x24}, {160011527, -0x20}, {160011528, -0x1C}, {201017871, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011526, -0x24}, {160011525, -0x20}, {160011526, -0x1C}, {201017870, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011524, -0x24}, {160011523, -0x20}, {160011524, -0x1C}, {201017869, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011522, -0x24}, {160011521, -0x20}, {160011522, -0x1C}, {201017868, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011520, -0x24}, {160011519, -0x20}, {160011520, -0x1C}, {201017867, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011610, -0x24}, {160011609, -0x20}, {160011610, -0x1C}, {201017912, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{160011515, -0x30}, {160011516, -0x2C}, {201017865, -0x28}, {160011514, -0x24}, {160011513, -0x20}, {160011514, -0x1C}, {201017864, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{160011511, -0x30}, {160011512, -0x2C}, {201017863, -0x28}, {160011510, -0x24}, {160011509, -0x20}, {160011510, -0x1C}, {201017862, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011508, -0x24}, {160011507, -0x20}, {160011508, -0x1C}, {201017861, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000162, 0}, {100380, 0x40}} --Attachment
    ck2 = {{361000193, -48}, {361000194, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000195, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'Holger26 DarkFrontier lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309001, 0}, {3084, -16}} -- Skin
    ck2 = {{10520, 4}, {10309002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309201, 0}, {3084, -16}} -- Skin
    ck2 = {{10520, 4}, {10309002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {10309001, 0x40}}
    ck2 = {{10309002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {0, 0x18}, {300064, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10309001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10309001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400003, 0x20}, {200072, 0x24}, {800020, 0x28}, {9, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10309001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010357, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011506, -0x24}, {160011505, -0x20}, {160011506, -0x1C}, {201017860, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011504, -0x24}, {160011503, -0x20}, {160011504, -0x1C}, {201017859, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011538, -0x24}, {160011781, -0x20}, {160011538, -0x1C}, {201017876, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011536, -0x24}, {160011535, -0x20}, {160011536, -0x1C}, {201017875, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011534, -0x24}, {160011533, -0x20}, {160011534, -0x1C}, {201017874, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501006, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011532, -0x24}, {160011531, -0x20}, {160011532, -0x1C}, {201017873, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011530, -0x24}, {160011529, -0x20}, {160011530, -0x1C}, {201017872, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011528, -0x24}, {160011527, -0x20}, {160011528, -0x1C}, {201017871, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011526, -0x24}, {160011525, -0x20}, {160011526, -0x1C}, {201017870, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011524, -0x24}, {160011523, -0x20}, {160011524, -0x1C}, {201017869, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011522, -0x24}, {160011521, -0x20}, {160011522, -0x1C}, {201017868, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011520, -0x24}, {160011519, -0x20}, {160011520, -0x1C}, {201017867, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011610, -0x24}, {160011609, -0x20}, {160011610, -0x1C}, {201017912, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{160011515, -0x30}, {160011516, -0x2C}, {201017865, -0x28}, {160011514, -0x24}, {160011513, -0x20}, {160011514, -0x1C}, {201017864, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{160011511, -0x30}, {160011512, -0x2C}, {201017863, -0x28}, {160011510, -0x24}, {160011509, -0x20}, {160011510, -0x1C}, {201017862, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {3084, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160011508, -0x24}, {160011507, -0x20}, {160011508, -0x1C}, {201017861, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000162, 0}, {100380, 0x40}} --Attachment
    ck2 = {{361000193, -48}, {361000194, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000195, -4}, {0, 8}, {300000086, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'MG42 Debris') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314001, 0}, {3089, -16}} -- Skin
    ck2 = {{100920, 4}, {10314002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314201, 0}, {3089, -16}} -- Skin
    ck2 = {{100920, 4}, {10314002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {10314001, 0x40}}
    ck2 = {{10314002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {0, 0x18}, {300235, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10314001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400019, 0x20}, {200245, 0x24}, {300235, 0x28}, {0, 0x2C}, {56, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{95785, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208004, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93854, -0x24}, {93852, -0x20}, {93854, -0x1C}, {93853, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208005, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95406, -0x24}, {95404, -0x20}, {95406, -0x1C}, {95405, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001023, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93831, -0x24}, {93829, -0x20}, {93831, -0x1C}, {93830, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501030, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95695, -0x24}, {94774, -0x20}, {95695, -0x1C}, {94775, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001024, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93825, -0x24}, {93823, -0x20}, {93825, -0x1C}, {93824, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305005, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95644, -0x24}, {94799, -0x20}, {95644, -0x1C}, {93827, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501027, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {94779, -0x24}, {94777, -0x20}, {94779, -0x1C}, {95699, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305006, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {94786, -0x24}, {94797, -0x20}, {94786, -0x1C}, {95403, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305004, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93846, -0x24}, {94798, -0x20}, {93846, -0x1C}, {95402, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901059, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{93945, -0x30}, {93947, -0x2C}, {93946, -0x28}, {94176, -0x24}, {94174, -0x20}, {94176, -0x1C}, {94175, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {94431, 0xC}, {94783, 0x10}, {94435, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901057, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{93948, -0x30}, {93950, -0x2C}, {93949, -0x28}, {95692, -0x24}, {95690, -0x20}, {95692, -0x1C}, {95691, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {94431, 0xC}, {94783, 0x10}, {94435, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'MG42 Debris lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314001, 0}, {3089, -16}} -- Skin
    ck2 = {{100920, 4}, {10314002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314201, 0}, {3089, -16}} -- Skin
    ck2 = {{100920, 4}, {10314002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {10314001, 0x40}}
    ck2 = {{10314002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {0, 0x18}, {300235, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10314001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400019, 0x20}, {200245, 0x24}, {500036, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{95785, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208004, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93854, -0x24}, {93852, -0x20}, {93854, -0x1C}, {93853, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208005, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95406, -0x24}, {95404, -0x20}, {95406, -0x1C}, {95405, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001023, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93831, -0x24}, {93829, -0x20}, {93831, -0x1C}, {93830, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501030, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95695, -0x24}, {94774, -0x20}, {95695, -0x1C}, {94775, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001024, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93825, -0x24}, {93823, -0x20}, {93825, -0x1C}, {93824, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305005, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95644, -0x24}, {94799, -0x20}, {95644, -0x1C}, {93827, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501027, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {94779, -0x24}, {94777, -0x20}, {94779, -0x1C}, {95699, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305006, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {94786, -0x24}, {94797, -0x20}, {94786, -0x1C}, {95403, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305004, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93846, -0x24}, {94798, -0x20}, {93846, -0x1C}, {95402, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901059, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{93945, -0x30}, {93947, -0x2C}, {93946, -0x28}, {94176, -0x24}, {94174, -0x20}, {94176, -0x1C}, {94175, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {94431, 0xC}, {94783, 0x10}, {94435, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901057, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{93948, -0x30}, {93950, -0x2C}, {93949, -0x28}, {95692, -0x24}, {95690, -0x20}, {95692, -0x1C}, {95691, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {94431, 0xC}, {94783, 0x10}, {94435, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004802, 0}, {100874, 0x40}} --Attachment
    ck2 = {{361004829, -48}, {361004830, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361004831, -4}, {0, 8}, {300000038, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'MG42 Debris lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314001, 0}, {3089, -16}} -- Skin
    ck2 = {{100920, 4}, {10314002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314201, 0}, {3089, -16}} -- Skin
    ck2 = {{100920, 4}, {10314002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {10314001, 0x40}}
    ck2 = {{10314002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {0, 0x18}, {300235, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10314001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10314001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400019, 0x20}, {200245, 0x24}, {500037, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10314001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{95785, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208004, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93854, -0x24}, {93852, -0x20}, {93854, -0x1C}, {93853, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30208005, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95406, -0x24}, {95404, -0x20}, {95406, -0x1C}, {95405, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001023, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93831, -0x24}, {93829, -0x20}, {93831, -0x1C}, {93830, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501030, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95695, -0x24}, {94774, -0x20}, {95695, -0x1C}, {94775, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001024, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93825, -0x24}, {93823, -0x20}, {93825, -0x1C}, {93824, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305005, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {95644, -0x24}, {94799, -0x20}, {95644, -0x1C}, {93827, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501027, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {94779, -0x24}, {94777, -0x20}, {94779, -0x1C}, {95699, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305006, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {94786, -0x24}, {94797, -0x20}, {94786, -0x1C}, {95403, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30305004, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {93846, -0x24}, {94798, -0x20}, {93846, -0x1C}, {95402, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901059, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{93945, -0x30}, {93947, -0x2C}, {93946, -0x28}, {94176, -0x24}, {94174, -0x20}, {94176, -0x1C}, {94175, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {94431, 0xC}, {94783, 0x10}, {94435, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901057, 0}, {0, 0x24}, {3089, -0x5C}} --Attachment
    ck2 = {{93948, -0x30}, {93950, -0x2C}, {93949, -0x28}, {95692, -0x24}, {95690, -0x20}, {95692, -0x1C}, {95691, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {94431, 0xC}, {94783, 0x10}, {94435, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004802, 0}, {100874, 0x40}} --Attachment
    ck2 = {{361004829, -48}, {361004830, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361004831, -4}, {0, 8}, {300000038, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'QQ9 wakuwaku') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414001, 0}, {2065, -16}} -- Skin
    ck2 = {{100594, 4}, {10414089, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414201, 0}, {2065, -16}} -- Skin
    ck2 = {{100594, 4}, {10414089, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {10414001, 0x40}}
    ck2 = {{10414089, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {0, 0x18}, {300181, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10414001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400013, 0x20}, {200188, 0x24}, {300181, 0x28}, {13, 0x2C}, {37, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{81786, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{80317, -0x30}, {80319, -0x2C}, {80318, -0x28}, {81725, -0x24}, {81723, -0x20}, {81725, -0x1C}, {81724, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {80335, 0xC}, {80337, 0x10}, {80336, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{80314, -0x30}, {80316, -0x2C}, {80315, -0x28}, {81722, -0x24}, {81720, -0x20}, {81722, -0x1C}, {81721, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80303, -0x24}, {80301, -0x20}, {80303, -0x1C}, {80302, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80300, -0x24}, {80298, -0x20}, {80300, -0x1C}, {80299, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {81217, -0x24}, {81215, -0x20}, {81217, -0x1C}, {81216, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80334, -0x24}, {80332, -0x20}, {80334, -0x1C}, {80333, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80331, -0x24}, {80329, -0x20}, {80331, -0x1C}, {80330, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80328, -0x24}, {80326, -0x20}, {80328, -0x1C}, {80327, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {81214, -0x24}, {81212, -0x20}, {81214, -0x1C}, {81213, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {0, -0x24}, {80312, -0x20}, {0, -0x1C}, {81208, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {0, -0x24}, {80310, -0x20}, {0, -0x1C}, {81207, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
           if (skin == 'QQ9 wakuwaku lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414001, 0}, {2065, -16}} -- Skin
    ck2 = {{100594, 4}, {10414089, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414201, 0}, {2065, -16}} -- Skin
    ck2 = {{100594, 4}, {10414089, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {10414001, 0x40}}
    ck2 = {{10414089, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {0, 0x18}, {300181, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10414001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400013, 0x20}, {200188, 0x24}, {300040, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{81786, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{80317, -0x30}, {80319, -0x2C}, {80318, -0x28}, {81725, -0x24}, {81723, -0x20}, {81725, -0x1C}, {81724, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {80335, 0xC}, {80337, 0x10}, {80336, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{80314, -0x30}, {80316, -0x2C}, {80315, -0x28}, {81722, -0x24}, {81720, -0x20}, {81722, -0x1C}, {81721, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80303, -0x24}, {80301, -0x20}, {80303, -0x1C}, {80302, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80300, -0x24}, {80298, -0x20}, {80300, -0x1C}, {80299, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {81217, -0x24}, {81215, -0x20}, {81217, -0x1C}, {81216, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80334, -0x24}, {80332, -0x20}, {80334, -0x1C}, {80333, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80331, -0x24}, {80329, -0x20}, {80331, -0x1C}, {80330, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80328, -0x24}, {80326, -0x20}, {80328, -0x1C}, {80327, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {81214, -0x24}, {81212, -0x20}, {81214, -0x1C}, {81213, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {0, -0x24}, {80312, -0x20}, {0, -0x1C}, {81208, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {0, -0x24}, {80310, -0x20}, {0, -0x1C}, {81207, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003291, 0}, {100635, 0x40}} --Attachment
    ck2 = {{361003295, -48}, {361003296, -44}, {361002573, -40}, {361002664, -36}, {361002572, -32}, {361002574, -28}, {361003297, -4}, {0, 8}, {361002551, 28}, {361002552, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'QQ9 wakuwaku lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414001, 0}, {2065, -16}} -- Skin
    ck2 = {{100594, 4}, {10414089, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414201, 0}, {2065, -16}} -- Skin
    ck2 = {{100594, 4}, {10414089, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {10414001, 0x40}}
    ck2 = {{10414089, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {0, 0x18}, {300181, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10414001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10414001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400013, 0x20}, {200188, 0x24}, {300041, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10414001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{81786, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{80317, -0x30}, {80319, -0x2C}, {80318, -0x28}, {81725, -0x24}, {81723, -0x20}, {81725, -0x1C}, {81724, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {80335, 0xC}, {80337, 0x10}, {80336, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{80314, -0x30}, {80316, -0x2C}, {80315, -0x28}, {81722, -0x24}, {81720, -0x20}, {81722, -0x1C}, {81721, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80303, -0x24}, {80301, -0x20}, {80303, -0x1C}, {80302, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80300, -0x24}, {80298, -0x20}, {80300, -0x1C}, {80299, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {81217, -0x24}, {81215, -0x20}, {81217, -0x1C}, {81216, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80334, -0x24}, {80332, -0x20}, {80334, -0x1C}, {80333, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80331, -0x24}, {80329, -0x20}, {80331, -0x1C}, {80330, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {80328, -0x24}, {80326, -0x20}, {80328, -0x1C}, {80327, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {81214, -0x24}, {81212, -0x20}, {81214, -0x1C}, {81213, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {0, -0x24}, {80312, -0x20}, {0, -0x1C}, {81208, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {2065, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {0, -0x24}, {80310, -0x20}, {0, -0x1C}, {81207, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361003291, 0}, {100635, 0x40}} --Attachment
    ck2 = {{361003295, -48}, {361003296, -44}, {361002573, -40}, {361002664, -36}, {361002572, -32}, {361002574, -28}, {361003297, -4}, {0, 8}, {361002551, 28}, {361002552, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'Fennec Ascended') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415001, 0}, {2066, -16}} -- Skin
    ck2 = {{10582, 4}, {10415002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415201, 0}, {2066, -16}} -- Skin
    ck2 = {{10582, 4}, {10415002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {10415001, 0x40}}
    ck2 = {{10415002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {0, 0x18}, {300026, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10415001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400001, 0x20}, {200032, 0x24}, {300026, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010115, -0xC}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012478, -0x24}, {160012477, -0x20}, {160012478, -0x1C}, {201018365, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30801007, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012476, -0x24}, {160012475, -0x20}, {160012476, -0x1C}, {201018364, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012474, -0x24}, {160012473, -0x20}, {160012474, -0x1C}, {201018363, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401004, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012472, -0x24}, {160012471, -0x20}, {160012472, -0x1C}, {201018362, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012470, -0x24}, {160012469, -0x20}, {160012470, -0x1C}, {201018361, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012468, -0x24}, {160012467, -0x20}, {160012468, -0x1C}, {201018360, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012466, -0x24}, {72146, -0x20}, {160012466, -0x1C}, {201018359, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012465, -0x24}, {72145, -0x20}, {160012465, -0x1C}, {201018358, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012461, -0x30}, {160012462, -0x2C}, {201018356, -0x28}, {160012460, -0x24}, {160012459, -0x20}, {160012460, -0x1C}, {201018355, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160012463, 0xC}, {160012464, 0x10}, {201018357, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012455, -0x30}, {160012456, -0x2C}, {201018353, -0x28}, {160012454, -0x24}, {160012453, -0x20}, {160012454, -0x1C}, {201018352, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012449, -0x30}, {160012450, -0x2C}, {201018350, -0x28}, {160012448, -0x24}, {160012447, -0x20}, {160012448, -0x1C}, {201018349, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012446, -0x24}, {160012445, -0x20}, {160012446, -0x1C}, {201018348, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30314001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012444, -0x24}, {160012443, -0x20}, {160012444, -0x1C}, {201018347, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012442, -0x24}, {160012441, -0x20}, {160012442, -0x1C}, {201018346, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'Fennec Ascended lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415001, 0}, {2066, -16}} -- Skin
    ck2 = {{10582, 4}, {10415002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415201, 0}, {2066, -16}} -- Skin
    ck2 = {{10582, 4}, {10415002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {10415001, 0x40}}
    ck2 = {{10415002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {0, 0x18}, {300026, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10415001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400001, 0x20}, {200032, 0x24}, {500047, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010115, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012478, -0x24}, {160012477, -0x20}, {160012478, -0x1C}, {201018365, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30801007, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012476, -0x24}, {160012475, -0x20}, {160012476, -0x1C}, {201018364, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012474, -0x24}, {160012473, -0x20}, {160012474, -0x1C}, {201018363, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401004, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012472, -0x24}, {160012471, -0x20}, {160012472, -0x1C}, {201018362, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012470, -0x24}, {160012469, -0x20}, {160012470, -0x1C}, {201018361, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012468, -0x24}, {160012467, -0x20}, {160012468, -0x1C}, {201018360, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012466, -0x24}, {72146, -0x20}, {160012466, -0x1C}, {201018359, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012465, -0x24}, {72145, -0x20}, {160012465, -0x1C}, {201018358, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012461, -0x30}, {160012462, -0x2C}, {201018356, -0x28}, {160012460, -0x24}, {160012459, -0x20}, {160012460, -0x1C}, {201018355, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160012463, 0xC}, {160012464, 0x10}, {201018357, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012455, -0x30}, {160012456, -0x2C}, {201018353, -0x28}, {160012454, -0x24}, {160012453, -0x20}, {160012454, -0x1C}, {201018352, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012449, -0x30}, {160012450, -0x2C}, {201018350, -0x28}, {160012448, -0x24}, {160012447, -0x20}, {160012448, -0x1C}, {201018349, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012446, -0x24}, {160012445, -0x20}, {160012446, -0x1C}, {201018348, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30314001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012444, -0x24}, {160012443, -0x20}, {160012444, -0x1C}, {201018347, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012442, -0x24}, {160012441, -0x20}, {160012442, -0x1C}, {201018346, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{310000552, 0}, {100551, 0x40}} --Attachment
    ck2 = {{300000001, -48}, {300000002, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {300000214, -4}, {0, 8}, {300000041, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'Fennec Ascended lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415001, 0}, {2066, -16}} -- Skin
    ck2 = {{10582, 4}, {10415002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415201, 0}, {2066, -16}} -- Skin
    ck2 = {{10582, 4}, {10415002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {10415001, 0x40}}
    ck2 = {{10415002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {0, 0x18}, {300026, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10415001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10415001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400001, 0x20}, {200032, 0x24}, {500050, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10415001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010115, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012478, -0x24}, {160012477, -0x20}, {160012478, -0x1C}, {201018365, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30801007, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012476, -0x24}, {160012475, -0x20}, {160012476, -0x1C}, {201018364, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30804001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012474, -0x24}, {160012473, -0x20}, {160012474, -0x1C}, {201018363, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401004, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012472, -0x24}, {160012471, -0x20}, {160012472, -0x1C}, {201018362, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012470, -0x24}, {160012469, -0x20}, {160012470, -0x1C}, {201018361, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012468, -0x24}, {160012467, -0x20}, {160012468, -0x1C}, {201018360, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012466, -0x24}, {72146, -0x20}, {160012466, -0x1C}, {201018359, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012465, -0x24}, {72145, -0x20}, {160012465, -0x1C}, {201018358, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012461, -0x30}, {160012462, -0x2C}, {201018356, -0x28}, {160012460, -0x24}, {160012459, -0x20}, {160012460, -0x1C}, {201018355, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {160012463, 0xC}, {160012464, 0x10}, {201018357, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012455, -0x30}, {160012456, -0x2C}, {201018353, -0x28}, {160012454, -0x24}, {160012453, -0x20}, {160012454, -0x1C}, {201018352, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{160012449, -0x30}, {160012450, -0x2C}, {201018350, -0x28}, {160012448, -0x24}, {160012447, -0x20}, {160012448, -0x1C}, {201018349, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012446, -0x24}, {160012445, -0x20}, {160012446, -0x1C}, {201018348, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30314001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012444, -0x24}, {160012443, -0x20}, {160012444, -0x1C}, {201018347, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30302001, 0}, {0, 0x24}, {2066, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {160012442, -0x24}, {160012441, -0x20}, {160012442, -0x1C}, {201018346, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{310000552, 0}, {100551, 0x40}} --Attachment
    ck2 = {{300000001, -48}, {300000002, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {300000214, -4}, {0, 8}, {300000041, 28}, {300000089, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'P90 Mythic') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420001, 0}, {2073, -16}} -- Skin
    ck2 = {{100082, 4}, {10420002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420201, 0}, {2073, -16}} -- Skin
    ck2 = {{100082, 4}, {10420002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {10420001, 0x40}}
    ck2 = {{10420002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {0, 0x18}, {300095, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10420001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400005, 0x20}, {200102, 0x24}, {300095, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{7778, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6050, -0x24}, {6048, -0x20}, {6050, -0x1C}, {6049, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6047, -0x24}, {6045, -0x20}, {6047, -0x1C}, {6046, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6044, -0x24}, {6042, -0x20}, {6044, -0x1C}, {6043, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30801001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6041, -0x24}, {6039, -0x20}, {6041, -0x1C}, {6040, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{6069, -0x30}, {6071, -0x2C}, {6070, -0x28}, {6035, -0x24}, {6033, -0x20}, {6035, -0x1C}, {6034, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{6060, -0x30}, {6062, -0x2C}, {6061, -0x28}, {6032, -0x24}, {6030, -0x20}, {6032, -0x1C}, {6031, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6086, -0x24}, {6084, -0x20}, {6086, -0x1C}, {6085, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6083, -0x24}, {6081, -0x20}, {6083, -0x1C}, {6082, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6074, -0x24}, {6072, -0x20}, {6074, -0x1C}, {6073, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6065, -0x24}, {6063, -0x20}, {6065, -0x1C}, {6064, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6059, -0x24}, {6057, -0x20}, {6059, -0x1C}, {6058, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6056, -0x24}, {6054, -0x20}, {6056, -0x1C}, {6055, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6053, -0x24}, {6051, -0x20}, {6053, -0x1C}, {6052, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6080, -0x24}, {6078, -0x20}, {6080, -0x1C}, {6079, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {7812, -0x24}, {7810, -0x20}, {7812, -0x1C}, {7811, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'P90 Mythic lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420001, 0}, {2073, -16}} -- Skin
    ck2 = {{100082, 4}, {10420002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420201, 0}, {2073, -16}} -- Skin
    ck2 = {{100082, 4}, {10420002, 8}}
    czk(ck1, ck2, 4)
    
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {10420001, 0x40}}
    ck2 = {{10420002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {0, 0x18}, {300095, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10420001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400005, 0x20}, {200102, 0x24}, {800032, 0x28}, {20, 0x2C}, {41, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{7778, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6050, -0x24}, {6048, -0x20}, {6050, -0x1C}, {6049, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6047, -0x24}, {6045, -0x20}, {6047, -0x1C}, {6046, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6044, -0x24}, {6042, -0x20}, {6044, -0x1C}, {6043, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30801001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6041, -0x24}, {6039, -0x20}, {6041, -0x1C}, {6040, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{6069, -0x30}, {6071, -0x2C}, {6070, -0x28}, {6035, -0x24}, {6033, -0x20}, {6035, -0x1C}, {6034, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{6060, -0x30}, {6062, -0x2C}, {6061, -0x28}, {6032, -0x24}, {6030, -0x20}, {6032, -0x1C}, {6031, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6086, -0x24}, {6084, -0x20}, {6086, -0x1C}, {6085, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6083, -0x24}, {6081, -0x20}, {6083, -0x1C}, {6082, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6074, -0x24}, {6072, -0x20}, {6074, -0x1C}, {6073, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6065, -0x24}, {6063, -0x20}, {6065, -0x1C}, {6064, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6059, -0x24}, {6057, -0x20}, {6059, -0x1C}, {6058, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6056, -0x24}, {6054, -0x20}, {6056, -0x1C}, {6055, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6053, -0x24}, {6051, -0x20}, {6053, -0x1C}, {6052, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6080, -0x24}, {6078, -0x20}, {6080, -0x1C}, {6079, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {7812, -0x24}, {7810, -0x20}, {7812, -0x1C}, {7811, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000598, 0}, {100495, 0x40}} --Attachment
    ck2 = {{361000602, -48}, {361000603, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000604, -4}, {0, 8}, {361002046, 28}, {361002047, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'P90 Mythic lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420001, 0}, {2073, -16}} -- Skin
    ck2 = {{100082, 4}, {10420002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420201, 0}, {2073, -16}} -- Skin
    ck2 = {{100082, 4}, {10420002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {10420001, 0x40}}
    ck2 = {{10420002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {0, 0x18}, {300095, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10420001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10420001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400005, 0x20}, {200102, 0x24}, {800033, 0x28}, {21, 0x2C}, {42, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10420001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{7778, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6050, -0x24}, {6048, -0x20}, {6050, -0x1C}, {6049, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6047, -0x24}, {6045, -0x20}, {6047, -0x1C}, {6046, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6044, -0x24}, {6042, -0x20}, {6044, -0x1C}, {6043, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30801001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6041, -0x24}, {6039, -0x20}, {6041, -0x1C}, {6040, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{6069, -0x30}, {6071, -0x2C}, {6070, -0x28}, {6035, -0x24}, {6033, -0x20}, {6035, -0x1C}, {6034, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{6060, -0x30}, {6062, -0x2C}, {6061, -0x28}, {6032, -0x24}, {6030, -0x20}, {6032, -0x1C}, {6031, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6086, -0x24}, {6084, -0x20}, {6086, -0x1C}, {6085, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6083, -0x24}, {6081, -0x20}, {6083, -0x1C}, {6082, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6074, -0x24}, {6072, -0x20}, {6074, -0x1C}, {6073, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6065, -0x24}, {6063, -0x20}, {6065, -0x1C}, {6064, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001003, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6059, -0x24}, {6057, -0x20}, {6059, -0x1C}, {6058, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6056, -0x24}, {6054, -0x20}, {6056, -0x1C}, {6055, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6053, -0x24}, {6051, -0x20}, {6053, -0x1C}, {6052, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30203001, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {6080, -0x24}, {6078, -0x20}, {6080, -0x1C}, {6079, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2073, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {7812, -0x24}, {7810, -0x20}, {7812, -0x1C}, {7811, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361000598, 0}, {100495, 0x40}} --Attachment
    ck2 = {{361000602, -48}, {361000603, -44}, {0, -40}, {0, -36}, {300000005, -32}, {300000047, -28}, {361000604, -4}, {0, 8}, {361002046, 28}, {361002047, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'Switchblade X9Tyuunibyou') then
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424001, 0}, {2077, -16}} -- Skin
    ck2 = {{100350, 4}, {10424002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424201, 0}, {2077, -16}} -- Skin
    ck2 = {{100350, 4}, {10424002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {10424001, 0x40}}
    ck2 = {{10424002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {0, 0x18}, {300136, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10424001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400009, 0x20}, {200143, 0x24}, {300136, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{72358, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72941, -0x24}, {72939, -0x20}, {72941, -0x1C}, {72940, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72380, -0x24}, {72378, -0x20}, {72380, -0x1C}, {72379, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72282, -0x24}, {72280, -0x20}, {72282, -0x1C}, {72281, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72401, -0x24}, {72399, -0x20}, {72401, -0x1C}, {72400, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72395, -0x24}, {72393, -0x20}, {72395, -0x1C}, {72394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101020, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72398, -0x24}, {72396, -0x20}, {72398, -0x1C}, {72397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72463, -0x24}, {72461, -0x20}, {72463, -0x1C}, {72462, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72460, -0x24}, {72458, -0x20}, {72460, -0x1C}, {72459, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{72297, -0x30}, {72299, -0x2C}, {72298, -0x28}, {75073, -0x24}, {73919, -0x20}, {75073, -0x1C}, {72807, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74159, -0x24}, {72390, -0x20}, {74159, -0x1C}, {72391, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{72294, -0x30}, {72296, -0x2C}, {72295, -0x28}, {75072, -0x24}, {73920, -0x20}, {75072, -0x1C}, {72804, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
          if (skin == 'Switchblade X9Tyuunibyou lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424001, 0}, {2077, -16}} -- Skin
    ck2 = {{100350, 4}, {10424002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424201, 0}, {2077, -16}} -- Skin
    ck2 = {{100350, 4}, {10424002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {10424001, 0x40}}
    ck2 = {{10424002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {0, 0x18}, {300136, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10424001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400009, 0x20}, {200143, 0x24}, {500057, 0x28}, {48, 0x2C}, {52, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{72358, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72941, -0x24}, {72939, -0x20}, {72941, -0x1C}, {72940, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72380, -0x24}, {72378, -0x20}, {72380, -0x1C}, {72379, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72282, -0x24}, {72280, -0x20}, {72282, -0x1C}, {72281, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72401, -0x24}, {72399, -0x20}, {72401, -0x1C}, {72400, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72395, -0x24}, {72393, -0x20}, {72395, -0x1C}, {72394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101020, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72398, -0x24}, {72396, -0x20}, {72398, -0x1C}, {72397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72463, -0x24}, {72461, -0x20}, {72463, -0x1C}, {72462, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72460, -0x24}, {72458, -0x20}, {72460, -0x1C}, {72459, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{72297, -0x30}, {72299, -0x2C}, {72298, -0x28}, {75073, -0x24}, {73919, -0x20}, {75073, -0x1C}, {72807, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74159, -0x24}, {72390, -0x20}, {74159, -0x1C}, {72391, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{72294, -0x30}, {72296, -0x2C}, {72295, -0x28}, {75072, -0x24}, {73920, -0x20}, {75072, -0x1C}, {72804, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002549, 0}, {100564, 0x40}} --Attachment
    ck2 = {{361002562, -48}, {361002563, -44}, {361002573, -40}, {361002664, -36}, {361002572, -32}, {361002574, -28}, {361002564, -4}, {0, 8}, {361002551, 28}, {361002552, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'Switchblade X9Tyuunibyou lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424001, 0}, {2077, -16}} -- Skin
    ck2 = {{100350, 4}, {10424002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424201, 0}, {2077, -16}} -- Skin
    ck2 = {{100350, 4}, {10424002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {10424001, 0x40}}
    ck2 = {{10424002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {0, 0x18}, {300136, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10424001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10424001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400009, 0x20}, {200143, 0x24}, {500058, 0x28}, {49, 0x2C}, {53, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10424001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{72358, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301001, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72941, -0x24}, {72939, -0x20}, {72941, -0x1C}, {72940, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72380, -0x24}, {72378, -0x20}, {72380, -0x1C}, {72379, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{31001002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72282, -0x24}, {72280, -0x20}, {72282, -0x1C}, {72281, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501004, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72401, -0x24}, {72399, -0x20}, {72401, -0x1C}, {72400, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101007, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72395, -0x24}, {72393, -0x20}, {72395, -0x1C}, {72394, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30101020, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72398, -0x24}, {72396, -0x20}, {72398, -0x1C}, {72397, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72463, -0x24}, {72461, -0x20}, {72463, -0x1C}, {72462, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {72460, -0x24}, {72458, -0x20}, {72460, -0x1C}, {72459, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901003, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{72297, -0x30}, {72299, -0x2C}, {72298, -0x28}, {75073, -0x24}, {73919, -0x20}, {75073, -0x1C}, {72807, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {74159, -0x24}, {72390, -0x20}, {74159, -0x1C}, {72391, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901002, 0}, {0, 0x24}, {2077, -0x5C}} --Attachment
    ck2 = {{72294, -0x30}, {72296, -0x2C}, {72295, -0x28}, {75072, -0x24}, {73920, -0x20}, {75072, -0x1C}, {72804, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361002549, 0}, {100564, 0x40}} --Attachment
    ck2 = {{361002562, -48}, {361002563, -44}, {361002573, -40}, {361002664, -36}, {361002572, -32}, {361002574, -28}, {361002564, -4}, {0, 8}, {361002551, 28}, {361002552, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    if (skin == 'CX9 Reddo') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428001, 0}, {2081, -16}} -- Skin
    ck2 = {{100782, 4}, {10428002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428201, 0}, {2081, -16}} -- Skin
    ck2 = {{100782, 4}, {10428002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {10428001, 0x40}}
    ck2 = {{10428002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {0, 0x18}, {300214, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10428001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400016, 0x20}, {200224, 0x24}, {300214, 0x28}, {31, 0x2C}, {34, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{87533, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301004, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88438, -0x24}, {88436, -0x20}, {88438, -0x1C}, {88437, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87469, -0x30}, {87471, -0x2C}, {87470, -0x28}, {87441, -0x24}, {87439, -0x20}, {87441, -0x1C}, {87440, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {87484, 0xC}, {87486, 0x10}, {87485, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901050, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87472, -0x30}, {87474, -0x2C}, {87473, -0x28}, {87438, -0x24}, {87436, -0x20}, {87438, -0x1C}, {87437, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87483, -0x24}, {87481, -0x20}, {87483, -0x1C}, {87482, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87459, -0x24}, {87457, -0x20}, {87459, -0x1C}, {87458, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901008, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87466, -0x30}, {87468, -0x2C}, {87467, -0x28}, {87456, -0x24}, {87454, -0x20}, {87456, -0x1C}, {87455, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {87478, 0xC}, {87480, 0x10}, {87479, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87463, -0x30}, {87465, -0x2C}, {87464, -0x28}, {87453, -0x24}, {87451, -0x20}, {87453, -0x1C}, {87452, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {87475, 0xC}, {87477, 0x10}, {87476, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87450, -0x24}, {87448, -0x20}, {87450, -0x1C}, {87449, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304013, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88441, -0x24}, {88439, -0x20}, {88441, -0x1C}, {88440, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88388, -0x24}, {88386, -0x20}, {88388, -0x1C}, {88387, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        end
     if (skin == 'CX9 Reddo lvl 3') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428001, 0}, {2081, -16}} -- Skin
    ck2 = {{100782, 4}, {10428002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428201, 0}, {2081, -16}} -- Skin
    ck2 = {{100782, 4}, {10428002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {10428001, 0x40}}
    ck2 = {{10428002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {0, 0x18}, {300214, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10428001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400016, 0x20}, {200224, 0x24}, {500010, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{87533, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301004, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88438, -0x24}, {88436, -0x20}, {88438, -0x1C}, {88437, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87469, -0x30}, {87471, -0x2C}, {87470, -0x28}, {87441, -0x24}, {87439, -0x20}, {87441, -0x1C}, {87440, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {87484, 0xC}, {87486, 0x10}, {87485, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901050, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87472, -0x30}, {87474, -0x2C}, {87473, -0x28}, {87438, -0x24}, {87436, -0x20}, {87438, -0x1C}, {87437, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87483, -0x24}, {87481, -0x20}, {87483, -0x1C}, {87482, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87459, -0x24}, {87457, -0x20}, {87459, -0x1C}, {87458, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901008, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87466, -0x30}, {87468, -0x2C}, {87467, -0x28}, {87456, -0x24}, {87454, -0x20}, {87456, -0x1C}, {87455, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {87478, 0xC}, {87480, 0x10}, {87479, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87463, -0x30}, {87465, -0x2C}, {87464, -0x28}, {87453, -0x24}, {87451, -0x20}, {87453, -0x1C}, {87452, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {87475, 0xC}, {87477, 0x10}, {87476, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87450, -0x24}, {87448, -0x20}, {87450, -0x1C}, {87449, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304013, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88441, -0x24}, {88439, -0x20}, {88441, -0x1C}, {88440, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88388, -0x24}, {88386, -0x20}, {88388, -0x1C}, {88387, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004261, 0}, {100681, 0x40}} --Attachment
    ck2 = {{361004264, -48}, {361004265, -44}, {361004268, -40}, {361004270, -36}, {361004267, -32}, {361004269, -28}, {361004266, -4}, {0, 8}, {361004355, 28}, {361004356, 32}}
    czk(ck1, ck2, 4)
    
    end
        if (skin == 'CX9 Reddo lvl 7') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428001, 0}, {2081, -16}} -- Skin
    ck2 = {{100782, 4}, {10428002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428201, 0}, {2081, -16}} -- Skin
    ck2 = {{100782, 4}, {10428002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {10428001, 0x40}}
    ck2 = {{10428002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {0, 0x18}, {300214, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10428001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10428001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{5, 0x8}, {0, 0x1C}, {400016, 0x20}, {200224, 0x24}, {500011, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10428001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{87533, -0xC}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30301004, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88438, -0x24}, {88436, -0x20}, {88438, -0x1C}, {88437, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87469, -0x30}, {87471, -0x2C}, {87470, -0x28}, {87441, -0x24}, {87439, -0x20}, {87441, -0x1C}, {87440, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {87484, 0xC}, {87486, 0x10}, {87485, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901050, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87472, -0x30}, {87474, -0x2C}, {87473, -0x28}, {87438, -0x24}, {87436, -0x20}, {87438, -0x1C}, {87437, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30201005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87483, -0x24}, {87481, -0x20}, {87483, -0x1C}, {87482, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501001, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87459, -0x24}, {87457, -0x20}, {87459, -0x1C}, {87458, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901008, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87466, -0x30}, {87468, -0x2C}, {87467, -0x28}, {87456, -0x24}, {87454, -0x20}, {87456, -0x1C}, {87455, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {87478, 0xC}, {87480, 0x10}, {87479, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30901007, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{87463, -0x30}, {87465, -0x2C}, {87464, -0x28}, {87453, -0x24}, {87451, -0x20}, {87453, -0x1C}, {87452, -0x18}, {300000183, -0x10}, {300000184, -0xC}, {300000183, -0x8}, {300000184, -0x4}, {87475, 0xC}, {87477, 0x10}, {87476, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30501005, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {87450, -0x24}, {87448, -0x20}, {87450, -0x1C}, {87449, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30304013, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88441, -0x24}, {88439, -0x20}, {88441, -0x1C}, {88440, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{30401003, 0}, {0, 0x24}, {2081, -0x5C}} --Attachment
    ck2 = {{0, -0x30}, {0, -0x2C}, {0, -0x28}, {88388, -0x24}, {88386, -0x20}, {88388, -0x1C}, {88387, -0x18}, {0, -0x10}, {0, -0xC}, {0, -0x8}, {0, -0x4}, {0, 0xC}, {0, 0x10}, {0, 0x14}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{361004261, 0}, {100681, 0x40}} --Attachment
    ck2 = {{361004264, -48}, {361004265, -44}, {361004268, -40}, {361004270, -36}, {361004267, -32}, {361004269, -28}, {361004266, -4}, {0, 8}, {361004355, 28}, {361004356, 32}}
    czk(ck1, ck2, 4)
    
    end
    
    
    
    
    
    
    
    -----------------------legendary

    if (skin == 'AK47 Pumpkin') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {9, -16}} -- Skin
    ck2 = {{32, 4}, {10107022, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107201, 0}, {9, -16}} -- Skin
    ck2 = {{32, 4}, {10107022, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {10107001, 0x40}}
    ck2 = {{10107022, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {0, 0x18}, {300031, 0x28}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{10107001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10107001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200036, 0x24}, {300031, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10107001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200002305, -0xC}}
    czk(ck1, ck2, 4)
        end
    
	
	
    if (skin == 'M4A1TECH CourtJester') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10109001, 0}, {22, -16}} -- Skin
    ck2 = {{10263, 4}, {10109088, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10109201, 0}, {22, -16}} -- Skin
    ck2 = {{10263, 4}, {10109088, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10109001, 0}, {1880000001, 0x14}, {10109001, 0x40}}
    ck2 = {{10109088, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10109001, 0}, {1880000001, 0x14}, {0, 0x18}, {300029, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10109001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10109001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200034, 0x24}, {300029, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10109001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010119, -0xC}}
    czk(ck1, ck2, 4)
        end
		
	
	if (skin == 'XPR50 DemonMask') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10203001, 0}, {1030, -16}} -- Skin
    ck2 = {{101059, 4}, {10203087, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10203201, 0}, {1030, -16}} -- Skin
    ck2 = {{101059, 4}, {10203087, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10203001, 0}, {1880000001, 0x14}, {10203001, 0x40}}
    ck2 = {{10203087, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10203001, 0}, {1880000001, 0x14}, {0, 0x18}, {300260, 0x28}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{10203001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10203001, 0}, {1880000001, 0x14}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200270, 0x24}, {300260, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10203001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{96998, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'XPR50 BrokenWill') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10203001, 0}, {1030, -16}} -- Skin
    ck2 = {{100686, 4}, {10203108, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10203201, 0}, {1030, -16}} -- Skin
    ck2 = {{100686, 4}, {10203108, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10203001, 0}, {1880000001, 0x14}, {10203001, 0x40}}
    ck2 = {{10203108, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10203001, 0}, {1880000001, 0x14}, {0, 0x18}, {300195, 0x28}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{10203001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10203001, 0}, {1880000001, 0x14}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200202, 0x24}, {300195, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10203001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84263, -0xC}}
    czk(ck1, ck2, 4)
	   end 
	   
	if (skin == 'DL Q33 LuxuryChristmas') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{84, 4}, {10207022, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{84, 4}, {10207022, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207022, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300081, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200007, 0x24}, {300081, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200002339, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'DL Q33 Zealot') then
        gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("200000652", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000042", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("200010069", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("200010129", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("200010053", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("2000000653", gg.TYPE_DWORD)
gg.toast("ᴢᴇᴀʟᴏᴛ ᴅʟǫ ᴅᴏɴᴇ")
end
 	
    if (skin == 'DL Q33 AdvancedArtillery') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{100007, 4}, {10207114, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{100007, 4}, {10207114, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207114, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300083, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200090, 0x24}, {300083, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{1248, -0xC}}
    czk(ck1, ck2, 4)
        end
        
          if (skin == 'DL Q33 Precise') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{100301, 4}, {10207140, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{100301, 4}, {10207140, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207140, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300135, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200142, 0x24}, {300135, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{69350, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'DLQ33 BLKMT') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1035, -16}} -- Skin
    ck2 = {{100926, 4}, {10207174, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207201, 0}, {1035, -16}} -- Skin
    ck2 = {{100926, 4}, {10207174, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {10207001, 0x40}}
    ck2 = {{10207174, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {0, 0x18}, {300239, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10207001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10207001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200249, 0x24}, {300239, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10207001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{92514, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'LOCUS Neptune') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1036, -16}} -- Skin
    ck2 = {{10579, 4}, {10208054, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208201, 0}, {1036, -16}} -- Skin
    ck2 = {{10579, 4}, {10208054, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {10208001, 0x40}}
    ck2 = {{10208054, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {0, 0x18}, {300070, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10208001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200078, 0x24}, {300070, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010399, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'LOCUS Railgun') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1036, -16}} -- Skin
    ck2 = {{100128, 4}, {10208077, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208201, 0}, {1036, -16}} -- Skin
    ck2 = {{100128, 4}, {10208077, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {10208001, 0x40}}
    ck2 = {{10208077, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {0, 0x18}, {300101, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10208001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200108, 0x24}, {300101, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{8326, -0xC}}
    czk(ck1, ck2, 4)
        end
        
         if (skin == 'LOCUS GhostHunter') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1036, -16}} -- Skin
    ck2 = {{100462, 4}, {10208102, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208201, 0}, {1036, -16}} -- Skin
    ck2 = {{100462, 4}, {10208102, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {10208001, 0x40}}
    ck2 = {{10208102, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {0, 0x18}, {300158, 0x28}, {130, 0x4C}, {110, 0x54}}
    ck2 = {{10208001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200165, 0x24}, {300158, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{76017, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'LOCUS MetalWhiskers') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1036, -16}} -- Skin
    ck2 = {{100784, 4}, {10208121, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208201, 0}, {1036, -16}} -- Skin
    ck2 = {{100784, 4}, {10208121, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {10208001, 0x40}}
    ck2 = {{10208121, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {0, 0x18}, {300210, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10208001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10208001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200220, 0x24}, {300210, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10208001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{87505, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'NA45 Lycanthrope') then
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10209001, 0}, {1037, -16}} -- Skin
    ck2 = {{10621, 4}, {10209003, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10209201, 0}, {1037, -16}} -- Skin
    ck2 = {{10621, 4}, {10209003, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10209001, 0}, {1880000001, 0x14}, {10209001, 0x40}}
    ck2 = {{10209003, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10209001, 0}, {1880000001, 0x14}, {0, 0x18}, {300030, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10209001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10209001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200035, 0x24}, {300030, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10209001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{94445, -0xC}}
    czk(ck1, ck2, 4)
        end   
		
	
	if (skin == 'MAC 10 AtomicStar') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {2075, -16}} -- Skin
    ck2 = {{100230, 4}, {10422002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422201, 0}, {2075, -16}} -- Skin
    ck2 = {{100230, 4}, {10422002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {10422001, 0x40}}
    ck2 = {{10422002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {0, 0x18}, {300114, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10422001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200121, 0x24}, {300114, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{45261, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'MAC 10 DragonMight') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {2075, -16}} -- Skin
    ck2 = {{100522, 4}, {10422014, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422201, 0}, {2075, -16}} -- Skin
    ck2 = {{100522, 4}, {10422014, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {10422001, 0x40}}
    ck2 = {{10422014, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {0, 0x18}, {300171, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10422001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200178, 0x24}, {300171, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{78606, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'MAC 10 BastIdol') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {2075, -16}} -- Skin
    ck2 = {{100684, 4}, {10422017, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422201, 0}, {2075, -16}} -- Skin
    ck2 = {{100684, 4}, {10422017, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {10422001, 0x40}}
    ck2 = {{10422017, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {0, 0x18}, {300194, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10422001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200201, 0x24}, {300194, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84921, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'MAC10 CodmDark') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {2075, -16}} -- Skin
    ck2 = {{100985, 4}, {10422029, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422201, 0}, {2075, -16}} -- Skin
    ck2 = {{100985, 4}, {10422029, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {10422001, 0x40}}
    ck2 = {{10422029, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {0, 0x18}, {300246, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10422001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200256, 0x24}, {300246, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{94503, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'MAC10 CodmDark') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {2075, -16}} -- Skin
    ck2 = {{101058, 4}, {10422029, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422201, 0}, {2075, -16}} -- Skin
    ck2 = {{101058, 4}, {10422029, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {10422001, 0x40}}
    ck2 = {{10422031, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {0, 0x18}, {300246, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10422001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10422001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200256, 0x24}, {300246, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10422001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{96979, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'KSP45 Colossus') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10423001, 0}, {2076, -16}} -- Skin
    ck2 = {{100321, 4}, {10423002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10423201, 0}, {2076, -16}} -- Skin
    ck2 = {{100321, 4}, {10423002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10423001, 0}, {1880000001, 0x14}, {10423001, 0x40}}
    ck2 = {{10423002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10423001, 0}, {1880000001, 0x14}, {0, 0x18}, {300126, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10423001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10423001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200133, 0x24}, {300126, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10423001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{70755, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'KSP45 Jammer') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10423001, 0}, {2076, -16}} -- Skin
    ck2 = {{100660, 4}, {10423018, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10423201, 0}, {2076, -16}} -- Skin
    ck2 = {{100660, 4}, {10423018, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10423001, 0}, {1880000001, 0x14}, {10423001, 0x40}}
    ck2 = {{10423018, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10423001, 0}, {1880000001, 0x14}, {0, 0x18}, {300191, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10423001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10423001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200198, 0x24}, {300191, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10423001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84121, -0xC}}
    czk(ck1, ck2, 4)
        end
		
	if (skin == 'BY15 ChaBaiDao') then
	gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10503001, 0}, {4103, -16}} -- Skin
    ck2 = {{100709, 4}, {10503125, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10503201, 0}, {4103, -16}} -- Skin
    ck2 = {{100709, 4}, {10503125, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10503001, 0}, {1880000001, 0x14}, {10503001, 0x40}}
    ck2 = {{10503125, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10503001, 0}, {1880000001, 0x14}, {0, 0x18}, {300200, 0x28}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{10503001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10503001, 0}, {1880000001, 0x14}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200207, 0x24}, {300200, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10503001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84943, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'BY15 ctopus') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10503001, 0}, {4103, -16}} -- Skin
    ck2 = {{100710, 4}, {10503126, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10503201, 0}, {4103, -16}} -- Skin
    ck2 = {{100710, 4}, {10503126, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10503001, 0}, {1880000001, 0x14}, {10503001, 0x40}}
    ck2 = {{10503126, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10503001, 0}, {1880000001, 0x14}, {0, 0x18}, {300201, 0x28}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{10503001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10503001, 0}, {1880000001, 0x14}, {90, 0x4C}, {70, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200208, 0x24}, {300201, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10503001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{84966, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'M1887 KinnguNoTorannpetto') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10504001, 0}, {4104, -16}} -- Skin
    ck2 = {{100553, 4}, {10504105, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10504201, 0}, {4104, -16}} -- Skin
    ck2 = {{100553, 4}, {10504105, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10504001, 0}, {1880000001, 0x14}, {10504001, 0x40}}
    ck2 = {{10504105, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10504001, 0}, {1880000001, 0x14}, {0, 0x18}, {300173, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10504001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10504001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200180, 0x24}, {300173, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10504001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{79389, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'KRM262 Ejector') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10508002, 0}, {4108, -16}} -- Skin
    ck2 = {{100322, 4}, {10508044, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10508201, 0}, {4108, -16}} -- Skin
    ck2 = {{100322, 4}, {10508044, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10508002, 0}, {1880000001, 0x14}, {10508002, 0x40}}
    ck2 = {{10508044, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10508002, 0}, {1880000001, 0x14}, {0, 0x18}, {300128, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10508002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10508002, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200135, 0x24}, {300128, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10508002, 0}, {1057803469, 0x10}} --UI
    ck2 = {{70247, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'KRM262 GameBoy') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10508002, 0}, {4108, -16}} -- Skin
    ck2 = {{101060, 4}, {10508076, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10508201, 0}, {4108, -16}} -- Skin
    ck2 = {{101060, 4}, {10508076, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10508002, 0}, {1880000001, 0x14}, {10508002, 0x40}}
    ck2 = {{10508076, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10508002, 0}, {1880000001, 0x14}, {0, 0x18}, {300261, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10508002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10508002, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200271, 0x24}, {300261, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10508002, 0}, {1057803469, 0x10}} --UI
    ck2 = {{97904, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'Echo NaturalCauses') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10509001, 0}, {4111, -16}} -- Skin
    ck2 = {{10641, 4}, {10509002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10509201, 0}, {4111, -16}} -- Skin
    ck2 = {{10641, 4}, {10509002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10509001, 0}, {1880000001, 0x14}, {10509001, 0x40}}
    ck2 = {{10509002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10509001, 0}, {1880000001, 0x14}, {0, 0x18}, {300023, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10509001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10509001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200031, 0x24}, {300023, 0x28}, {0, 0x2C}, {0, 0x30}, {100007, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10509001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{200010135, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'R90 Untapped') then
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10510001, 0}, {4112, -16}} -- Skin
    ck2 = {{100017, 4}, {10510002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10510201, 0}, {4112, -16}} -- Skin
    ck2 = {{100017, 4}, {10510002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10510001, 0}, {1880000001, 0x14}, {10510001, 0x40}}
    ck2 = {{10510002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10510001, 0}, {1880000001, 0x14}, {0, 0x18}, {300084, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10510001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10510001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200091, 0x24}, {300084, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10510001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{4454, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'JAK12 HardArmour') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10520001, 0}, {4113, -16}} -- Skin
    ck2 = {{100208, 4}, {10520002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10520201, 0}, {4113, -16}} -- Skin
    ck2 = {{100208, 4}, {10520002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10520001, 0}, {1880000001, 0x14}, {10520001, 0x40}}
    ck2 = {{10520002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10520001, 0}, {1880000001, 0x14}, {0, 0x18}, {300106, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10520001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10520001, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200113, 0x24}, {300106, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10520001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{11678, -0xC}}
    czk(ck1, ck2, 4)
        end	
		
	if (skin == 'KaliSticks cobra') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10715001, 0}, {6163, -16}} -- Skin
    ck2 = {{100266, 4}, {10715002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10715201, 0}, {6163, -16}} -- Skin
    ck2 = {{100266, 4}, {10715002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10715001, 0}, {1880000001, 0x14}, {10715001, 0x40}}
    ck2 = {{10715002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10715001, 0}, {1880000001, 0x14}, {0, 0x18}, {300124, 0x28}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{10715001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10715001, 0}, {1880000001, 0x14}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200131, 0x24}, {300124, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10715001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{67857, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'ButterflyKnife Legendary') then
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10716001, 0}, {6165, -16}} -- Skin
    ck2 = {{100417, 4}, {10716002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10716201, 0}, {6165, -16}} -- Skin
    ck2 = {{100417, 4}, {10716002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10716001, 0}, {1880000001, 0x14}, {10716001, 0x40}}
    ck2 = {{10716002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10716001, 0}, {1880000001, 0x14}, {0, 0x18}, {300137, 0x28}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{10716001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10716001, 0}, {1880000001, 0x14}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200144, 0x24}, {300137, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10716001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{74446, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'KnifeChinano1 Chinano1') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10702999, 0}, {6145, -16}} -- Skin
    ck2 = {{100424, 4}, {10717001, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10702201, 0}, {6145, -16}} -- Skin
    ck2 = {{100424, 4}, {10717001, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10702999, 0}, {1880000001, 0x14}, {10702999, 0x40}}
    ck2 = {{10717001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10702999, 0}, {1880000001, 0x14}, {0, 0x18}, {300152, 0x28}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{10702999, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10702999, 0}, {1880000001, 0x14}, {50, 0x4C}, {30, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200159, 0x24}, {300152, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10702999, 0}, {1057803469, 0x10}} --UI
    ck2 = {{74694, -0xC}}
    czk(ck1, ck2, 4)
        end
 	

 	
    if (skin == 'SAI LiangZhai') then
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10718001, 0}, {6167, -16}} -- Skin
    ck2 = {{100756, 4}, {10718002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10718201, 0}, {6167, -16}} -- Skin
    ck2 = {{100756, 4}, {10718002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10718001, 0}, {1880000001, 0x14}, {10718001, 0x40}}
    ck2 = {{10718002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10718001, 0}, {1880000001, 0x14}, {0, 0x18}, {300208, 0x28}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{10718001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10718001, 0}, {1880000001, 0x14}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200218, 0x24}, {300208, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10718001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{86347, -0xC}}
    czk(ck1, ck2, 4)
        end
 	
    if (skin == 'SPEAR loyalty') then
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10720001, 0}, {6169, -16}} -- Skin
    ck2 = {{100935, 4}, {10720002, 8}}
    czk(ck1, ck2, 4)
        gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10720201, 0}, {6169, -16}} -- Skin
    ck2 = {{100935, 4}, {10720002, 8}}
    czk(ck1, ck2, 4)
            
    gg.setRanges(4 | 32 | -2080896) -- BLUEPRINT 1
    ck1 = {{10720001, 0}, {1880000001, 0x14}, {10720001, 0x40}}
    ck2 = {{10720002, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --BLUEPRINT 2
    ck1 = {{10720001, 0}, {1880000001, 0x14}, {0, 0x18}, {300240, 0x28}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{10720001, 0x40}}
    czk(ck1, ck2, 4)    
    gg.setRanges(4 | 32 | -2080896) --KILL EFFECT SECTION
    ck1 = {{10720001, 0}, {1880000001, 0x14}, {180, 0x4C}, {160, 0x54}}
    ck2 = {{4, 0x8}, {0, 0x1C}, {0, 0x20}, {200250, 0x24}, {300240, 0x28}, {0, 0x2C}, {0, 0x30}, {0, 0x34}}
    czk(ck1, ck2, 4)
    gg.setRanges(4 | 32 | -2080896)
    ck1 = {{10720001, 0}, {1057803469, 0x10}} --UI
    ck2 = {{92758, -0xC}}
    czk(ck1, ck2, 4)
        end

if (skin == 'DIAMOND CAMO') then
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
 
function charonn(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) end end end


gg.setRanges(32) 
charonX1 = {{1880000001, 0}, {0, 4}, {0, 8}, {0, 0xC}, {0, 0x14}, {1, -0x1C}, {0, -0xC}, {0, -0x20}}
charonX2 = {{2, -0x10}, {600023028, 0x10}}
charonX3 = 4
charonn(charonX1,charonX2,charonX3) 
gg.alert("DIAMOND CAMO")
end

    if (skin == 'MALPRACTICE') then
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(true) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\nFound: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults()  end








gg.alert("Hello bitch")

qmnb = {
{["memory"] = 32},
{["name"] = "Hello mf"}, 
{["value"] = 10702999, ["type"] = 4},{["lv"] = 1057803469, ["offset"] = 16, ["type"] = 4},
}qmxg = { {["value"] = 200002227, ["offset"] = -12, ["type"] = 4},
}xqmnb(qmnb)qmnb = {{["memory"] = 32},{["name"] = "Don't copy paste"}, {["value"] = 10702999, ["type"] = 4},
{["lv"] = 6145, ["offset"] = -16, ["type"] = 4},}qmxg = { {["value"] = 10682, ["offset"] = 4, ["type"] = 4},
{["value"] = 10702335, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "😐"}, 
{["value"] = 10702299, ["type"] = 4},
{["lv"] = 6145, ["offset"] = -16, ["type"] = 4},
}qmxg = { {["value"] = 10682, ["offset"] = 4, ["type"] = 4},{["value"] = 10702335, ["offset"] = 8, ["type"] = 4},
}xqmnb(qmnb)qmnb = {{["memory"] = 32},{["name"] = "Done"},{["value"] = 10702999, ["type"] = 4},{["lv"] = 1880000001, ["offset"] = 24, ["type"] = 4},
}qmxg = {{["value"] = 16843009, ["offset"] = -12, ["type"] = 4},{["value"] = 1, ["offset"] = -8, ["type"] = 4},{["value"] = 3, ["offset"] = 8, ["type"] = 4},{["value"] = 0, ["offset"] = 32, ["type"] = 4},{["value"] = 0, ["offset"] = 52, ["type"] = 4},{["value"] = 0, ["offset"] = 56, ["type"] = 4},{["value"] = 0, ["offset"] = 60, ["type"] = 4},
}


xqmnb(qmnb)
---Copy with creadt mother fucker
gg.alert("𝗦𝗞𝗜𝗡 𝗠𝗔𝗟𝗣𝗥𝗔𝗖𝗧𝗜𝗖𝗘 𝗜𝗦 𝗔𝗖𝗧𝗜𝗩𝗘🔥")
end

end

function charac()

b=gg.multiChoice({
"TEMPLAR MYTHIC",
"SPECTRE MYTHIC",
"NYX LEGEND",
"DAME LEGEND",
"ZOMBIE MOB GUARD",
"ARTERY OG SKIN",
"DARK SHEPHERD",
}, nil, "CHARACTER SKINS")
if b == nil then else
if b[1] == true then c19() end
if b[2] == true then c20() end
if b[3] == true then c21() end
if b[4] == true then c22() end
if b[5] == true then c23() end
if b[6] == true then c24() end
if b[7] == true then c25() end
end
end



function c19()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710003205", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710003206", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710003204", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝗧𝗘𝗠𝗣𝗟𝗔𝗥 𝗠𝗜𝗧𝗛𝗜𝗖 𝗔𝗖𝗧𝗜𝗩𝗔𝗧𝗘")
end

function c20()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710002568", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710002569", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710002570", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝗦𝗣𝗘𝗖𝗧𝗥𝗘 𝗔𝗖𝗧𝗜𝗩𝗔𝗧𝗘")
end

function c21()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710,003,067", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710,003,068", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710,003,069", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝗡𝗬𝗫 𝗟𝗘𝗚𝗘𝗡𝗗 𝗖𝗛𝗔𝗥𝗔𝗖𝗧𝗘𝗥 𝗗𝗢𝗡𝗘")
end

function c22() 
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710004111", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710004112", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710004113", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("𝗗𝗔𝗠𝗘 𝗟𝗘𝗚𝗘𝗡𝗗 𝗖𝗛𝗔𝗥𝗔𝗖𝗧𝗘𝗥 𝗗𝗢𝗡𝗘")
end

function c23()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001579", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001580", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001581", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ᴢᴏᴍʙɪᴇ ᴍᴏʙ ɢᴜᴀʀᴅ ᴅᴏɴᴇ")
end

function c24()    
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Telegram-DuxinoYT", gg.TYPE_DWORD)
gg.getResults(10000)
gg.clearResults()
-- Duxino --
gg.searchNumber(":YouTube-DuxinoYT", gg.TYPE_DWORD)
gg.getResults(10000)
gg.clearResults()
-- Duxino --
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000366", gg.TYPE_DWORD)
gg.clearResults()
-- Duxino --
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000367", gg.TYPE_DWORD)
gg.clearResults()
-- Duxino --
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000368", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ᴀʀᴛᴇʀʏ ᴏɢ ᴅᴏɴᴇ")
end

function c25()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710003692", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710003693", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710003694", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ᴅᴀʀᴋ sʜᴇᴘʜᴇʀᴅ ᴅᴏɴᴇ")
end

function EXIT()
gg.toast("sᴄʀɪᴘᴛ ᴛᴇʀᴍɪɴᴀᴛᴇᴅ")
os.exit() 
end

while true do
if gg.isVisible(true) then
katsonuz = 1
gg.setVisible(false) end
if katsonuz == 1 then
home() 
end
end