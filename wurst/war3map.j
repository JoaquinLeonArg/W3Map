globals
//globals from String:
constant boolean LIBRARY_String=true
playercolor array String___PLAYER_COLORS
string array String___PLAYER_COLOR_STRINGS
constant string String___HEX_CHARS= "0123456789abcdef"
string String___COLOR_ENDING= "|r"
integer String___MIN_RAW_CODE= ' '
string String___RAW_CHARS= " !\"#$&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
//endglobals from String
//globals from TasButtonList:
constant boolean LIBRARY_TasButtonList=true
    //args for custom user actions
integer TasButtonListData= 0
string TasButtonListText= ""
boolean TasButtonListIsSearching= false
integer TasButtonListIndex= 0
framehandle TasButtonListFrame= null

    // System 
hashtable TasButtonList_Hash= InitHashtable()
integer TasButtonList___Counter= 0
trigger TasButtonList___SyncTrigger= CreateTrigger()
trigger TasButtonList___ButtonTrigger= CreateTrigger()
trigger TasButtonList___SearchTrigger= CreateTrigger()
trigger TasButtonList___ButtonScrollTrigger= CreateTrigger()
trigger TasButtonList___SliderTrigger= CreateTrigger()
integer TasButtonList___HASH_TOOL_TIP= StringHash("ToolTipFrame")
integer TasButtonList___HASH_TOOL_TIP_ICON= StringHash("ToolTipFrameIcon")
integer TasButtonList___HASH_TOOL_TIP_NAME= StringHash("ToolTipFrameName")
integer TasButtonList___HASH_TOOL_TIP_SEP= StringHash("ToolTipFrameSeperator")
integer TasButtonList___HASH_TOOL_TIP_TEXT= StringHash("ToolTipFrameText")
integer TasButtonList___HASH_ICON= StringHash("Icon")
integer TasButtonList___HASH_TEXT= StringHash("Text")
integer TasButtonList___HASH_ICON_GOLD= StringHash("IconGold")
integer TasButtonList___HASH_TEXT_GOLD= StringHash("TextGold")
integer TasButtonList___HASH_ICON_LUMBER= StringHash("IconLumber")
integer TasButtonList___HASH_TEXT_LUMBER= StringHash("TextLumber")

    // ButtonLists
framehandle array TasButtonListSlider
framehandle array TasButtonListParent
framehandle array TasButtonListInputFrame
framehandle array TasButtonListSyncFrame
integer array TasButtonListButtonCount
integer array TasButtonListStepSize
trigger array TasButtonListButtonAction
trigger array TasButtonListUpdateAction
trigger array TasButtonListSearchAction
trigger array TasButtonListFilterAction
integer array TasButtonListViewPoint
location array TasButtonListDataList
location array TasButtonListDataListFiltered
location array TasButtonListFrameList

    

//endglobals from TasButtonList

trigger l__library_init

//JASSHelper struct globals:

endglobals
native GetUnitGoldCost takes integer rawCode returns integer
native GetUnitWoodCost takes integer rawCode returns integer


//library String:
//String functions v1.04
//made by MaskedPoptart
//--------------------IMPORTANT FUNCTIONS------------------------
  
    function FindIndexFrom takes string mainString,string stringToFind,integer startingIndex returns integer
        local integer msLength= StringLength(mainString)
        local integer sfLength= StringLength(stringToFind)
        local integer i= startingIndex
        if ( sfLength > msLength or i < 0 ) then
            return - 1
        endif
        loop
            exitwhen i > msLength - sfLength
            if ( SubString(mainString, i, i + sfLength) == stringToFind ) then
                return i
            endif
            set i=i + 1
        endloop
        return - 1
    endfunction

    function FindIndex takes string mainString,string stringToFind returns integer
        return FindIndexFrom(mainString , stringToFind , 0)
    endfunction
  
    function FindLastIndexFrom takes string mainString,string stringToFind,integer startingIndex returns integer
        local integer msLength= StringLength(mainString)
        local integer sfLength= StringLength(stringToFind)
        local integer i= msLength - sfLength
        if ( startingIndex < i ) then
            set i=startingIndex
        endif
        if ( sfLength > msLength ) then
            return - 1
        endif
        loop
            exitwhen i < 0
            if ( SubString(mainString, i, i + sfLength) == stringToFind ) then
                return i
            endif
            set i=i - 1
        endloop
        return - 1
    endfunction

    function FindLastIndex takes string mainString,string stringToFind returns integer
        return FindLastIndexFrom(mainString , stringToFind , 2147483647)
    endfunction
  
