gg.alert("welcome")
function setMemoryValue(address,flags,value)gg.setValues({{address=address,flags=flags,value=value}})end
function applyPatch(library,offset,edit,type)local ranges=gg.getRangesList(library)if #ranges>0 then setMemoryValue(ranges[1].start+offset,type,edit)else print("Library not found!")end end
function setValues(address,flags,value)setMemoryValue(address,flags,value)end
function czk(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast('Results '..#data..' Edited') local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else return false end else return false end end gg.toast("")
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast('ᴠᴀʟᴜᴇ ғᴏᴜɴᴅ '..#data..' ᴇᴅɪᴛᴇᴅ✅') local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.alert('ᴠᴀʟᴜᴇ ɴᴏᴛ ғᴏᴜɴᴅ ᴛʀʏ ᴀɢᴀɪɴ!') return false end else gg.alert('ᴠᴀʟᴜᴇ ɴᴏᴛ ғᴏᴜɴᴅ ᴛʀʏ ᴀɢᴀɪɴ!') return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. " Failed") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\nFound: "..xxx.." Edited: " .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. " Failed") end end end gg.clearResults()  end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
local HexPatches = {}
function MAYAVIRED(Lib,Offset,Edit,Type)
local Ranges = gg.getRangesList(Lib)
local v = {}
v[1] = {}
v[1].address = Ranges[1].start + Offset
v[1].flags = Type
v[1].value = Edit
v[1].freeze = true
gg.setValues(v)
end
function split(szFullString,szSeparator)local nFindStartIndex=1 local nSplitIndex=1 local nSplitArray={}while true do local nFindLastIndex=string.find(szFullString,szSeparator,nFindStartIndex)if not nFindLastIndex then nSplitArray[nSplitIndex]=string.sub(szFullString,nFindStartIndex,string.len(szFullString))break end nSplitArray[nSplitIndex]=string.sub(szFullString,nFindStartIndex,nFindLastIndex-1)nFindStartIndex=nFindLastIndex+string.len(szSeparator)nSplitIndex=nSplitIndex+1 end return nSplitArray end
function xgxc(szpy,qmxg)for x=1,#(qmxg)do local xgpy=szpy+qmxg[x]["offset"]local xglx=qmxg[x]["type"]local xgsz=qmxg[x]["value"]local xgdj=qmxg[x]["freeze"]if xgdj==nil or xgdj==""then gg.setValues({[1]={address=xgpy,flags=xglx,value=xgsz}})else gg.addListItems({[1]={address=xgpy,flags=xglx,freeze=xgdj,value=xgsz}})end xgsl=xgsl+1 xgjg=true end end
function xqmnb(qmnb)gg.clearResults()gg.setRanges(qmnb[1]["memory"])gg.searchNumber(qmnb[3]["value"],qmnb[3]["type"])if gg.getResultCount()==0 then return end gg.refineNumber(qmnb[3]["value"],qmnb[3]["type"])gg.refineNumber(qmnb[3]["value"],qmnb[3]["type"])gg.refineNumber(qmnb[3]["value"],qmnb[3]["type"])if gg.getResultCount()==0 then return end local sl=gg.getResults(999999)local sz=gg.getResultCount()xgsl=0 if sz>999999 then sz=999999 end for i=1,sz do local pdsz=true for v=4,#(qmnb)do if pdsz then local pysz={}pysz[1]={}pysz[1].address=sl[i].address+qmnb[v]["offset"]pysz[1].flags=qmnb[v]["type"]local szpy=gg.getValues(pysz)local pdpd=qmnb[v]["lv"]..";"..szpy[1].value local szpd=split(pdpd,";")local tzszpd=szpd[1]local pyszpd=szpd[2]if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg then local szpy=sl[i].address xgxc(szpy,qmxg)end end if xgjg then end end
function SearchWrite(Search,Write,Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1],Type)local count=gg.getResultCount()local result=gg.getResults(count)gg.clearResults()local data={}local base=Search[1][2]if count>0 then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={}local offset=Search[k][2]-base local num=Search[k][1]for i,v in ipairs(result)do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp)do if tostring(v.value)~=tostring(num)then result[i].isUseful=false end end end for i,v in ipairs(result)do if v.isUseful then data[#data+1]=v.address end end if #data>0 then local t={}local base=Search[1][2]for i=1,#data do for k,w in ipairs(Write)do local offset=w[2]-base t[#t+1]={}t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1]if w[3]==true then local item={}item[#item+1]=t[#t]item[#item].freeze=true gg.addListItems(item)end end end gg.setValues(t)gg.addListItems(t)else return false end else return false end end

running=true
TEMPLATE=1

-- Define all functions first
function A1()
MAYAVIRED("libanogs.so", 0x118A24, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x118A28, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x118A2C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x118A30, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x118C50, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x118C54, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x11A7A8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x11A7AC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x134EF4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x134EF8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x134EFC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x134F00, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x178168, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x17816C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x17E640, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x17E644, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1E5128, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1E512C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1E6C34, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1E6C38, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1E6C3C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x217F5C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x217F60, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x217F64, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23FB08, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23FB0C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x24092C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x240930, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2B58BC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2B58C0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2B614C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2B6150, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2F58C0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2F58C4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x43BC58, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x43BC5C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x44C054, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x44C058, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x44F244, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x44F248, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x452508, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x45250C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4527A8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4527AC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x45284C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x452850, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x452854, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x452858, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x45285C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x452860, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x452864, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4539AC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4539B0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4539D0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4539D4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x4539FC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A00, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A58, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A5C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A60, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A64, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A84, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A88, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A8C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453A90, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453AF0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x453AF4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x88AA18, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x88AA1C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x8A6DF0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x8A6DF4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x8A6F44, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x8A6F48, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x8A727C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x8A7280, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x98925C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x989260, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x989D34, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libgcloud.so", 0x989D38, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1195D0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x1195D4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x13A0B4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x13A0B8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x217F60, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x217F64, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x21B4A8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x21B4AC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x21BB64, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x21BB68, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x239DEC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x239DF0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23A3F8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23A3FC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23F7E8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23F7EC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23F7F0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23FB04, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23FB08, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x23FB0C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x24042C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x240430, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x240DA8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x240DAC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x241E10, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x241E14, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x242F2C, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x242F30, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2448F8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2448FC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2B58C0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2B58C4, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2F58B8, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2F58BC, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x2F58C0, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x3B9544, "h00 00 80 D2 C0 03 5F D6;", 32);
MAYAVIRED("libanogs.so", 0x3B9548, "h00 00 80 D2 C0 03 5F D6;", 32);
gg.toast("Bypass Activated, Have a Good Day!")
end

function A2()
local menu = gg.choice({
"☢️ Aimbot Adjustable (ingame)",   -- B1
"☢️ Sticky Aim (ingame)",         -- B2
"☢️ WallHack (Lobby)",            -- B3
"☢️ Wallhack Outline (Lobby)",    -- B4
"☢️ No Spread (ingame)",          -- B5
"☢️ No Recoil (ingame)",          -- B6
"☢️ No Reload (ingame)",          -- B7
"☢️ No Shake (ingame)",           -- B8
"☢️ Fast Scope (ingame)",         -- B9
"☢️ Hitbox Extended (ingame)",    -- B10
"☢️ Damage Buffed (ingame)",      -- B11
"☢️ Fast Shoot SR (ingame)",      -- B12
"☢️ BR Tags (ingame)",            -- B13
"☢️ Fast Switch (ingame)",        -- B14
"☢️ No Overheat (ingame)",        -- B15
"☢️ Fast Parachute (lobby)",      -- B16
"☢️ Long Slide (ingame)",         -- B17
"☢️ Long Slide Adjustable (ingame)", -- B18
"☢️ Speedhack (ingame)",          -- B19
"☢️ High Jump MP (ingame)",       -- B20
"☢️ High Jump BR (ingame)",       -- B21
"☢️ Snowboard Boost (ingame)",    -- B22
"☢️ Max Frame Rate + 60 FPS (ingame)", -- B23
"☢️ Long Execution (ingame)",     -- B24
"☢️ Red Wallhack (lobby)",        -- B25
"☢️ Unli Ammo (lobby/ingame)",    -- B26
"☢️ Weapon Range Extended (lobby/ingame)", -- B27
"☢️ Red Antenna (ingame)",        -- B28
"☢️ Dark Mode MP (lobby/ingame)", -- B29
"☢️ Smooth Aimbot (lobby/ingame)",-- B30
"☢️ Anti Report (Every ingame)",  -- B31
"☢️ Fast Swim (lobby)",           -- B32
"☢️ Magic Bullet (head)",         -- B33
"☢️ Magic Bullet (body)",         -- B34
"☢️ Wallshot (every game)", ---B35     
"☢️ Return"
},nil,{
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox",
"checkbox",
"checkbox", 
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
})
if menu == nil then return end
if menu[1] then B1() end
if menu[2] then B2() end
if menu[3] then B3() end
if menu[4] then B4() end
if menu[5] then B5() end
if menu[6] then B6() end
if menu[7] then B7() end
if menu[8] then B8() end
if menu[9] then B9() end
if menu[10] then B10() end
if menu[11] then B11() end
if menu[12] then B12() end
if menu[13] then B13() end
if menu[14] then B14() end
if menu[15] then B15() end
if menu[16] then B16() end
if menu[17] then B17() end
if menu[18] then B18() end
if menu[19] then B19() end
if menu[20] then B20() end
if menu[21] then B21() end
if menu[22] then B22() end
if menu[23] then B23() end
if menu[24] then B24() end
if menu[25] then B25() end
if menu[26] then B26() end
if menu[27] then B27() end
if menu[28] then B28() end
if menu[29] then B29() end
if menu[30] then B30() end
if menu[31] then B31() end
if menu[32] then B32() end
if menu[33] then B33() end
if menu[34] then B34() end
if menu[35] then B35() end
end

function skins()
K = load(gg.makeRequest("https://raw.githubusercontent.com/anonroot123/Skinhs.lua/b420b326d725da9bf744a8cd7023c8331636485b/skinss.lua").content)
pcall(K)
end

function B1()
function MAYAVIRED(_Type, _Flag, _Lib, _Offset, _Edit)
local Ranges = gg["getRangesList"](_Lib)
if Ranges and #Ranges > 0 then
local v = {}
v[1] = {}
v[1].address = Ranges[1].start + _Offset
v[1].value = _Edit
v[1].flags = _Flag
gg["setValues"](v)
end
end
OFFSET_PAim = "0x74B3094"
OFFSET_PAim2 = "0x74B309C"
OFFSET_Aim = "0x7AED9F8"
OFFSET_Aim2 = "0x7AED9FC"
OFFSET_Aim3 = "0x7AEDA00"
Bruce = gg.prompt({"Aimbot Setting [ 1 ~ 100000 ]"}, nil, {"number"})
if Bruce and Bruce[1] then
MAYAVIRED("T", 4, "libunity.so", OFFSET_PAim, "h4000001C")
MAYAVIRED("T", 16, "libunity.so", OFFSET_PAim2, Bruce[1])
MAYAVIRED("T", 4, "libunity.so", OFFSET_Aim, "h4000001C")
MAYAVIRED("T", 4, "libunity.so", OFFSET_Aim2, "~A8RET")
MAYAVIRED("T", 16, "libunity.so", OFFSET_Aim3, Bruce[1])
end
end

function B2()
Aimbot1 = 0x8FE3BB8
Aimbot2 = 0x8FE4058
setValues(il2cpp + Aimbot1, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Aimbot1 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Aimbot1 + 0x8, 16, 0.00001)
setValues(il2cpp + Aimbot2, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Aimbot2 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Aimbot2 + 0x8, 16, 50)
gg.toast("sticky aim activated")
end

function B3()
MAYAVIRED("libunity.so", 0x81B7858, "h1F 20 03 D5", 4);
gg.toast("wallhack activated")
end

function B4()
HexPatches.PIDRUHOOK("libunity.so", 0x4A48B10, "hD2800020", 32);
HexPatches.PIDRUHOOK("libunity.so", 0x4A48B14, "hD65F03C0", 32);
gg.toast("outline activated")
end

function B5()
Spread1 = 0x913A970 + 0x11C
Spread2 = 0x913A970 + 0x124
Spread3 = 0x913A970 + 0x128
Spread4 = 0x913A970 + 0x13C
Spread5 = 0x913A970 + 0x144
Spread6 = 0x913A970 + 0x164
Spread7 = 0x914C90C + 0xBC
Spread8 = 0x914C90C + 0xE4
Spread9 = 0x914C90C + 0xEC
Spread10 = 0x914C90C + 0xF0
Crosshair = 0x901C5EC
setValues(il2cpp + Spread1, 4, "~A8 NOP")
setValues(il2cpp + Spread2, 4, "~A8 NOP")
setValues(il2cpp + Spread3, 4, "~A8 NOP")
setValues(il2cpp + Spread4, 4, "~A8 NOP")
setValues(il2cpp + Spread5, 4, "~A8 NOP")
setValues(il2cpp + Spread6, 4, "~A8 NOP")
setValues(il2cpp + Spread7, 4, "~A8 NOP")
setValues(il2cpp + Spread8, 4, "~A8 NOP")
setValues(il2cpp + Spread9, 4, "~A8 NOP")
setValues(il2cpp + Spread10, 4, "~A8 NOP")
setValues(il2cpp + Crosshair, 32, "h20008052C0035FD6")
gg.toast("no spread activated")
end

function B6()
Recoil1 = 0x913BFB0
setValues(il2cpp + Recoil1, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Recoil1 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Recoil1 + 0x8, 16, 0.00001)
gg.toast("no recoil activated")
end

function B7()
Fastreload1 = 0x90FB440
Fastreload2 = 0x90FB54C
Fastreload3 = 0x90FB658
Fastreload4 = 0x90FB74C
Fastreload5 = 0x90FB840
Fastreload6 = 0x90FB934
Fastreload7 = 0x90FBA28
setValues(il2cpp + Fastreload1, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload1 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload1 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastreload2, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload2 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload2 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastreload3, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload3 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload3 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastreload4, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload4 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload4 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastreload5, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload5 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload5 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastreload6, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload6 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload6 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastreload7, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastreload7 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastreload7 + 0x8, 16, 0.00001)
gg.toast("no reload activated")
end

function B8()
MAYAVIRED("libunity.so", 0x7ACFAA0, "h01 00 80 D2 C0 03 5F D6", 32)
gg.toast("no shake activated")
end

function B9()
MAYAVIRED("libunity.so", 0x8FC0388, "h00 2C 40 BC C0 03 5F D6", 32)
gg.toast("fast scope activated")
end

function B10()
Hitbox1 = 0x9102C30
Hitbox2 = 0x9135178
setValues(il2cpp + Hitbox1, 4, "~A8 MOV	 X0, #0x9")
setValues(il2cpp + Hitbox1 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Hitbox2, 4, "~A8 MOV	 X0, #0x9")
setValues(il2cpp + Hitbox2 + 0x4, 4, "~A8 RET")
gg.toast("hitbox extended activated")
end

function B11()
MAYAVIRED("libunity.so", 0x9135178, "h20 00 80 D2 C0 03 5F D6", 32)
gg.toast("ʙᴜꜰꜰ ᴅᴀᴍᴀɢᴇ ᴀᴄᴛɪᴠᴀᴛᴇᴅ")
end

function B12()
Rapidfire2 = 0x90F9F14
setValues(il2cpp + Rapidfire2, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Rapidfire2 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Rapidfire2 + 0x8, 16, 0.1)
gg.toast("fast shoot sr activated")
end

function B13()
MAYAVIRED("libunity.so", 0x48487DC, "h20 00 80 D2 C0 03 5F D6", 32)
gg.toast("br tags activated")
end

function B14()
Fastswitch1 = 0x8FC2D04
Fastswitch2 = 0x8E402C8
setValues(il2cpp + Fastswitch1, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastswitch1 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastswitch1 + 0x8, 16, 0.00001)
setValues(il2cpp + Fastswitch2, 4, "~A8 LDR	 S0, [PC,#0x8]")
setValues(il2cpp + Fastswitch2 + 0x4, 4, "~A8 RET")
setValues(il2cpp + Fastswitch2 + 0x8, 16, 0.00001)
gg.toast("fastswitch activated")
end

function B15()
MAYAVIRED("libunity.so", 0x904CA04, "h000080D2C0035FD6", 32)
gg.toast("no overheat sctivated")
end

function B16()
MAYAVIRED("libunity.so", 0x81BD4EC, "h0010201EC0035FD6", 32)
gg.toast("fast parachute activated")
end

function B17()
MAYAVIRED("libunity.so", 0x8DD2B6C, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x8DD2B70, "h00 00 80 D2 C0 03 5F D6", 32);
gg.toast("long slide activated")
end

function B18()
slide1 = gg.prompt({"sʟɪᴅᴇ sᴘᴇᴇᴅ [1; 50]"}, {[1] = data}, {[1] = 'number'})
if slide1 == nil then else
data = slide1[1]
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type)  count = gg.getResultCount()  result = gg.getResults(count) gg.clearResults()  data = {}  base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do  tmp = {}  offset = Search[k][2] - base  num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast('VALUE FOUND '..#data..' EDITED')  t = {}  base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then  item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.alert('VALUE NOT FOUND') return false end else gg.alert('VALUE NOT FOUND') return false end end
EPICSXZ = tostring(slide1[1])
EPICSXZ1 = tostring(slide1[1])
gg.setRanges(32)
 Epicsxz3 = 16
 Name ="LONGSLIDE"
 Epicsxz1 = {{4.5, 0}, {0.25, -8}, {5.0, -20}}
 Epicsxz2 = {{EPICSXZ, 4}, {EPICSXZ1, 8}}
SearchWrite(Epicsxz1, Epicsxz2, Epicsxz3)
gg.toast("long slide adjustable activated")
end
end

function B19()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("4.28000020981", gg.TYPE_FLOAT)
gg.refineNumber("4.28000020981", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("6", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("3.20000004768", gg.TYPE_FLOAT)
gg.refineNumber("3.20000004768", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("7.2", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("speedhack activated")
end

function B20()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.5;0.8::5", gg.POINTER_WRITABLE)
gg.refineNumber("0.8", 16)
 var = gg.getResults(9999)
gg.editAll("4", gg.POINTER_WRITABLE)
gg.clearResults()
gg.toast("high jump mp activated")
end

function B21()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,065,353,216;1,069,547,520;1,050,253,722:9", gg.TYPE_DWORD)
gg.refineNumber("1,065,353,216", 4)
 var = gg.getResults(9999)
gg.editAll("1,082,130,432", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("high jump br activated")
end

function B22()
local Lib = gg.getRangesList("libunity.so")
so = gg.getRangesList('libunity.so')[1].start
py = 0x80dd184
setvalue(so + py, 32, "h4000001CC0035FD6")
py = 0x80dd18c
setValues(so + py, 32, "h0000A041F30300AA")
gg.toast("snowboardboost activated")
end

function B23()
MAYAVIRED("libunity.so", 0x7BB235C, "h00 24 80 D2 C0 03 5F D6", 32)
gg.toast("120 ꜰᴘꜱ ᴀᴄᴛɪᴠᴀᴛᴇᴅ")
MAYAVIRED("libunity.so", 0x7BB2174, "hC0 03 5F D6 C0 03 5F D6", 32)
gg.toast("max frame rate activated")
end

function B24()
MAYAVIRED("libunity.so", 0x550547c, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x55ff848, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x56029a4, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x5603434, "h20 00 80 D2 C0 03 5F D6", 32);
gg.toast("long execution activated")
end

function B25()
MAYAVIRED("libunity.so", 0x550547C, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x5505480, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x55FF848, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x55FF84C, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x56029A4, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x56029A8, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x5603434, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x5603438, "h00 00 80 D2 C0 03 5F D6", 32);
gg.toast("red wallhack activated")
end

function B26()
MAYAVIRED("libunity.so", 0x8FC2084, "h00 00 80 D2 C0 03 5F D6", 32);
MAYAVIRED("libunity.so", 0x8FC2088, "h00 00 80 D2 C0 03 5F D6", 32);
gg.toast("unli ammo activated")
end

function B27()
MAYAVIRED("libunity.so", 0x8F888B0, "h00 00 80 D2 C0 03 5F D6", 32);
gg.toast("range extended activated")
end

function B28()
gg.clearResults()gg.setVisible(false)function SearchWrite(Search,Write,Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1],Type)count=gg.getResultCount()if count==0 then gg.toast('VALUE NOT FOUND')return false end result=gg.getResults(count)gg.clearResults()data={}base=Search[1][2]for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do tmp={}offset=Search[k][2]-base num=Search[k][1]for i,v in ipairs(result)do table.insert(tmp,{address=v.address+offset,flags=v.flags})end tmp=gg.getValues(tmp)for i,v in ipairs(tmp)do if tostring(v.value)~=tostring(num)then result[i].isUseful=false end end end for i,v in ipairs(result)do if v.isUseful then table.insert(data,v.address)end end if #data==0 then gg.toast('VALUE NOT FOUND')return false end gg.toast('VALUE FOUND '..#data..' EDITED')t={}for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base item={address=data[i]+offset,flags=Type,value=w[1]}if w[3]then item.freeze=true gg.addListItems({item})end table.insert(t,item)end end gg.setValues(t)end
DarkKnight = 999
 DarkKnight1 = 0
 DarkKnight2 = 0
 DarkKnight3 = 999
 DarkKnight4 = 1
 DarkKnight5 = 999
 DarkKnight6 = 999
 DarkKnight7 = 999
 DarkKnight8 = 4
 dataType = 16
 Name = "ANTENNA RED"
 tb1 = {{256.0, 0}, {3.0, 40}, {5.0, 68}}
 tb2 = {{DarkKnight, -80}, {DarkKnight1, -76}, {DarkKnight2, -72}, {DarkKnight3, -68}, {DarkKnight4, -64}, {DarkKnight5, -28}, {DarkKnight6, -24}, {DarkKnight7, 28}, {DarkKnight8, 20}}
gg.setRanges(128)
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
SearchWrite(tb1, tb2, dataType)
gg.toast("red antenna activated")
end

function B29()
MAYAVIRED("libunity.so", 0x9FBEAB4, "h497423F0", 32);
gg.toast("nigh mode activated")
end

function B30()
MAYAVIRED("libunity.so", 0x74B3094, "h1C000040", 32);
MAYAVIRED("libunity.so", 0x74B309C, "h41A00000", 32);
MAYAVIRED("libunity.so", 0x74B30A0, "hD65F03C0", 32);
MAYAVIRED("libunity.so", 0x7AED9F8, "h1C000040", 32);
MAYAVIRED("libunity.so", 0x7AED9FC, "hD65F03C0", 32);
MAYAVIRED("libunity.so", 0x7AEDA00, "h41A00000", 32);
gg.toast("smooth aimbot activated")
end

function B31()
MAYAVIRED("libunity.so", 0x78EEE3C, "hD2800000", 32);
MAYAVIRED("libunity.so", 0x78EEE40, "hD2800000", 32);
MAYAVIRED("libunity.so", 0x78EEE44, "hD65F03C0", 32);
gg.toast("anti report activated")
end

function B32()
MAYAVIRED("libunity.so", 0x81E158C, "hD2800000", 32);
MAYAVIRED("libunity.so", 0x81E1590, "hD65F03C0", 32);
gg.toast("fast swim activated")
end
	
function B33()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("0.1439999938", gg.TYPE_FLOAT)
gg.refineNumber("0.1439999938", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("0.1439999938", gg.TYPE_FLOAT)
gg.refineNumber("0.1439999938", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Magic Bullet Head Activated")
end

function B34()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("0.18500000238", gg.TYPE_FLOAT)
gg.refineNumber("0.18500000238", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("1.78500000238", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("0.18500000238", gg.TYPE_FLOAT)
gg.refineNumber("0.18500000238", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("1.78500000238", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Magic Bullet Body Activated")
end

function B35()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_DWORD)
gg.refineNumber("-999", gg.TYPE_DWORD)
gg.getResults(9999999)
gg.clearResults()
gg.editAll("0", gg.TYPE_QWORD)
gg.toast("wallshot activated")
end

function EXIT()
    gg.alert("Exiting Script")
    os.exit()
end

-- Start the script
function home() end
    local menu = gg.choice({
"                ════════════    \n                🛡️Lᴏɢᴏ Bʏᴘᴀss + Fɪx Cʀᴀsʜ 🛡️\n                ════════════    ",
"                ════════════    \n                     ☢️ Fᴇᴀᴛᴜʀᴇs ☢️\n                ════════════    ",
"                ════════════    \n                      🔫Skinhax🔫\n                ════════════    ",
"                ════════════    \n                         🚪Exɪᴛ 🚪\n             ════════════    "
    }, nil, os.date("\n[Cᴏᴅᴍ Gᴀʀᴇɴᴀ Fʀᴇᴇ Sᴄʀɪᴘᴛ Bʀᴏᴜɢʜᴛ ᴛᴏ Yᴏᴜ Bʏ Mᴀʏᴀᴠɪʀᴇᴅ]\n 📆ᴅᴀᴛᴇ: %A, %B %d %Y \n ⏲️ᴛɪᴍᴇ: %I:%M %p"))

if menu == nil then return end
if menu == 1 then A1() end
if menu == 2 then A2() end
if menu == 4 then A3() end
if menu == 5 then EXIT() end


while running do
if gg.isVisible(true) then
gg.setVisible(false)
home()
end
end