//-----------------------COLOR FUNCTIONS ------------------------

    function String___Init takes nothing returns nothing
        local integer i= 0
        loop
            exitwhen i >= 12
            set String___PLAYER_COLORS[i]=ConvertPlayerColor(i)
            set i=i + 1
        endloop
        set String___PLAYER_COLOR_STRINGS[0]="|cffff0303"
        set String___PLAYER_COLOR_STRINGS[1]="|cff0042ff"
        set String___PLAYER_COLOR_STRINGS[2]="|cff1ce6b9"
        set String___PLAYER_COLOR_STRINGS[3]="|cff540081"
        set String___PLAYER_COLOR_STRINGS[4]="|cfffffc01"
        set String___PLAYER_COLOR_STRINGS[5]="|cfffe8a0e"
        set String___PLAYER_COLOR_STRINGS[6]="|cff20c000"
        set String___PLAYER_COLOR_STRINGS[7]="|cffe55bb0"
        set String___PLAYER_COLOR_STRINGS[8]="|cff959697"
        set String___PLAYER_COLOR_STRINGS[9]="|cff7ebff1"
        set String___PLAYER_COLOR_STRINGS[10]="|cff106246"
        set String___PLAYER_COLOR_STRINGS[11]="|cff4e2a04"
        set String___PLAYER_COLOR_STRINGS[12]="|cff272727"
        set String___PLAYER_COLOR_STRINGS[13]="|cff272727"
        set String___PLAYER_COLOR_STRINGS[14]="|cff272727"
    endfunction

    function PlayerColor2ColorString takes playercolor pc returns string
        local integer i= 0
        loop
            exitwhen i >= 12
            if ( String___PLAYER_COLORS[i] == pc ) then
                return String___PLAYER_COLOR_STRINGS[i]
            endif
            set i=i + 1
        endloop
        return String___PLAYER_COLOR_STRINGS[12]
    endfunction

    function GetPlayerColorString takes player p returns string
        return PlayerColor2ColorString(GetPlayerColor(p))
    endfunction

    function GetPlayerNameColored takes player p returns string
        return (PlayerColor2ColorString(GetPlayerColor((p)))) + GetPlayerName(p) + String___COLOR_ENDING // INLINED!!
    endfunction


    //please use responsibly
    function RemoveColorCode takes string mainString returns string
        local integer msLength= StringLength(mainString)
        if ( msLength < 12 ) then
            return mainString
        endif
        return SubString(mainString, 10, msLength - 2)
    endfunction

    function IBase2S takes integer base10Num,integer newBase returns string
        local integer placeNum
        local string newBaseString= ""
        loop
            exitwhen base10Num == 0
            set placeNum=ModuloInteger(base10Num, newBase)
            set newBaseString=SubString(String___HEX_CHARS, placeNum, placeNum + 1) + newBaseString
            set base10Num=base10Num / newBase
        endloop
        if ( newBaseString == "" ) then
            return "0"
        endif
        return newBaseString
    endfunction

    function SBase2I takes string oldBaseString,integer oldBase returns integer
        local integer base10Num= 0
        local integer placeNum
        local integer placeIndex= 0
        local integer i= StringLength(oldBaseString) - 1
        loop
            exitwhen i < 0
            set placeNum=FindLastIndexFrom(String___HEX_CHARS , SubString(oldBaseString, i, i + 1) , oldBase - 1)
            set base10Num=base10Num + placeNum * R2I(Pow(oldBase, placeIndex))
            set placeIndex=placeIndex + 1
            set i=i - 1
        endloop
        return base10Num
    endfunction

    function ConvertRGBToColorString takes integer red,integer green,integer blue returns string
        local string RR
        local string GG
        local string BB
        if ( red > 255 ) then
            set red=255
        endif
        if ( green > 255 ) then
            set green=255
        endif
        if ( blue > 255 ) then
            set blue=255
        endif
        set RR=IBase2S(red , 16)
        set GG=IBase2S(green , 16)
        set BB=IBase2S(blue , 16)
        if ( StringLength(RR) < 2 ) then
            set RR="0" + RR
        endif
        if ( StringLength(GG) < 2 ) then
            set GG="0" + GG
        endif
        if ( StringLength(BB) < 2 ) then
            set BB="0" + BB
        endif
        return "|cff" + RR + GG + BB
    endfunction

    function GetColoredString takes string str,integer r,integer g,integer b returns string
        return ConvertRGBToColorString(r , g , b) + str + String___COLOR_ENDING
    endfunction


//----------------------CHAT EVENT FUNCTIONS------------------------------

    function RemoveString takes string mainString,string toRemove returns string
        local integer i= 0
        local string currentString
        local integer msLength= StringLength(mainString)
        local integer trLength= StringLength(toRemove)
        if ( trLength > msLength ) then
            return mainString
        endif
        loop
            exitwhen i + trLength > msLength
            set currentString=SubString(mainString, i, i + trLength)
            if ( currentString == toRemove ) then
                if ( i + trLength <= msLength ) then
                    set mainString=SubString(mainString, 0, i) + SubString(mainString, i + trLength, msLength)
                else
                    set mainString=SubString(mainString, 0, i)
                endif
                set i=i - trLength
            endif
            set i=i + 1
        endloop
        return mainString
    endfunction

    function NumOccurances takes string mainString,string stringToFind returns integer
        local integer count= 0
        local integer i= 0
        local integer msLength= StringLength(mainString)
        local integer sfLength= StringLength(stringToFind)
        loop
            exitwhen ( i + sfLength ) > msLength
            if ( SubString(mainString, i, i + sfLength) == stringToFind ) then
                set count=count + 1
            endif
            set i=i + 1
        endloop
        return count
    endfunction

    function S2B takes string word returns boolean
        if ( word == "true" ) then
            return true
        endif
        return false
    endfunction 

    function S2Player takes string word returns player
        return Player(S2I(SubString(word, 1, StringLength(word))))
    endfunction
  
    function S2RawCode takes string str returns integer
        local integer rawCode= 0
        local integer placeNum
        local integer placeIndex= 0
        local integer i= StringLength(str) - 1
        loop
            exitwhen i < 0
            set placeNum=String___MIN_RAW_CODE + (FindIndexFrom((String___RAW_CHARS ) , ( SubString(str, i, i + 1)) , 0)) // INLINED!!
            //the char at index 0 of RAW_CHARS has ASCII value 32, so we need to offset each FindIndex by 32.
            set rawCode=rawCode + placeNum * R2I(Pow(256., placeIndex))
            set placeIndex=placeIndex + 1
            set i=i - 1
        endloop
        return rawCode
    endfunction

//-----------------------DEBUG FUNCTIONS-------------------------

    function B2S takes boolean bool returns string
        if ( bool ) then
            return "true"
        endif
        return "false"
    endfunction

    function Player2S takes player p returns string
        return "Player(" + I2S(GetPlayerId(p)) + ")"
    endfunction

    function Unit2S takes unit u returns string
        return GetUnitName(u) + "_" + I2S(GetHandleId(u) - 0x100000)
    endfunction

    function RawCode2S takes integer rawCode returns string
        local integer placeNum
        local string str= ""
        if ( rawCode < String___MIN_RAW_CODE ) then
            return str
        endif
        loop
            exitwhen rawCode == 0
            set placeNum=ModuloInteger(rawCode, 256) - String___MIN_RAW_CODE
            set str=SubString(String___RAW_CHARS, placeNum, placeNum + 1) + str
            set rawCode=rawCode / 256
        endloop
        return str
    endfunction

//library String ends
//library TasButtonList:
// TasButtonList7 by Tasyen

//function CreateTasButtonList takes integer buttonCount, framehandle parent, code buttonAction, code updateAction, code searchAction, code filterAction returns integer
 //create a new List
 //parent is the container of this Frame it will attach itself to its TOP.
 //the given functions are called over Triggers
 //buttonAction is the function that executes when an option is clicked.
 //when your data are unit-RawCodes then you can skip updateAction & searchAction.
 //updateAction runs for each Button and is used to set the diplayed content.

 //searchAction is a function that returns true if the current data matches the searchText.
 //filterAction is meant to be used when one wants an addtional non text based filtering, with returning true allowing data or false rejecting it.
 //searchAction , udateAction & filterAction are async this functions should not do anything that alters the game state/flow.

//function CreateTasButtonListV2 takes integer rowCount, framehandle parent, code buttonAction, code updateAction, code searchAction, code filterAction returns integer
  //  2 Buttons each Row, takes more Height then the other Versions
//function CreateTasButtonListV3 takes integer rowCount, framehandle parent, code buttonAction, code updateAction, code searchAction, code filterAction returns integer
  //  3 Buttons each Row, only Icon, and Costs

//function TasButtonListClearData takes integer listIndex returns nothing
  //  remove all data
//function TasButtonListRemoveData takes integer listIndex, integer data returns nothing
  //  search for data and remove it
//function TasButtonListAddData takes integer listIndex, integer data returns nothing
  //  add data for one Button
//function TasButtonListCopyData takes integer writeObject, integer readObject returns nothing
  //  writeObject uses the same data as readObject and calls UpdateButtonList.
//function UpdateTasButtonList takes integer listIndex returns nothing
  //  update the displayed Content should be done after Data was added or removed was used.
//function TasButtonListSearch takes integer listIndex, string text returns nothing
    // The buttonList will search it's data for the given text, if nil is given as text it will search for what the user currently has in its box.
    // This will also update the buttonList



// update the shown content
function UpdateTasButtonList takes integer listIndex returns nothing
    local integer dataHash= GetHandleId(TasButtonListDataList[listIndex])
    local integer frameListHash= GetHandleId(TasButtonListFrameList[listIndex])
    local integer filteredDataHash= GetHandleId(TasButtonListDataListFiltered[listIndex])
    local integer dataFilteredCount= LoadInteger(TasButtonList_Hash, filteredDataHash, 0)
    
    local integer i= 1

    call BlzFrameSetVisible(TasButtonListSlider[listIndex], dataFilteredCount > TasButtonListButtonCount[listIndex])
    loop
        exitwhen i > TasButtonListButtonCount[listIndex]
        set TasButtonListFrame=LoadFrameHandle(TasButtonList_Hash, frameListHash, i)
        
        if dataFilteredCount >= i then
            set TasButtonListData=LoadInteger(TasButtonList_Hash, dataHash, LoadInteger(TasButtonList_Hash, filteredDataHash, i + TasButtonListViewPoint[listIndex]))
            call TriggerEvaluate(TasButtonListUpdateAction[listIndex])
            call BlzFrameSetVisible(TasButtonListFrame, true)
        else
            call BlzFrameSetVisible(TasButtonListFrame, false)
        endif
        set i=i + 1
    endloop

endfunction

function TasButtonListSearch takes integer listIndex,string text returns nothing
    local integer filteredDataHash= GetHandleId(TasButtonListDataListFiltered[listIndex])
    local integer dataHash= GetHandleId(TasButtonListDataList[listIndex])
    local integer filteredDataCount
    
    local integer i
    local integer iEnd
    if text == null or text == "" then
        set text=BlzFrameGetText(TasButtonListInputFrame[listIndex])
    endif
    if GetLocalPlayer() == GetTriggerPlayer() then
        set TasButtonListText=text
        set TasButtonListIndex=listIndex
        call FlushChildHashtable(TasButtonList_Hash, filteredDataHash)
        set filteredDataCount=0
        if text != "" then
            set TasButtonListIsSearching=true
            set iEnd=LoadInteger(TasButtonList_Hash, dataHash, 0)
            set i=1
            loop
                exitwhen i > iEnd
                set TasButtonListData=LoadInteger(TasButtonList_Hash, dataHash, i)
                if TriggerEvaluate(TasButtonListSearchAction[listIndex]) and TriggerEvaluate(TasButtonListFilterAction[listIndex]) then
                    set filteredDataCount=filteredDataCount + 1
                    call SaveInteger(TasButtonList_Hash, filteredDataHash, filteredDataCount, i)
                endif
                set i=i + 1
            endloop
            call SaveInteger(TasButtonList_Hash, filteredDataHash, 0, filteredDataCount)
        else
            set TasButtonListIsSearching=false
            set iEnd=LoadInteger(TasButtonList_Hash, dataHash, 0)
            set i=1
            loop
                exitwhen i > iEnd
                set TasButtonListData=LoadInteger(TasButtonList_Hash, dataHash, i)
                if TriggerEvaluate(TasButtonListFilterAction[listIndex]) then
                    set filteredDataCount=filteredDataCount + 1
                    call SaveInteger(TasButtonList_Hash, filteredDataHash, filteredDataCount, i)
                endif
                set i=i + 1
            endloop
            call SaveInteger(TasButtonList_Hash, filteredDataHash, 0, filteredDataCount)
        endif
        

        //update Slider, with that also update
        call BlzFrameSetMinMaxValue(TasButtonListSlider[listIndex], 0, IMaxBJ(filteredDataCount - ( TasButtonListButtonCount[listIndex] + 0 ), 0))
        call BlzFrameSetValue(TasButtonListSlider[listIndex], 0)
    endif
endfunction

function TasButtonListTriggerActionSync takes nothing returns nothing
    local integer listIndex= LoadInteger(TasButtonList_Hash, GetHandleId(BlzGetTriggerFrame()), 0)
    local integer dataIndex= R2I(BlzGetTriggerFrameValue() + 0.5)
    
    set TasButtonListData=LoadInteger(TasButtonList_Hash, GetHandleId(TasButtonListDataList[listIndex]), dataIndex)
    set TasButtonListIndex=listIndex
    call TriggerExecute(TasButtonListButtonAction[listIndex])

    call UpdateTasButtonList(listIndex)
endfunction

function TasButtonListTriggerActionButton takes nothing returns nothing
    local integer buttonIndex= LoadInteger(TasButtonList_Hash, GetHandleId(BlzGetTriggerFrame()), 1)
    local integer listIndex= LoadInteger(TasButtonList_Hash, GetHandleId(BlzGetTriggerFrame()), 0)
    local integer dataIndex= LoadInteger(TasButtonList_Hash, GetHandleId(TasButtonListDataListFiltered[listIndex]), buttonIndex + TasButtonListViewPoint[listIndex])
    call BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    call BlzFrameSetEnable(BlzGetTriggerFrame(), true)
    if GetLocalPlayer() == GetTriggerPlayer() then
       call BlzFrameSetValue(TasButtonListSyncFrame[listIndex], dataIndex)
    endif
endfunction

function TasButtonListTriggerActionSearch takes nothing returns nothing
    call TasButtonListSearch(LoadInteger(TasButtonList_Hash, GetHandleId(BlzGetTriggerFrame()), 0) , null)
endfunction

// scrolling while pointing on Buttons
function TasButtonListTriggerActionButtonScroll takes nothing returns nothing
    local integer listIndex= LoadInteger(TasButtonList_Hash, GetHandleId(BlzGetTriggerFrame()), 0)
    local framehandle frame= TasButtonListSlider[listIndex]

    if GetLocalPlayer() == GetTriggerPlayer() then
        if BlzGetTriggerFrameValue() > 0 then
            call BlzFrameSetValue(frame, BlzFrameGetValue(frame) + TasButtonListStepSize[listIndex])
        else
            call BlzFrameSetValue(frame, BlzFrameGetValue(frame) - TasButtonListStepSize[listIndex])
        endif
    endif
    set frame=null
endfunction

// scrolling while pointing on slider aswell as calling
function TasButtonListTriggerActionSlider takes nothing returns nothing
    local integer listIndex= LoadInteger(TasButtonList_Hash, GetHandleId(BlzGetTriggerFrame()), 0)
    local framehandle frame= BlzGetTriggerFrame()
    if GetLocalPlayer() == GetTriggerPlayer() then
        if BlzGetTriggerFrameEvent() == FRAMEEVENT_MOUSE_WHEEL then
            if BlzGetTriggerFrameValue() > 0 then
                call BlzFrameSetValue(frame, BlzFrameGetValue(frame) + TasButtonListStepSize[listIndex])
            else
                call BlzFrameSetValue(frame, BlzFrameGetValue(frame) - TasButtonListStepSize[listIndex])
            endif
        else
            set TasButtonListViewPoint[listIndex]=R2I(BlzGetTriggerFrameValue())
            call UpdateTasButtonList(listIndex)
        endif
    endif
    set frame=null
endfunction

// runs once for each button shown
function UpdateTasButtonListDefaultObject takes nothing returns nothing
//TasButtonListFrame
//TasButtonListData
//TasButtonListIndex
    local integer frameHandle= GetHandleId(TasButtonListFrame)
    local integer data= TasButtonListData
    local integer lumber
    local integer gold
 
    call BlzFrameSetTexture(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON), BlzGetAbilityIcon(data), 0, false)
    call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT), GetObjectName(data))

    call BlzFrameSetTexture(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_ICON), BlzGetAbilityIcon(data), 0, false)
    call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_NAME), GetObjectName(data))
    call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_TEXT), BlzGetAbilityExtendedTooltip(data, 0))

    if not IsUnitIdType(data, UNIT_TYPE_HERO) then
        // GetUnitWoodCost GetUnitGoldCost CRASH with heroes
        set lumber=GetUnitWoodCost(data)
        set gold=GetUnitGoldCost(data)
        if GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_GOLD) >= gold then
            call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD), I2S(GetUnitGoldCost(data)))
        else
            call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD), "|cffff2010" + I2S(GetUnitGoldCost(data)))
        endif
        
        if GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_LUMBER) >= lumber then
           call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER), I2S(GetUnitWoodCost(data)))
        else
           call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER), "|cffff2010" + I2S(GetUnitWoodCost(data)))
        endif
    else
        call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER), "0")
        call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD), "0")
    endif
endfunction

function SearchTasButtonListDefaultObject takes nothing returns boolean
//TasButtonListText
//TasButtonListData
//TasButtonListIndex
    return (FindIndexFrom((GetObjectName(TasButtonListData) ) , ( TasButtonListText) , 0)) >= 0 // INLINED!!
endfunction


function InitTasButtonListObject takes framehandle parent,code buttonAction,code updateAction,code searchAction,code filterAction returns integer
    local framehandle frame
    set TasButtonList___Counter=TasButtonList___Counter + 1
    // the locations are created to have an unique slot in the hash which are used as something like a Lua table.
    set TasButtonListDataList[TasButtonList___Counter]=Location(0, 0) // 
    set TasButtonListDataListFiltered[TasButtonList___Counter]=Location(0, 0) //
    set TasButtonListFrameList[TasButtonList___Counter]=Location(0, 0) //
    set TasButtonListParent[TasButtonList___Counter]=parent
    set TasButtonListViewPoint[TasButtonList___Counter]=0

    set TasButtonListButtonAction[TasButtonList___Counter]=CreateTrigger() //call this inside the SyncAction after a button is clicked
    set TasButtonListUpdateAction[TasButtonList___Counter]=CreateTrigger() //function defining how to display stuff (async)
    set TasButtonListFilterAction[TasButtonList___Counter]=CreateTrigger() //function to return the searched Text (async)
    set TasButtonListSearchAction[TasButtonList___Counter]=CreateTrigger()
    call TriggerAddAction(TasButtonListButtonAction[TasButtonList___Counter], buttonAction)
    
    // update is a condition with it can be run with TriggerEvaluate in localPlayer code. TriggerExecute would desync
    if updateAction == null then
        call TriggerAddCondition(TasButtonListUpdateAction[TasButtonList___Counter], Filter(function UpdateTasButtonListDefaultObject))
    else
        call TriggerAddCondition(TasButtonListUpdateAction[TasButtonList___Counter], Filter(updateAction))
    endif

    if searchAction == null then
        call TriggerAddCondition(TasButtonListSearchAction[TasButtonList___Counter], Filter(function SearchTasButtonListDefaultObject))
    else
        call TriggerAddCondition(TasButtonListSearchAction[TasButtonList___Counter], Filter(searchAction))
    endif
    if filterAction != null then
        call TriggerAddCondition(TasButtonListFilterAction[TasButtonList___Counter], Filter(filterAction))
    endif
    
    set frame=BlzCreateFrameByType("SLIDER", "", parent, "", 0)
    set TasButtonListSyncFrame[TasButtonList___Counter]=frame
    call BlzFrameSetMinMaxValue(frame, 0, 9999999)
    call BlzFrameSetStepSize(frame, 1.0)
    call BlzTriggerRegisterFrameEvent(TasButtonList___SyncTrigger, frame, FRAMEEVENT_SLIDER_VALUE_CHANGED)
    call BlzFrameSetVisible(frame, false)
    call SaveInteger(TasButtonList_Hash, GetHandleId(frame), 0, TasButtonList___Counter)

    set frame=BlzCreateFrame("TasEditBox", parent, 0, 0)
    set TasButtonListInputFrame[TasButtonList___Counter]=frame
    call BlzTriggerRegisterFrameEvent(TasButtonList___SearchTrigger, frame, FRAMEEVENT_EDITBOX_TEXT_CHANGED)
    call BlzFrameSetPoint(frame, FRAMEPOINT_TOPRIGHT, parent, FRAMEPOINT_TOPRIGHT, 0, 0)
    call SaveInteger(TasButtonList_Hash, GetHandleId(frame), 0, TasButtonList___Counter)

    set frame=null
    return TasButtonList___Counter
endfunction

function InitTasButtonListSlider takes integer listIndex,integer stepSize,integer rowCount returns nothing
    local framehandle frame= BlzCreateFrameByType("SLIDER", "FrameListSlider", TasButtonListParent[listIndex], "QuestMainListScrollBar", 0)
    local framehandle buttonFrame= LoadFrameHandle(TasButtonList_Hash, GetHandleId(TasButtonListFrameList[listIndex]), 1)
    set TasButtonListSlider[listIndex]=frame
    call SaveInteger(TasButtonList_Hash, GetHandleId(frame), 0, listIndex) // the slider nows the TasButtonListobject
    set TasButtonListStepSize[listIndex]=stepSize
    
    call BlzFrameSetStepSize(frame, stepSize)
    call BlzFrameClearAllPoints(frame)
    call BlzFrameSetVisible(frame, true)
    call BlzFrameSetMinMaxValue(frame, 0, 0)
    call BlzFrameSetPoint(frame, FRAMEPOINT_TOPLEFT, buttonFrame, FRAMEPOINT_TOPRIGHT, 0, 0)
    call BlzFrameSetSize(frame, 0.012, BlzFrameGetHeight(buttonFrame) * rowCount)
    call BlzTriggerRegisterFrameEvent(TasButtonList___SliderTrigger, frame, FRAMEEVENT_SLIDER_VALUE_CHANGED)
    call BlzTriggerRegisterFrameEvent(TasButtonList___SliderTrigger, frame, FRAMEEVENT_MOUSE_WHEEL)
endfunction

function CreateTasButtonList takes integer buttonCount,framehandle parent,code buttonAction,code updateAction,code searchAction,code filterAction returns integer
    local integer listIndex= InitTasButtonListObject(parent , buttonAction , updateAction , searchAction , filterAction)
    local integer i= 1
    local integer frameListHash= GetHandleId(TasButtonListFrameList[listIndex])
    local framehandle frame
    local framehandle frameButton
    local integer frameHandle

    set TasButtonListButtonCount[listIndex]=buttonCount
    loop
        exitwhen i > buttonCount
        
        set frame=BlzCreateFrame("TasButton", parent, 0, 0)
        set frameHandle=GetHandleId(frame)
        call SaveFrameHandle(TasButtonList_Hash, frameListHash, i, frame)
        call SaveInteger(TasButtonList_Hash, frameHandle, 0, listIndex) // the button knows the TasButtonListIndex
        call SaveInteger(TasButtonList_Hash, frameHandle, 1, i) // the button knows its index in the frameList
        call BlzTriggerRegisterFrameEvent(TasButtonList___ButtonTrigger, frame, FRAMEEVENT_CONTROL_CLICK)
        call BlzTriggerRegisterFrameEvent(TasButtonList___ButtonScrollTrigger, frame, FRAMEEVENT_MOUSE_WHEEL)
        set frameButton=frame

        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON, BlzGetFrameByName("TasButtonIcon", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT, BlzGetFrameByName("TasButtonText", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON_GOLD, BlzGetFrameByName("TasButtonIconGold", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD, BlzGetFrameByName("TasButtonTextGold", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON_LUMBER, BlzGetFrameByName("TasButtonIconLumber", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER, BlzGetFrameByName("TasButtonTextLumber", 0))

        set frame=BlzCreateFrame("TasButtonListTooltipBox", frameButton, 0, 0)

        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP, frame)
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_ICON, BlzGetFrameByName("TasButtonListTooltipIcon", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_NAME, BlzGetFrameByName("TasButtonListTooltipName", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_SEP, BlzGetFrameByName("TasButtonListTooltipSeperator", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_TEXT, BlzGetFrameByName("TasButtonListTooltipText", 0))

        call BlzFrameSetPoint(frame, FRAMEPOINT_TOPRIGHT, parent, FRAMEPOINT_TOPLEFT, - 0.001, 0)
        call BlzFrameSetTooltip(frameButton, frame)
        
        if i > 1 then
           call BlzFrameSetPoint(frameButton, FRAMEPOINT_TOP, LoadFrameHandle(TasButtonList_Hash, frameListHash, i - 1), FRAMEPOINT_BOTTOM, 0, - 0)
        else
            call BlzFrameSetPoint(frameButton, FRAMEPOINT_TOPRIGHT, TasButtonListInputFrame[listIndex], FRAMEPOINT_BOTTOMRIGHT, 0, 0)
        endif
        set i=i + 1
    endloop
    call InitTasButtonListSlider(listIndex , 1 , buttonCount)
    set frame=null
    set frameButton=null
    return listIndex
endfunction

function CreateTasButtonListV2 takes integer rowCount,framehandle parent,code buttonAction,code updateAction,code searchAction,code filterAction returns integer
    local integer buttonCount= rowCount * 2
    local integer listIndex= InitTasButtonListObject(parent , buttonAction , updateAction , searchAction , filterAction)
    local integer i= 1
    local integer frameListHash= GetHandleId(TasButtonListFrameList[listIndex])
    local framehandle frame
    local framehandle frameButton
    local integer frameHandle
    local boolean rowEnd= false
    set TasButtonListButtonCount[listIndex]=buttonCount
    loop
        exitwhen i > buttonCount
        
        set frame=BlzCreateFrame("TasButtonSmall", parent, 0, 0)
        set frameHandle=GetHandleId(frame)
        call SaveFrameHandle(TasButtonList_Hash, frameListHash, i, frame)
        call SaveInteger(TasButtonList_Hash, frameHandle, 0, listIndex) // the button knows the TasButtonListIndex
        call SaveInteger(TasButtonList_Hash, frameHandle, 1, i) // the button knows its index in the frameList
        call BlzTriggerRegisterFrameEvent(TasButtonList___ButtonTrigger, frame, FRAMEEVENT_CONTROL_CLICK)
        call BlzTriggerRegisterFrameEvent(TasButtonList___ButtonScrollTrigger, frame, FRAMEEVENT_MOUSE_WHEEL)
        set frameButton=frame

        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON, BlzGetFrameByName("TasButtonSmallIcon", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT, BlzGetFrameByName("TasButtonSmallText", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON_GOLD, BlzGetFrameByName("TasButtonSmallIconGold", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD, BlzGetFrameByName("TasButtonSmallTextGold", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON_LUMBER, BlzGetFrameByName("TasButtonSmallIconLumber", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER, BlzGetFrameByName("TasButtonSmallTextLumber", 0))

        set frame=BlzCreateFrame("TasButtonListTooltipBox", frameButton, 0, 0)

        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP, frame)
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_ICON, BlzGetFrameByName("TasButtonListTooltipIcon", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_NAME, BlzGetFrameByName("TasButtonListTooltipName", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_SEP, BlzGetFrameByName("TasButtonListTooltipSeperator", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_TEXT, BlzGetFrameByName("TasButtonListTooltipText", 0))

        call BlzFrameSetPoint(frame, FRAMEPOINT_TOPRIGHT, parent, FRAMEPOINT_TOPLEFT, - 0.001, 0)
        call BlzFrameSetTooltip(frameButton, frame)
        
        set rowEnd=not rowEnd
        if i > 1 then
            if rowEnd then
                call BlzFrameSetPoint(frameButton, FRAMEPOINT_TOP, LoadFrameHandle(TasButtonList_Hash, frameListHash, i - 2), FRAMEPOINT_BOTTOM, 0, - 0)
            else
                call BlzFrameSetPoint(frameButton, FRAMEPOINT_RIGHT, LoadFrameHandle(TasButtonList_Hash, frameListHash, i - 1), FRAMEPOINT_LEFT, 0, - 0)
            endif
        else
            call BlzFrameSetPoint(frameButton, FRAMEPOINT_TOPRIGHT, TasButtonListInputFrame[listIndex], FRAMEPOINT_BOTTOMRIGHT, 0, 0)
        endif

        set i=i + 1
    endloop
    call InitTasButtonListSlider(listIndex , 2 , rowCount)
    set frame=null
    set frameButton=null
    return listIndex
endfunction

function CreateTasButtonListV3 takes integer rowCount,framehandle parent,code buttonAction,code updateAction,code searchAction,code filterAction returns integer
    local integer buttonCount= rowCount * 3
    local integer listIndex= InitTasButtonListObject(parent , buttonAction , updateAction , searchAction , filterAction)
    local integer i= 1
    local integer frameListHash= GetHandleId(TasButtonListFrameList[listIndex])
    local framehandle frame
    local framehandle frameButton
    local integer frameHandle

    local integer rowRemain= 3
    set TasButtonListButtonCount[listIndex]=buttonCount
    loop
        exitwhen i > buttonCount
        
        set frame=BlzCreateFrame("TasButtonGrid", parent, 0, 0)
        set frameHandle=GetHandleId(frame)
        call SaveFrameHandle(TasButtonList_Hash, frameListHash, i, frame)
        call SaveInteger(TasButtonList_Hash, frameHandle, 0, listIndex) // the button knows the TasButtonListIndex
        call SaveInteger(TasButtonList_Hash, frameHandle, 1, i) // the button knows its index in the frameList
        call BlzTriggerRegisterFrameEvent(TasButtonList___ButtonTrigger, frame, FRAMEEVENT_CONTROL_CLICK)
        call BlzTriggerRegisterFrameEvent(TasButtonList___ButtonScrollTrigger, frame, FRAMEEVENT_MOUSE_WHEEL)
        set frameButton=frame

        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON, BlzGetFrameByName("TasButtonGridIcon", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT, BlzGetFrameByName("TasButtonGridText", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON_GOLD, BlzGetFrameByName("TasButtonGridIconGold", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD, BlzGetFrameByName("TasButtonGridTextGold", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON_LUMBER, BlzGetFrameByName("TasButtonGridIconLumber", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER, BlzGetFrameByName("TasButtonGridTextLumber", 0))

        set frame=BlzCreateFrame("TasButtonListTooltipBox", frameButton, 0, 0)

        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP, frame)
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_ICON, BlzGetFrameByName("TasButtonListTooltipIcon", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_NAME, BlzGetFrameByName("TasButtonListTooltipName", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_SEP, BlzGetFrameByName("TasButtonListTooltipSeperator", 0))
        call SaveFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_TEXT, BlzGetFrameByName("TasButtonListTooltipText", 0))

        call BlzFrameSetPoint(frame, FRAMEPOINT_TOPRIGHT, parent, FRAMEPOINT_TOPLEFT, - 0.001, 0)
        call BlzFrameSetTooltip(frameButton, frame)
        

        if i > 1 then
            if rowRemain == 0 then
                call BlzFrameSetPoint(frameButton, FRAMEPOINT_TOP, LoadFrameHandle(TasButtonList_Hash, frameListHash, i - 3), FRAMEPOINT_BOTTOM, 0, - 0)
                set rowRemain=3
            else
                call BlzFrameSetPoint(frameButton, FRAMEPOINT_RIGHT, LoadFrameHandle(TasButtonList_Hash, frameListHash, i - 1), FRAMEPOINT_LEFT, 0, - 0)
            endif
        else
            call BlzFrameSetPoint(frameButton, FRAMEPOINT_TOPRIGHT, TasButtonListInputFrame[listIndex], FRAMEPOINT_BOTTOMRIGHT, 0, 0)
        endif
        set rowRemain=rowRemain - 1


        set i=i + 1
    endloop
    call InitTasButtonListSlider(listIndex , 3 , rowCount)
    set frame=null
    set frameButton=null
    return listIndex
endfunction

function TasButtonListAddData takes integer listIndex,integer data returns nothing
    local integer listHandle= GetHandleId(TasButtonListDataList[listIndex])
    local integer index= LoadInteger(TasButtonList_Hash, listHandle, 0) + 1
    call SaveInteger(TasButtonList_Hash, listHandle, 0, index)
    call SaveInteger(TasButtonList_Hash, listHandle, index, data)
    set listHandle=GetHandleId(TasButtonListDataListFiltered[listIndex])
    call SaveInteger(TasButtonList_Hash, listHandle, 0, index)
    call SaveInteger(TasButtonList_Hash, listHandle, index, index)
    call BlzFrameSetMinMaxValue(TasButtonListSlider[listIndex], 0, IMaxBJ(index - ( TasButtonListButtonCount[listIndex] + 0 ), 0))
endfunction

function TasButtonListCopyData takes integer writeObject,integer readObject returns nothing
    local integer i= LoadInteger(TasButtonList_Hash, GetHandleId(TasButtonListDataListFiltered[readObject]), 0)
    local integer listHandleRead= GetHandleId(TasButtonListDataListFiltered[readObject])
    local integer listHandleWrite= GetHandleId(TasButtonListDataListFiltered[writeObject])
    call FlushChildHashtable(TasButtonList_Hash, GetHandleId(TasButtonListDataList[writeObject]))
    call RemoveLocation(TasButtonListDataList[writeObject])
    set TasButtonListDataList[writeObject]=TasButtonListDataList[readObject]
    loop
        exitwhen i < 0
        call SaveInteger(TasButtonList_Hash, listHandleWrite, i, LoadInteger(TasButtonList_Hash, listHandleRead, i))
        set i=i - 1
    endloop
    
    call BlzFrameSetMinMaxValue(TasButtonListSlider[writeObject], 0, IMaxBJ(LoadInteger(TasButtonList_Hash, listHandleRead, 0) - ( TasButtonListButtonCount[writeObject] + 0 ), 0))
    call UpdateTasButtonList(writeObject)
endfunction


function TasButtonListRemoveData takes integer listIndex,integer data returns nothing
    local integer listHandle= GetHandleId(TasButtonListDataList[listIndex])
    local integer i= LoadInteger(TasButtonList_Hash, listHandle, 0)
    local integer max= LoadInteger(TasButtonList_Hash, listHandle, 0)
    local integer temp
    loop
        exitwhen i <= 0
        if LoadInteger(TasButtonList_Hash, listHandle, 0) == data then
            call SaveInteger(TasButtonList_Hash, listHandle, i, LoadInteger(TasButtonList_Hash, listHandle, max))
            call RemoveSavedInteger(TasButtonList_Hash, listHandle, max)
            exitwhen true
        endif
        set i=i - 1
    endloop
    call BlzFrameSetMinMaxValue(TasButtonListSlider[listIndex], 0, IMaxBJ(LoadInteger(TasButtonList_Hash, listHandle, 0) - ( TasButtonListButtonCount[listIndex] + 0 ), 0))
endfunction

function TasButtonListClearData takes integer listIndex returns nothing
    call FlushChildHashtable(TasButtonList_Hash, GetHandleId(TasButtonListDataList[listIndex]))
    call FlushChildHashtable(TasButtonList_Hash, GetHandleId(TasButtonListDataListFiltered[listIndex]))
    call BlzFrameSetMinMaxValue(TasButtonListSlider[listIndex], 0, 0)
endfunction

 function TasButtonList___Init takes nothing returns nothing
    call BlzLoadTOCFile("war3mapimported\\TasButtonList.toc")
    call TriggerAddAction(TasButtonList___SyncTrigger, function TasButtonListTriggerActionSync)
    call TriggerAddAction(TasButtonList___ButtonTrigger, function TasButtonListTriggerActionButton)
    call TriggerAddAction(TasButtonList___SearchTrigger, function TasButtonListTriggerActionSearch)
    call TriggerAddAction(TasButtonList___ButtonScrollTrigger, function TasButtonListTriggerActionButtonScroll)
    call TriggerAddAction(TasButtonList___SliderTrigger, function TasButtonListTriggerActionSlider)
    


endfunction


//library TasButtonList ends
//===========================================================================
// 
// Wurst Example Map
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Wurst Team
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//***************************************************************************
//*  String
//***************************************************************************
//*  TAS




//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'Hblm', - 126.6, 102.2, 228.600, 'Hblm')
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreateUnitsForPlayer0() // INLINED!!
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("String___Init")
call ExecuteFunc("TasButtonList___Init")

    call InitGlobals()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_008")
    call SetMapDescription("")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 128.0, 64.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call InitGenericPlayerSlots()
endfunction




//Struct method generated initializers/callers:

