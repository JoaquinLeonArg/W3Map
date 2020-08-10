globals
//globals from DamageInterface:
constant boolean LIBRARY_DamageInterface=true
        // Used by the Evasion system to avoid evaluating the Attack
        // trigger if an attack is evaded
boolean evade= false
        // This constant is used to define if the system will cache
        // extra information from a Damage Event, like the unit
        // Custom value (UnitUserData), a unit Handle Id, and more
        // Additionaly you can see the CacheResponse method below
        // to have an idea and comment the members you want cached or not
constant boolean DamageInterface___CACHE_EXTRA= true
//endglobals from DamageInterface
//globals from RegisterPlayerUnitEvent:
constant boolean LIBRARY_RegisterPlayerUnitEvent=true
trigger array RegisterPlayerUnitEvent__t
//endglobals from RegisterPlayerUnitEvent
//globals from String:
constant boolean LIBRARY_String=true
playercolor array String___PLAYER_COLORS
string array String___PLAYER_COLOR_STRINGS
constant string String___HEX_CHARS= "0123456789abcdef"
string String___COLOR_ENDING= "|r"
integer String___MIN_RAW_CODE= ' '
string String___RAW_CHARS= " !\"#$&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
//endglobals from String
//globals from Evasion:
constant boolean LIBRARY_Evasion=true
//endglobals from Evasion
//globals from LifeSteal:
constant boolean LIBRARY_LifeSteal=true
//endglobals from LifeSteal
//globals from SpellPower:
constant boolean LIBRARY_SpellPower=true
//endglobals from SpellPower
//globals from SpellVamp:
constant boolean LIBRARY_SpellVamp=true
//endglobals from SpellVamp
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
//globals from CriticalStrike:
constant boolean LIBRARY_CriticalStrike=true
//endglobals from CriticalStrike
//globals from NewBonus:
constant boolean LIBRARY_NewBonus=true
            //The bonus types
constant integer BONUS_DAMAGE= 1
constant integer BONUS_ARMOR= 2
constant integer BONUS_AGILITY= 3
constant integer BONUS_STRENGTH= 4
constant integer BONUS_INTELLIGENCE= 5
constant integer BONUS_HEALTH= 6
constant integer BONUS_MANA= 7
constant integer BONUS_MOVEMENT_SPEED= 8
constant integer BONUS_SIGHT_RANGE= 9
constant integer BONUS_HEALTH_REGEN= 10
constant integer BONUS_MANA_REGEN= 11
constant integer BONUS_ATTACK_SPEED= 12
constant integer BONUS_MAGIC_RESISTANCE= 13
            //expanded bonus types not linked to abilities
constant integer BONUS_EVASION_CHANCE= 14
constant integer BONUS_MISS_CHANCE= 15
constant integer BONUS_CRITICAL_CHANCE= 16
constant integer BONUS_CRITICAL_DAMAGE= 17
constant integer BONUS_SPELL_POWER_FLAT= 18
constant integer BONUS_SPELL_POWER_PERCENT= 19
constant integer BONUS_LIFE_STEAL= 20
constant integer BONUS_SPELL_VAMP= 21
            //constant integer BONUS_COOLDOWN_REDUCTION      = 22
            //constant integer BONUS_COOLDOWN_REDUCTION_FLAT = 23
            //constant integer BONUS_COOLDOWN_OFFSET         = 24
        
            //The abilities codes for each bonus
            //When pasting the abilities over to your map
            //their raw code should match the bonus here
constant integer NewBonus__DAMAGE_ABILITY= 'A003'
constant integer NewBonus__ARMOR_ABILITY= 'A001'
constant integer NewBonus__STATS_ABILITY= 'A000'
constant integer NewBonus__HEALTH_ABILITY= 'A004'
constant integer NewBonus__MANA_ABILITY= 'A006'
constant integer NewBonus__HEALTHREGEN_ABILITY= 'A009'
constant integer NewBonus__MANAREGEN_ABILITY= 'A00A'
constant integer NewBonus__ATTACKSPEED_ABILITY= 'A002'
constant integer NewBonus__MOVEMENTSPEED_ABILITY= 'A007'
constant integer NewBonus__SIGHT_RANGE_ABILITY= 'A008'
constant integer NewBonus__MAGIC_RESISTANCE_ABILITY= 'A005'
        
            //The abilities fields that are modified. For the sake of readability
constant abilityintegerlevelfield NewBonus__DAMAGE_FIELD= ABILITY_ILF_ATTACK_BONUS
constant abilityintegerlevelfield NewBonus__ARMOR_FIELD= ABILITY_ILF_DEFENSE_BONUS_IDEF
constant abilityintegerlevelfield NewBonus__AGILITY_FIELD= ABILITY_ILF_AGILITY_BONUS
constant abilityintegerlevelfield NewBonus__STRENGTH_FIELD= ABILITY_ILF_STRENGTH_BONUS_ISTR
constant abilityintegerlevelfield NewBonus__INTELLIGENCE_FIELD= ABILITY_ILF_INTELLIGENCE_BONUS
constant abilityintegerlevelfield NewBonus__HEALTH_FIELD= ABILITY_ILF_MAX_LIFE_GAINED
constant abilityintegerlevelfield NewBonus__MANA_FIELD= ABILITY_ILF_MAX_MANA_GAINED
constant abilityintegerlevelfield NewBonus__MOVEMENTSPEED_FIELD= ABILITY_ILF_MOVEMENT_SPEED_BONUS
constant abilityintegerlevelfield NewBonus__SIGHT_RANGE_FIELD= ABILITY_ILF_SIGHT_RANGE_BONUS
constant abilityreallevelfield NewBonus__HEALTHREGEN_FIELD= ABILITY_RLF_AMOUNT_OF_HIT_POINTS_REGENERATED
constant abilityreallevelfield NewBonus__MANAREGEN_FIELD= ABILITY_RLF_AMOUNT_REGENERATED
constant abilityreallevelfield NewBonus__ATTACKSPEED_FIELD= ABILITY_RLF_ATTACK_SPEED_INCREASE_ISX1
constant abilityreallevelfield NewBonus__MAGIC_RESISTANCE_FIELD= ABILITY_RLF_DAMAGE_REDUCTION_ISR2
//endglobals from NewBonus
//globals from NewBonusUtils:
constant boolean LIBRARY_NewBonusUtils=true
//endglobals from NewBonusUtils
    // Generated
rect gg_rct_WeaponsShop= null
rect gg_rct_MagicShop= null
rect gg_rct_DefenseShop= null
rect gg_rct_GeneralShop= null
rect gg_rct_RecipesShop= null
rect gg_rct_LeaveShop= null
rect gg_rct_AttackPoint= null

trigger l__library_init

//JASSHelper struct globals:
constant integer si__DamageI=1
integer si__DamageI_F=0
integer si__DamageI_I=0
integer array si__DamageI_V
trigger s__DamageI_Attack= CreateTrigger()
trigger s__DamageI_Spell= CreateTrigger()
trigger s__DamageI_Pure= CreateTrigger()
trigger s__DamageI_Enhanced= CreateTrigger()
trigger s__DamageI_Damaged= CreateTrigger()
trigger s__DamageI_OnAttack= CreateTrigger()
trigger s__DamageI_OnSpell= CreateTrigger()
trigger s__DamageI_OnPure= CreateTrigger()
trigger s__DamageI_OnEnhanced= CreateTrigger()
trigger s__DamageI_Damaging= CreateTrigger()
damagetype s__DamageI_damageType
attacktype s__DamageI_attackType
unit s__DamageI_source
unit s__DamageI_target
player s__DamageI_sourcePlayer
player s__DamageI_targetPlayer
boolean s__DamageI_isEnemy
boolean s__DamageI_isAlly
boolean s__DamageI_isMelee
boolean s__DamageI_isRanged
boolean s__DamageI_isAttack
boolean s__DamageI_isSpell
boolean s__DamageI_isPure
boolean s__DamageI_isEnhanced
boolean s__DamageI_sourceIsHero
boolean s__DamageI_targetIsHero
boolean s__DamageI_structure
boolean s__DamageI_magicImmune
real s__DamageI_sourceX
real s__DamageI_sourceY
real s__DamageI_targetX
real s__DamageI_targetY
integer s__DamageI_sIdx
integer s__DamageI_tIdx
integer s__DamageI_sId
integer s__DamageI_tId
constant integer si__Evasion___Evasion=2
integer si__Evasion___Evasion_F=0
integer si__Evasion___Evasion_I=0
integer array si__Evasion___Evasion_V
constant real s__Evasion___Evasion_text_size= 0.019
trigger s__Evasion___Evasion_Evasion___Evasion= CreateTrigger()
timer s__Evasion___Evasion_t= CreateTimer()
integer s__Evasion___Evasion_didx= - 1
integer array s__Evasion___Evasion_data
unit s__Evasion___Evasion_EvasionSource
unit s__Evasion___Evasion_EvasionTarget
real s__Evasion___Evasion_EvadedDamage
real array s__Evasion___Evasion_EvasionChance
real array s__Evasion___Evasion_MissChance
integer array s__Evasion___Evasion_NeverMiss
unit array s__Evasion___Evasion_u
real array s__Evasion___Evasion_amount
real array s__Evasion___Evasion_ticks
boolean array s__Evasion___Evasion_evasion
constant integer si__LifeSteal___LifeSteal=3
integer si__LifeSteal___LifeSteal_F=0
integer si__LifeSteal___LifeSteal_I=0
integer array si__LifeSteal___LifeSteal_V
timer s__LifeSteal___LifeSteal_t= CreateTimer()
string s__LifeSteal___LifeSteal_sfx= "Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl"
integer s__LifeSteal___LifeSteal_didx= - 1
integer array s__LifeSteal___LifeSteal_data
real array s__LifeSteal___LifeSteal_LifeSteal___LifeSteal
unit array s__LifeSteal___LifeSteal_u
real array s__LifeSteal___LifeSteal_amount
real array s__LifeSteal___LifeSteal_ticks
constant integer si__SpellPower___SpellPower=4
integer si__SpellPower___SpellPower_F=0
integer si__SpellPower___SpellPower_I=0
integer array si__SpellPower___SpellPower_V
trigger s__SpellPower___SpellPower_SpellPower___SpellPower= CreateTrigger()
timer s__SpellPower___SpellPower_t= CreateTimer()
integer s__SpellPower___SpellPower_didx= - 1
integer array s__SpellPower___SpellPower_data
real array s__SpellPower___SpellPower_Flat
real array s__SpellPower___SpellPower_Percent
unit array s__SpellPower___SpellPower_u
real array s__SpellPower___SpellPower_amount
real array s__SpellPower___SpellPower_ticks
boolean array s__SpellPower___SpellPower_flat
constant integer si__SpellVamp___SpellVamp=5
integer si__SpellVamp___SpellVamp_F=0
integer si__SpellVamp___SpellVamp_I=0
integer array si__SpellVamp___SpellVamp_V
timer s__SpellVamp___SpellVamp_t= CreateTimer()
integer s__SpellVamp___SpellVamp_didx= - 1
integer array s__SpellVamp___SpellVamp_data
real array s__SpellVamp___SpellVamp_SpellVamp___SpellVamp
unit array s__SpellVamp___SpellVamp_u
real array s__SpellVamp___SpellVamp_amount
real array s__SpellVamp___SpellVamp_ticks
constant integer si__CriticalStrike___CriticalStrike=6
integer si__CriticalStrike___CriticalStrike_F=0
integer si__CriticalStrike___CriticalStrike_I=0
integer array si__CriticalStrike___CriticalStrike_V
constant real s__CriticalStrike___CriticalStrike_text_size= 0.019
trigger s__CriticalStrike___CriticalStrike_Critical= CreateTrigger()
timer s__CriticalStrike___CriticalStrike_t= CreateTimer()
integer s__CriticalStrike___CriticalStrike_didx= - 1
integer array s__CriticalStrike___CriticalStrike_data
unit s__CriticalStrike___CriticalStrike_CriticalSource
unit s__CriticalStrike___CriticalStrike_CriticalTarget
real s__CriticalStrike___CriticalStrike_CriticalDamage
real array s__CriticalStrike___CriticalStrike_CriticalChance
real array s__CriticalStrike___CriticalStrike_CriticalMultiplier
unit array s__CriticalStrike___CriticalStrike_u
real array s__CriticalStrike___CriticalStrike_chance
real array s__CriticalStrike___CriticalStrike_multiplier
real array s__CriticalStrike___CriticalStrike_ticks
integer array s__CriticalStrike___CriticalStrike_types
constant integer si__NewBonus=7
integer si__NewBonus_F=0
integer si__NewBonus_I=0
integer array si__NewBonus_V
constant integer si__NewBonusUtils__NewBonusUtils=8
timer s__NewBonusUtils__NewBonusUtils_t= CreateTimer()
integer s__NewBonusUtils__NewBonusUtils_didx= - 1
integer array s__NewBonusUtils__NewBonusUtils_data
integer s__NewBonusUtils__NewBonusUtils_ditem= - 1
integer array s__NewBonusUtils__NewBonusUtils_items
unit array s__NewBonusUtils__NewBonusUtils_u
item array s__NewBonusUtils__NewBonusUtils_i
real array s__NewBonusUtils__NewBonusUtils_ticks
integer array s__NewBonusUtils__NewBonusUtils_bonus_type
integer array s__NewBonusUtils__NewBonusUtils_buffId
integer array s__NewBonusUtils__NewBonusUtils_int_amount
real array s__NewBonusUtils__NewBonusUtils_real_amount
boolean array s__NewBonusUtils__NewBonusUtils_link
integer array si__NewBonus_type
trigger array st__NewBonus_onDestroy
integer f__arg_this

endglobals
native GetUnitGoldCost takes integer rawCode returns integer
native GetUnitWoodCost takes integer rawCode returns integer


//Generated allocator of DamageI
function s__DamageI__allocate takes nothing returns integer
 local integer this=si__DamageI_F
    if (this!=0) then
        set si__DamageI_F=si__DamageI_V[this]
    else
        set si__DamageI_I=si__DamageI_I+1
        set this=si__DamageI_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__DamageI_V[this]=-1
 return this
endfunction

//Generated destructor of DamageI
function s__DamageI_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__DamageI_V[this]!=-1) then
        return
    endif
    set si__DamageI_V[this]=si__DamageI_F
    set si__DamageI_F=this
endfunction

//Generated allocator of Evasion___Evasion
function s__Evasion___Evasion__allocate takes nothing returns integer
 local integer this=si__Evasion___Evasion_F
    if (this!=0) then
        set si__Evasion___Evasion_F=si__Evasion___Evasion_V[this]
    else
        set si__Evasion___Evasion_I=si__Evasion___Evasion_I+1
        set this=si__Evasion___Evasion_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__Evasion___Evasion_V[this]=-1
 return this
endfunction

//Generated destructor of Evasion___Evasion
function s__Evasion___Evasion_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Evasion___Evasion_V[this]!=-1) then
        return
    endif
    set si__Evasion___Evasion_V[this]=si__Evasion___Evasion_F
    set si__Evasion___Evasion_F=this
endfunction

//Generated allocator of NewBonus
function s__NewBonus__allocate takes nothing returns integer
 local integer this=si__NewBonus_F
    if (this!=0) then
        set si__NewBonus_F=si__NewBonus_V[this]
    else
        set si__NewBonus_I=si__NewBonus_I+1
        set this=si__NewBonus_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__NewBonus_type[this]=7
    set si__NewBonus_V[this]=-1
 return this
endfunction

//Generated destructor of NewBonus
function sc__NewBonus_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__NewBonus_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__NewBonus_onDestroy[si__NewBonus_type[this]])
    set si__NewBonus_V[this]=si__NewBonus_F
    set si__NewBonus_F=this
endfunction

//Generated allocator of CriticalStrike___CriticalStrike
function s__CriticalStrike___CriticalStrike__allocate takes nothing returns integer
 local integer this=si__CriticalStrike___CriticalStrike_F
    if (this!=0) then
        set si__CriticalStrike___CriticalStrike_F=si__CriticalStrike___CriticalStrike_V[this]
    else
        set si__CriticalStrike___CriticalStrike_I=si__CriticalStrike___CriticalStrike_I+1
        set this=si__CriticalStrike___CriticalStrike_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__CriticalStrike___CriticalStrike_V[this]=-1
 return this
endfunction

//Generated destructor of CriticalStrike___CriticalStrike
function s__CriticalStrike___CriticalStrike_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__CriticalStrike___CriticalStrike_V[this]!=-1) then
        return
    endif
    set si__CriticalStrike___CriticalStrike_V[this]=si__CriticalStrike___CriticalStrike_F
    set si__CriticalStrike___CriticalStrike_F=this
endfunction

//Generated allocator of SpellVamp___SpellVamp
function s__SpellVamp___SpellVamp__allocate takes nothing returns integer
 local integer this=si__SpellVamp___SpellVamp_F
    if (this!=0) then
        set si__SpellVamp___SpellVamp_F=si__SpellVamp___SpellVamp_V[this]
    else
        set si__SpellVamp___SpellVamp_I=si__SpellVamp___SpellVamp_I+1
        set this=si__SpellVamp___SpellVamp_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__SpellVamp___SpellVamp_V[this]=-1
 return this
endfunction

//Generated destructor of SpellVamp___SpellVamp
function s__SpellVamp___SpellVamp_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__SpellVamp___SpellVamp_V[this]!=-1) then
        return
    endif
    set si__SpellVamp___SpellVamp_V[this]=si__SpellVamp___SpellVamp_F
    set si__SpellVamp___SpellVamp_F=this
endfunction

//Generated allocator of SpellPower___SpellPower
function s__SpellPower___SpellPower__allocate takes nothing returns integer
 local integer this=si__SpellPower___SpellPower_F
    if (this!=0) then
        set si__SpellPower___SpellPower_F=si__SpellPower___SpellPower_V[this]
    else
        set si__SpellPower___SpellPower_I=si__SpellPower___SpellPower_I+1
        set this=si__SpellPower___SpellPower_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__SpellPower___SpellPower_V[this]=-1
 return this
endfunction

//Generated destructor of SpellPower___SpellPower
function s__SpellPower___SpellPower_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__SpellPower___SpellPower_V[this]!=-1) then
        return
    endif
    set si__SpellPower___SpellPower_V[this]=si__SpellPower___SpellPower_F
    set si__SpellPower___SpellPower_F=this
endfunction

//Generated allocator of LifeSteal___LifeSteal
function s__LifeSteal___LifeSteal__allocate takes nothing returns integer
 local integer this=si__LifeSteal___LifeSteal_F
    if (this!=0) then
        set si__LifeSteal___LifeSteal_F=si__LifeSteal___LifeSteal_V[this]
    else
        set si__LifeSteal___LifeSteal_I=si__LifeSteal___LifeSteal_I+1
        set this=si__LifeSteal___LifeSteal_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__LifeSteal___LifeSteal_V[this]=-1
 return this
endfunction

//Generated destructor of LifeSteal___LifeSteal
function s__LifeSteal___LifeSteal_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__LifeSteal___LifeSteal_V[this]!=-1) then
        return
    endif
    set si__LifeSteal___LifeSteal_V[this]=si__LifeSteal___LifeSteal_F
    set si__LifeSteal___LifeSteal_F=this
endfunction

//Generated allocator of NewBonusUtils__NewBonusUtils
function s__NewBonusUtils__NewBonusUtils__allocate takes nothing returns integer
 local integer this=s__NewBonus__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__NewBonus_type[this]=8
    set kthis=this

 return this
endfunction


//library DamageInterface:
    
    

        //Core evaluation triggers for after mitigation
        //Core evaluation triggers for before mitigation
        

        // Setting the members of the struct
        function s__DamageI_CacheResponse takes unit src,unit tgt,damagetype dmg_type,attacktype atk_type returns nothing
            set s__DamageI_damageType=dmg_type
            set s__DamageI_attackType=atk_type
            set s__DamageI_source=src
            set s__DamageI_target=tgt
            set s__DamageI_isAttack=s__DamageI_damageType == DAMAGE_TYPE_NORMAL
            set s__DamageI_isSpell=s__DamageI_attackType == ATTACK_TYPE_NORMAL
            set s__DamageI_isPure=s__DamageI_damageType == DAMAGE_TYPE_UNIVERSAL
            set s__DamageI_isEnhanced=s__DamageI_damageType == DAMAGE_TYPE_ENHANCED

            // You can comment the members you dont want to be cached
            // or set CACHE_EXTRA = false to not save them at all
            if DamageInterface___CACHE_EXTRA then
                set s__DamageI_sourcePlayer=GetOwningPlayer(s__DamageI_source)
                set s__DamageI_targetPlayer=GetOwningPlayer(s__DamageI_target)
                set s__DamageI_isEnemy=IsUnitEnemy(s__DamageI_target, s__DamageI_sourcePlayer)
                set s__DamageI_isAlly=IsUnitAlly(s__DamageI_target, s__DamageI_sourcePlayer)
                set s__DamageI_isMelee=IsUnitType(s__DamageI_source, UNIT_TYPE_MELEE_ATTACKER)
                set s__DamageI_isRanged=IsUnitType(s__DamageI_source, UNIT_TYPE_RANGED_ATTACKER)
                set s__DamageI_sourceIsHero=IsUnitType(s__DamageI_source, UNIT_TYPE_HERO)
                set s__DamageI_targetIsHero=IsUnitType(s__DamageI_target, UNIT_TYPE_HERO)
                set s__DamageI_structure=IsUnitType(s__DamageI_target, UNIT_TYPE_STRUCTURE)
                set s__DamageI_magicImmune=IsUnitType(s__DamageI_target, UNIT_TYPE_MAGIC_IMMUNE)
                set s__DamageI_sourceX=GetUnitX(s__DamageI_source)
                set s__DamageI_sourceY=GetUnitY(s__DamageI_source)
                set s__DamageI_targetX=GetUnitX(s__DamageI_target)
                set s__DamageI_targetY=GetUnitY(s__DamageI_target)
                set s__DamageI_sIdx=GetUnitUserData(s__DamageI_source)
                set s__DamageI_tIdx=GetUnitUserData(s__DamageI_target)
                set s__DamageI_sId=GetHandleId(s__DamageI_source)
                set s__DamageI_tId=GetHandleId(s__DamageI_target)
            endif
        endfunction

        function s__DamageI_OnDamaging takes nothing returns nothing
            call s__DamageI_CacheResponse(GetEventDamageSource() , BlzGetEventDamageTarget() , BlzGetEventDamageType() , BlzGetEventAttackType())

            if s__DamageI_damageType != DAMAGE_TYPE_UNKNOWN then
                if s__DamageI_isAttack then
                    call TriggerEvaluate(s__DamageI_OnAttack)
                elseif s__DamageI_isSpell then
                    call TriggerEvaluate(s__DamageI_OnSpell)
                elseif s__DamageI_isPure then
                    call TriggerEvaluate(s__DamageI_OnPure)
                elseif s__DamageI_isEnhanced then
                    call TriggerEvaluate(s__DamageI_OnEnhanced)
                endif
            endif
        endfunction

        function s__DamageI_OnDamage takes nothing returns nothing
            call s__DamageI_CacheResponse(GetEventDamageSource() , BlzGetEventDamageTarget() , BlzGetEventDamageType() , BlzGetEventAttackType())
            
            if s__DamageI_damageType != DAMAGE_TYPE_UNKNOWN then
                if s__DamageI_isAttack and not evade then
                    call TriggerEvaluate(s__DamageI_Attack)
                elseif s__DamageI_isSpell then
                    call TriggerEvaluate(s__DamageI_Spell)
                elseif s__DamageI_isPure then
                    call TriggerEvaluate(s__DamageI_Pure)
                elseif s__DamageI_isEnhanced then
                    call TriggerEvaluate(s__DamageI_Enhanced)
                endif
            endif

            set evade=false
        endfunction

        function s__DamageI_RegisterAttackDamage takes code c,boolean after returns nothing
            if after then
                call TriggerAddCondition(s__DamageI_Attack, Filter(c))
            else
                call TriggerAddCondition(s__DamageI_OnAttack, Filter(c))
            endif
        endfunction
    
        function s__DamageI_RegisterSpellDamage takes code c,boolean after returns nothing
            if after then
                call TriggerAddCondition(s__DamageI_Spell, Filter(c))
            else
                call TriggerAddCondition(s__DamageI_OnSpell, Filter(c))
            endif
        endfunction
    
        function s__DamageI_RegisterPureDamage takes code c,boolean after returns nothing
            if after then
                call TriggerAddCondition(s__DamageI_Pure, Filter(c))
            else
                call TriggerAddCondition(s__DamageI_OnPure, Filter(c))
            endif
        endfunction
    
        function s__DamageI_RegisterEnhancedDamage takes code c,boolean after returns nothing
            if after then
                call TriggerAddCondition(s__DamageI_Enhanced, Filter(c))
            else
                call TriggerAddCondition(s__DamageI_OnEnhanced, Filter(c))
            endif
        endfunction

        function s__DamageI_RegisterDamage takes code c,boolean after returns nothing
            if after then
                call TriggerAddCondition(s__DamageI_Damaged, Filter(c))
            else
                call TriggerAddCondition(s__DamageI_Damaging, Filter(c))
            endif
        endfunction
    
        function s__DamageI_onInit takes nothing returns nothing
            call TriggerRegisterAnyUnitEventBJ(s__DamageI_Damaged, EVENT_PLAYER_UNIT_DAMAGED)
            call TriggerAddCondition(s__DamageI_Damaged, Condition(function s__DamageI_OnDamage))

            call TriggerRegisterAnyUnitEventBJ(s__DamageI_Damaging, EVENT_PLAYER_UNIT_DAMAGING)
            call TriggerAddCondition(s__DamageI_Damaging, Condition(function s__DamageI_OnDamaging))
        endfunction
    
    
    
    

    //After damage mitigation registration

    function RegisterAttackDamageEvent takes code c returns nothing
        call s__DamageI_RegisterAttackDamage(c , true)
    endfunction
    
    function RegisterSpellDamageEvent takes code c returns nothing
        call s__DamageI_RegisterSpellDamage(c , true)
    endfunction
    
    function RegisterPureDamageEvent takes code c returns nothing
        call s__DamageI_RegisterPureDamage(c , true)
    endfunction
    
    function RegisterEnhancedDamageEvent takes code c returns nothing
        call s__DamageI_RegisterEnhancedDamage(c , true)
    endfunction

    function RegisterDamageEvent takes code c returns nothing
        call s__DamageI_RegisterDamage(c , true)
    endfunction

    //Before damage mitigation registration

    function RegisterAttackDamagingEvent takes code c returns nothing
        call s__DamageI_RegisterAttackDamage(c , false)
    endfunction
    
    function RegisterSpellDamagingEvent takes code c returns nothing
        call s__DamageI_RegisterSpellDamage(c , false)
    endfunction
    
    function RegisterPureDamagingEvent takes code c returns nothing
        call s__DamageI_RegisterPureDamage(c , false)
    endfunction
    
    function RegisterEnhancedDamagingEvent takes code c returns nothing
        call s__DamageI_RegisterEnhancedDamage(c , false)
    endfunction

    function RegisterDamagingEvent takes code c returns nothing
        call s__DamageI_RegisterDamage(c , false)
    endfunction 

//library DamageInterface ends
//library RegisterPlayerUnitEvent:
    
    function RegisterPlayerUnitEvent takes playerunitevent p,code c returns nothing
        local integer i= GetHandleId(p)
        local integer k= 15
        if RegisterPlayerUnitEvent__t[i] == null then
            set RegisterPlayerUnitEvent__t[i]=CreateTrigger()
            loop
                call TriggerRegisterPlayerUnitEvent(RegisterPlayerUnitEvent__t[i], Player(k), p, null)
                exitwhen k == 0
                set k=k - 1
            endloop
        endif
        call TriggerAddCondition(RegisterPlayerUnitEvent__t[i], Filter(c))
    endfunction
    
    function RegisterPlayerUnitEventForPlayer takes playerunitevent p,code c,player pl returns nothing
        local integer i= 16 * GetHandleId(p) + GetPlayerId(pl)
        if RegisterPlayerUnitEvent__t[i] == null then
            set RegisterPlayerUnitEvent__t[i]=CreateTrigger()
            call TriggerRegisterPlayerUnitEvent(RegisterPlayerUnitEvent__t[i], pl, p, null)
        endif
        call TriggerAddCondition(RegisterPlayerUnitEvent__t[i], Filter(c))
    endfunction
    
    function GetPlayerUnitEventTrigger takes playerunitevent p returns trigger
        return RegisterPlayerUnitEvent__t[GetHandleId(p)]
    endfunction

//library RegisterPlayerUnitEvent ends
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
//library Evasion:
    
    

            //Text size of Critical Event
            //--------------------------------------------------
            //--------------------------------------------------
            //--------------------------------------------------
    
    
            function s__Evasion___Evasion_destroy takes integer this returns nothing
                if s__Evasion___Evasion_didx == - 1 then
                    call PauseTimer(s__Evasion___Evasion_t)
                endif
    
                set s__Evasion___Evasion_u[this]=null
                set s__Evasion___Evasion_ticks[this]=0
                call s__Evasion___Evasion_deallocate(this)
            endfunction
    
            function s__Evasion___Evasion_GetEvasionChance takes unit u returns real
                return s__Evasion___Evasion_EvasionChance[GetUnitUserData(u)]
            endfunction
    
            function s__Evasion___Evasion_GetMissChance takes unit u returns real
                return s__Evasion___Evasion_MissChance[GetUnitUserData(u)]
            endfunction
    
            function s__Evasion___Evasion_SetEvasionChance takes unit u,real value returns nothing
                set s__Evasion___Evasion_EvasionChance[GetUnitUserData(u)]=value
            endfunction
    
            function s__Evasion___Evasion_SetMissChance takes unit u,real value returns nothing
                set s__Evasion___Evasion_MissChance[GetUnitUserData(u)]=value
            endfunction
    
            function s__Evasion___Evasion_OnPeriod takes nothing returns nothing
                local integer i= 0
                local integer this
                
                loop
                    exitwhen i > s__Evasion___Evasion_didx
                        set this=s__Evasion___Evasion_data[i]
                        set s__Evasion___Evasion_ticks[this]=s__Evasion___Evasion_ticks[this] - 1
    
                        if s__Evasion___Evasion_ticks[this] <= 0 then
                            if s__Evasion___Evasion_evasion[this] then
                                set s__Evasion___Evasion_EvasionChance[GetUnitUserData((s__Evasion___Evasion_u[this] ))]=(( (s__Evasion___Evasion_EvasionChance[GetUnitUserData((s__Evasion___Evasion_u[this]))]) - s__Evasion___Evasion_amount[this])*1.0) // INLINED!!
                            else
                                set s__Evasion___Evasion_MissChance[GetUnitUserData((s__Evasion___Evasion_u[this] ))]=(( (s__Evasion___Evasion_MissChance[GetUnitUserData((s__Evasion___Evasion_u[this]))]) - s__Evasion___Evasion_amount[this])*1.0) // INLINED!!
                            endif
    
                            set s__Evasion___Evasion_data[i]=s__Evasion___Evasion_data[s__Evasion___Evasion_didx]
                            set s__Evasion___Evasion_didx=s__Evasion___Evasion_didx - 1
                            set i=i - 1
                            call s__Evasion___Evasion_destroy(this)
                        endif
                    set i=i + 1
                endloop
            endfunction
    
            function s__Evasion___Evasion_AddTimed takes unit u,real amount,real duration,boolean evasion returns nothing
                local integer this= s__Evasion___Evasion__allocate()
    
                set s__Evasion___Evasion_u[this]=u
                set s__Evasion___Evasion_amount[this]=amount
                set s__Evasion___Evasion_ticks[this]=duration / 0.03125000
                set s__Evasion___Evasion_evasion[this]=evasion
                set s__Evasion___Evasion_didx=s__Evasion___Evasion_didx + 1
                set s__Evasion___Evasion_data[s__Evasion___Evasion_didx]=this
    
                if evasion then
                    set s__Evasion___Evasion_EvasionChance[GetUnitUserData((u ))]=(( (s__Evasion___Evasion_EvasionChance[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
                else
                    set s__Evasion___Evasion_MissChance[GetUnitUserData((u ))]=(( (s__Evasion___Evasion_MissChance[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
                endif
                
                if s__Evasion___Evasion_didx == 0 then
                    call TimerStart(s__Evasion___Evasion_t, 0.03125000, true, function s__Evasion___Evasion_OnPeriod)
                endif
            endfunction
    
            function s__Evasion___Evasion_EvasionText takes unit whichUnit,string text,real duration,integer red,integer green,integer blue,integer alpha returns nothing
                local texttag tx= CreateTextTag()
                
                call SetTextTagText(tx, text, s__Evasion___Evasion_text_size)
                call SetTextTagPosUnit(tx, whichUnit, 0)
                call SetTextTagColor(tx, red, green, blue, alpha)
                call SetTextTagLifespan(tx, duration)
                call SetTextTagVelocity(tx, 0.0, 0.0355)
                call SetTextTagPermanent(tx, false)
                
                set tx=null
            endfunction
    
            function s__Evasion___Evasion_OnDamage takes nothing returns nothing
                local unit src= GetEventDamageSource()
                local unit tgt= BlzGetEventDamageTarget()
                //----------------------------------------------
                local real damage= GetEventDamage()
                //----------------------------------------------
                local integer sIdx= GetUnitUserData(src)
                local integer tIdx= GetUnitUserData(tgt)
                //----------------------------------------------

                if damage > 0 and not ( s__Evasion___Evasion_NeverMiss[sIdx] > 0 ) then
                    set evade=GetRandomReal(0, 100) <= s__Evasion___Evasion_EvasionChance[tIdx] or GetRandomReal(0, 100) <= s__Evasion___Evasion_MissChance[sIdx]

                    if evade then
                        set s__Evasion___Evasion_EvasionSource=src
                        set s__Evasion___Evasion_EvasionTarget=tgt
                        set s__Evasion___Evasion_EvadedDamage=damage
    
                        call TriggerEvaluate(s__Evasion___Evasion_Evasion___Evasion)
                        call BlzSetEventWeaponType(WEAPON_TYPE_WHOKNOWS)
                        call BlzSetEventDamage(0)
                        call s__Evasion___Evasion_EvasionText(src , "miss" , 1.5 , 255 , 0 , 0 , 255)
    
                        set s__Evasion___Evasion_EvasionSource=null
                        set s__Evasion___Evasion_EvasionTarget=null
                        set s__Evasion___Evasion_EvadedDamage=0.0
                    endif
                endif
            endfunction
    
            function s__Evasion___Evasion_Register takes code c returns nothing
                call TriggerAddCondition(s__Evasion___Evasion_Evasion___Evasion, Filter(c))
            endfunction
    
            function s__Evasion___Evasion_onInit takes nothing returns nothing
                call s__DamageI_RegisterAttackDamage((function s__Evasion___Evasion_OnDamage) , false) // INLINED!!
            endfunction
    
        
        
        
    
        function RegisterEvasionEvent takes code c returns nothing
            call TriggerAddCondition(s__Evasion___Evasion_Evasion___Evasion, Filter((c))) // INLINED!!
        endfunction
    
        function GetMissingUnit takes nothing returns unit
            return s__Evasion___Evasion_EvasionSource
        endfunction
    
        function GetEvadingUnit takes nothing returns unit
            return s__Evasion___Evasion_EvasionTarget
        endfunction
    
        function GetEvadedDamage takes nothing returns real
            return s__Evasion___Evasion_EvadedDamage
        endfunction
    
        function GetUnitEvasionChance takes unit u returns real
            return (s__Evasion___Evasion_EvasionChance[GetUnitUserData((u))]) // INLINED!!
        endfunction
    
        function GetUnitMissChance takes unit u returns real
            return (s__Evasion___Evasion_MissChance[GetUnitUserData((u))]) // INLINED!!
        endfunction
    
        function SetUnitEvasionChance takes unit u,real chance returns nothing
            set s__Evasion___Evasion_EvasionChance[GetUnitUserData((u ))]=(( chance)*1.0) // INLINED!!
        endfunction
    
        function SetUnitMissChance takes unit u,real chance returns nothing
            set s__Evasion___Evasion_MissChance[GetUnitUserData((u ))]=(( chance)*1.0) // INLINED!!
        endfunction
    
        function UnitAddEvasionChance takes unit u,real chance returns nothing
            set s__Evasion___Evasion_EvasionChance[GetUnitUserData((u ))]=(( (s__Evasion___Evasion_EvasionChance[GetUnitUserData((u))]) + chance)*1.0) // INLINED!!
        endfunction
    
        function UnitAddMissChance takes unit u,real chance returns nothing
            set s__Evasion___Evasion_MissChance[GetUnitUserData((u ))]=(( (s__Evasion___Evasion_MissChance[GetUnitUserData((u))]) + chance)*1.0) // INLINED!!
        endfunction
    
        function UnitAddEvasionChanceTimed takes unit u,real amount,real duration returns nothing
            call s__Evasion___Evasion_AddTimed(u , amount , duration , true)
        endfunction
    
        function UnitAddMissChanceTimed takes unit u,real amount,real duration returns nothing
            call s__Evasion___Evasion_AddTimed(u , amount , duration , false)
        endfunction
    
        function MakeUnitNeverMiss takes unit u,boolean flag returns nothing
            if flag then
                set s__Evasion___Evasion_NeverMiss[GetUnitUserData(u)]=s__Evasion___Evasion_NeverMiss[GetUnitUserData(u)] + 1
            else
                set s__Evasion___Evasion_NeverMiss[GetUnitUserData(u)]=s__Evasion___Evasion_NeverMiss[GetUnitUserData(u)] - 1
            endif
        endfunction
    
        function DoUnitNeverMiss takes unit u returns boolean
            return s__Evasion___Evasion_NeverMiss[GetUnitUserData(u)] > 0
        endfunction

//library Evasion ends
//library LifeSteal:


	//--------------------------------------------------
        //--------------------------------------------------
        //--------------------------------------------------
	//--------------------------------------------------


        function s__LifeSteal___LifeSteal_destroy takes integer this returns nothing
            if s__LifeSteal___LifeSteal_didx == - 1 then
                call PauseTimer(s__LifeSteal___LifeSteal_t)
            endif

            set s__LifeSteal___LifeSteal_u[this]=null
            set s__LifeSteal___LifeSteal_ticks[this]=0
            call s__LifeSteal___LifeSteal_deallocate(this)
        endfunction

        function s__LifeSteal___LifeSteal_Get takes unit u returns real
            return s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData(u)]
        endfunction

        function s__LifeSteal___LifeSteal_Set takes unit u,real value returns nothing
            set s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData(u)]=value
        endfunction

        function s__LifeSteal___LifeSteal_OnPeriod takes nothing returns nothing
            local integer i= 0
            local integer this
            
            loop
                exitwhen i > s__LifeSteal___LifeSteal_didx
                    set this=s__LifeSteal___LifeSteal_data[i]
                    set s__LifeSteal___LifeSteal_ticks[this]=s__LifeSteal___LifeSteal_ticks[this] - 1

                    if s__LifeSteal___LifeSteal_ticks[this] <= 0 then
                        set s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((s__LifeSteal___LifeSteal_u[this] ))]=(( (s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((s__LifeSteal___LifeSteal_u[this]))]) - s__LifeSteal___LifeSteal_amount[this])*1.0) // INLINED!!

                        set s__LifeSteal___LifeSteal_data[i]=s__LifeSteal___LifeSteal_data[s__LifeSteal___LifeSteal_didx]
                        set s__LifeSteal___LifeSteal_didx=s__LifeSteal___LifeSteal_didx - 1
                        set i=i - 1
                        call s__LifeSteal___LifeSteal_destroy(this)
                    endif
                set i=i + 1
            endloop
        endfunction

        function s__LifeSteal___LifeSteal_AddTimed takes unit u,real amount,real duration returns nothing
            local integer this= s__LifeSteal___LifeSteal__allocate()

            set s__LifeSteal___LifeSteal_u[this]=u
            set s__LifeSteal___LifeSteal_amount[this]=amount
            set s__LifeSteal___LifeSteal_ticks[this]=duration / 0.03125000
            set s__LifeSteal___LifeSteal_didx=s__LifeSteal___LifeSteal_didx + 1
            set s__LifeSteal___LifeSteal_data[s__LifeSteal___LifeSteal_didx]=this

            
            set s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((u ))]=(( (s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
            
            if s__LifeSteal___LifeSteal_didx == 0 then
                call TimerStart(s__LifeSteal___LifeSteal_t, 0.03125000, true, function s__LifeSteal___LifeSteal_OnPeriod)
            endif
        endfunction

        function s__LifeSteal___LifeSteal_OnDamage takes nothing returns nothing
            local unit src= GetEventDamageSource()
            local unit tgt= BlzGetEventDamageTarget()
            //----------------------------------------------
            local real dmg= GetEventDamage()
            //----------------------------------------------
            local integer idx= GetUnitUserData(src)
            //----------------------------------------------
            local boolean notStructure= not IsUnitType(tgt, UNIT_TYPE_STRUCTURE)
            local boolean process= dmg > 0 and s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[idx] > 0 and notStructure
            //----------------------------------------------

            if process then
                call SetWidgetLife(src, ( GetWidgetLife(src) + ( dmg * s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[idx] ) ))
                call DestroyEffect(AddSpecialEffectTarget(s__LifeSteal___LifeSteal_sfx, src, "origin"))
            endif

            set src=null
            set tgt=null
        endfunction

        function s__LifeSteal___LifeSteal_onInit takes nothing returns nothing
            call s__DamageI_RegisterAttackDamage((function s__LifeSteal___LifeSteal_OnDamage) , true) // INLINED!!
        endfunction   

    
    
    

    function SetUnitLifeSteal takes unit u,real amount returns nothing
        set s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((u ))]=(( amount)*1.0) // INLINED!!
    endfunction

    function GetUnitLifeSteal takes unit u returns real
        return (s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((u))]) // INLINED!!
    endfunction

    function UnitAddLifeSteal takes unit u,real amount returns nothing
        set s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((u ))]=(( (s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
    endfunction

    function UnitAddLifeStealTimed takes unit u,real amount,real duration returns nothing
        call s__LifeSteal___LifeSteal_AddTimed(u , amount , duration)
    endfunction

//library LifeSteal ends
//library SpellPower:


        //--------------------------------------------------
        //--------------------------------------------------
        //--------------------------------------------------


        function s__SpellPower___SpellPower_destroy takes integer this returns nothing
            if s__SpellPower___SpellPower_didx == - 1 then
                call PauseTimer(s__SpellPower___SpellPower_t)
            endif

            set s__SpellPower___SpellPower_u[this]=null
            set s__SpellPower___SpellPower_ticks[this]=0
            call s__SpellPower___SpellPower_deallocate(this)
        endfunction

        function s__SpellPower___SpellPower_GetFlat takes unit u returns real
            return s__SpellPower___SpellPower_Flat[GetUnitUserData(u)]
        endfunction

        function s__SpellPower___SpellPower_GetPercent takes unit u returns real
            return s__SpellPower___SpellPower_Percent[GetUnitUserData(u)]
        endfunction

        function s__SpellPower___SpellPower_SetFlat takes unit u,real value returns nothing
            set s__SpellPower___SpellPower_Flat[GetUnitUserData(u)]=value
        endfunction

        function s__SpellPower___SpellPower_SetPercent takes unit u,real value returns nothing
            set s__SpellPower___SpellPower_Percent[GetUnitUserData(u)]=value
        endfunction

        function s__SpellPower___SpellPower_OnPeriod takes nothing returns nothing
            local integer i= 0
            local integer this
            
            loop
                exitwhen i > s__SpellPower___SpellPower_didx
                    set this=s__SpellPower___SpellPower_data[i]
                    set s__SpellPower___SpellPower_ticks[this]=s__SpellPower___SpellPower_ticks[this] - 1

                    if s__SpellPower___SpellPower_ticks[this] <= 0 then
                        if s__SpellPower___SpellPower_flat[this] then
                            set s__SpellPower___SpellPower_Flat[GetUnitUserData((s__SpellPower___SpellPower_u[this] ))]=(( (s__SpellPower___SpellPower_Flat[GetUnitUserData((s__SpellPower___SpellPower_u[this]))]) - s__SpellPower___SpellPower_amount[this])*1.0) // INLINED!!
                        else
                            set s__SpellPower___SpellPower_Percent[GetUnitUserData((s__SpellPower___SpellPower_u[this] ))]=(( (s__SpellPower___SpellPower_Percent[GetUnitUserData((s__SpellPower___SpellPower_u[this]))]) - s__SpellPower___SpellPower_amount[this])*1.0) // INLINED!!
                        endif

                        set s__SpellPower___SpellPower_data[i]=s__SpellPower___SpellPower_data[s__SpellPower___SpellPower_didx]
                        set s__SpellPower___SpellPower_didx=s__SpellPower___SpellPower_didx - 1
                        set i=i - 1
                        call s__SpellPower___SpellPower_destroy(this)
                    endif
                set i=i + 1
            endloop
        endfunction

        function s__SpellPower___SpellPower_AddTimed takes unit u,real amount,real duration,boolean flat returns nothing
            local integer this= s__SpellPower___SpellPower__allocate()

            set s__SpellPower___SpellPower_u[this]=u
            set s__SpellPower___SpellPower_amount[this]=amount
            set s__SpellPower___SpellPower_ticks[this]=duration / 0.03125000
            set s__SpellPower___SpellPower_flat[this]=flat
            set s__SpellPower___SpellPower_didx=s__SpellPower___SpellPower_didx + 1
            set s__SpellPower___SpellPower_data[s__SpellPower___SpellPower_didx]=this

            if flat then
                set s__SpellPower___SpellPower_Flat[GetUnitUserData((u ))]=(( (s__SpellPower___SpellPower_Flat[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
            else
                set s__SpellPower___SpellPower_Percent[GetUnitUserData((u ))]=(( (s__SpellPower___SpellPower_Percent[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
            endif
            
            if s__SpellPower___SpellPower_didx == 0 then
                call TimerStart(s__SpellPower___SpellPower_t, 0.03125000, true, function s__SpellPower___SpellPower_OnPeriod)
            endif
        endfunction

        function s__SpellPower___SpellPower_OnDamage takes nothing returns nothing
            local unit src= GetEventDamageSource()
            //----------------------------------------------
            local real damage= GetEventDamage()
            //----------------------------------------------
            local integer idx= GetUnitUserData(src)
            //----------------------------------------------

            if damage > 0 then
                call BlzSetEventDamage(( damage + s__SpellPower___SpellPower_Flat[idx] ) * ( 1 + s__SpellPower___SpellPower_Percent[idx] ))
            endif

            set src=null
        endfunction

        function s__SpellPower___SpellPower_onInit takes nothing returns nothing
            call s__DamageI_RegisterSpellDamage((function s__SpellPower___SpellPower_OnDamage) , true) // INLINED!!
        endfunction

    
    
    

    function GetUnitSpellPowerFlat takes unit u returns real
        return (s__SpellPower___SpellPower_Flat[GetUnitUserData((u))]) // INLINED!!
    endfunction

    function GetUnitSpellPowerPercent takes unit u returns real
        return (s__SpellPower___SpellPower_Percent[GetUnitUserData((u))]) // INLINED!!
    endfunction

    function SetUnitSpellPowerFlat takes unit u,real value returns nothing
        set s__SpellPower___SpellPower_Flat[GetUnitUserData((u ))]=(( value)*1.0) // INLINED!!
    endfunction

    function SetUnitSpellPowerPercent takes unit u,real value returns nothing
        set s__SpellPower___SpellPower_Percent[GetUnitUserData((u ))]=(( value)*1.0) // INLINED!!
    endfunction

    function UnitAddSpellPowerFlat takes unit u,real amount returns nothing
        set s__SpellPower___SpellPower_Flat[GetUnitUserData((u ))]=(( (s__SpellPower___SpellPower_Flat[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
    endfunction

    function UnitAddSpellPowerPercent takes unit u,real amount returns nothing
        set s__SpellPower___SpellPower_Percent[GetUnitUserData((u ))]=(( (s__SpellPower___SpellPower_Percent[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
    endfunction

    function UnitAddSpellPowerFlatTimed takes unit u,real amount,real duration returns nothing
        call s__SpellPower___SpellPower_AddTimed(u , amount , duration , true)
    endfunction

    function UnitAddSpellPowerPercentTimed takes unit u,real amount,real duration returns nothing
        call s__SpellPower___SpellPower_AddTimed(u , amount , duration , false)
    endfunction

    // The Following functions exists to facilitate the preview of spell damage dealt given an amount.
    // Usefull when combining with string modification of a spell description or prediction of damage.
    
    function GetSpellDamage takes real amount,unit u returns real
        return ( ( amount + (s__SpellPower___SpellPower_Flat[GetUnitUserData((u))]) ) * ( 1 + (s__SpellPower___SpellPower_Percent[GetUnitUserData((u))]) ) ) // INLINED!!
    endfunction

    function AbilitySpellDamage takes unit u,integer abilityId,abilityreallevelfield field returns string
        return I2S(R2I(( BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, abilityId), field, GetUnitAbilityLevel(u, abilityId) - 1) + (s__SpellPower___SpellPower_Flat[GetUnitUserData((u))]) ) * ( 1 + (s__SpellPower___SpellPower_Percent[GetUnitUserData((u))]) ))) // INLINED!!
    endfunction

    function AbilitySpellDamageEx takes real amount,unit u returns string
        return I2S(R2I(( amount + (s__SpellPower___SpellPower_Flat[GetUnitUserData((u))]) ) * ( 1 + (s__SpellPower___SpellPower_Percent[GetUnitUserData((u))]) ))) // INLINED!!
    endfunction


//library SpellPower ends
//library SpellVamp:


        //--------------------------------------------------
        //--------------------------------------------------
        //--------------------------------------------------


        function s__SpellVamp___SpellVamp_destroy takes integer this returns nothing
            if s__SpellVamp___SpellVamp_didx == - 1 then
                call PauseTimer(s__SpellVamp___SpellVamp_t)
            endif

            set s__SpellVamp___SpellVamp_u[this]=null
            set s__SpellVamp___SpellVamp_ticks[this]=0
            call s__SpellVamp___SpellVamp_deallocate(this)
        endfunction

        function s__SpellVamp___SpellVamp_Get takes unit u returns real
            return s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData(u)]
        endfunction

        function s__SpellVamp___SpellVamp_Set takes unit u,real value returns nothing
            set s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData(u)]=value
        endfunction

        function s__SpellVamp___SpellVamp_OnPeriod takes nothing returns nothing
            local integer i= 0
            local integer this
            
            loop
                exitwhen i > s__SpellVamp___SpellVamp_didx
                    set this=s__SpellVamp___SpellVamp_data[i]
                    set s__SpellVamp___SpellVamp_ticks[this]=s__SpellVamp___SpellVamp_ticks[this] - 1

                    if s__SpellVamp___SpellVamp_ticks[this] <= 0 then
                        set s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((s__SpellVamp___SpellVamp_u[this] ))]=(( (s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((s__SpellVamp___SpellVamp_u[this]))]) - s__SpellVamp___SpellVamp_amount[this])*1.0) // INLINED!!

                        set s__SpellVamp___SpellVamp_data[i]=s__SpellVamp___SpellVamp_data[s__SpellVamp___SpellVamp_didx]
                        set s__SpellVamp___SpellVamp_didx=s__SpellVamp___SpellVamp_didx - 1
                        set i=i - 1
                        call s__SpellVamp___SpellVamp_destroy(this)
                    endif
                set i=i + 1
            endloop
        endfunction

        function s__SpellVamp___SpellVamp_AddTimed takes unit u,real amount,real duration returns nothing
            local integer this= s__SpellVamp___SpellVamp__allocate()

            set s__SpellVamp___SpellVamp_u[this]=u
            set s__SpellVamp___SpellVamp_amount[this]=amount
            set s__SpellVamp___SpellVamp_ticks[this]=duration / 0.03125000
            set s__SpellVamp___SpellVamp_didx=s__SpellVamp___SpellVamp_didx + 1
            set s__SpellVamp___SpellVamp_data[s__SpellVamp___SpellVamp_didx]=this

            
            set s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((u ))]=(( (s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
            
            if s__SpellVamp___SpellVamp_didx == 0 then
                call TimerStart(s__SpellVamp___SpellVamp_t, 0.03125000, true, function s__SpellVamp___SpellVamp_OnPeriod)
            endif
        endfunction  

        function s__SpellVamp___SpellVamp_OnDamage takes nothing returns nothing
            local unit src= GetEventDamageSource()
            local unit tgt= BlzGetEventDamageTarget()
            //----------------------------------------------
            local integer idx= GetUnitUserData(src)
            //----------------------------------------------
            local real dmg= GetEventDamage()
            local real sp= s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[idx]
            //----------------------------------------------
            local boolean notStructure= not IsUnitType(tgt, UNIT_TYPE_STRUCTURE)
            local boolean process= dmg > 0 and sp > 0 and notStructure
            //----------------------------------------------

            if process then
                call SetWidgetLife(src, ( GetWidgetLife(src) + ( dmg * sp ) ))
            endif

            set src=null
            set tgt=null
        endfunction

        function s__SpellVamp___SpellVamp_onInit takes nothing returns nothing
            call s__DamageI_RegisterSpellDamage((function s__SpellVamp___SpellVamp_OnDamage) , true) // INLINED!!
        endfunction 

    
    
    

    function SetUnitSpellVamp takes unit u,real amount returns nothing
        set s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((u ))]=(( amount)*1.0) // INLINED!!
    endfunction

    function GetUnitSpellVamp takes unit u returns real
        return (s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((u))]) // INLINED!!
    endfunction

    function UnitAddSpellVamp takes unit u,real amount returns nothing
        set s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((u ))]=(( (s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData((u))]) + amount)*1.0) // INLINED!!
    endfunction

    function UnitAddSpellVampTimed takes unit u,real amount,real duration returns nothing
        call s__SpellVamp___SpellVamp_AddTimed(u , amount , duration)
    endfunction

//library SpellVamp ends
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
    local integer gold
    local integer lumber
    local item tempItem
 
    call BlzFrameSetTexture(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_ICON), BlzGetAbilityIcon(data), 0, false)
    call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT), GetObjectName(data))

    call BlzFrameSetTexture(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_ICON), BlzGetAbilityIcon(data), 0, false)
    call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_NAME), GetObjectName(data))
    call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TOOL_TIP_TEXT), BlzGetAbilityExtendedTooltip(data, 0))

    set tempItem=CreateItem(data, 0, 0)
    set gold=GetItemLevel(tempItem) / 10000
    set lumber=GetItemLevel(tempItem) - ( GetItemLevel(tempItem) / 10000 ) * 10000
    call RemoveItem(tempItem)
    if GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_GOLD) >= gold then
        call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD), I2S(gold))
    else
        call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_GOLD), "|cffff2010" + I2S(gold))
    endif
    if GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_LUMBER) >= lumber then
        call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER), I2S(lumber))
    else
        call BlzFrameSetText(LoadFrameHandle(TasButtonList_Hash, frameHandle, TasButtonList___HASH_TEXT_LUMBER), "|cffff2010" + I2S(lumber))
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
//library CriticalStrike:
    
    
            //Text size of Critical Event
            //--------------------------------------------------
            //--------------------------------------------------
            //--------------------------------------------------
    
    
            function s__CriticalStrike___CriticalStrike_destroy takes integer this returns nothing
                if s__CriticalStrike___CriticalStrike_didx == - 1 then
                    call PauseTimer(s__CriticalStrike___CriticalStrike_t)
                endif
    
                set s__CriticalStrike___CriticalStrike_u[this]=null
                set s__CriticalStrike___CriticalStrike_ticks[this]=0
                call s__CriticalStrike___CriticalStrike_deallocate(this)
            endfunction
    
            function s__CriticalStrike___CriticalStrike_GetChance takes unit u returns real
                return s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData(u)]
            endfunction
    
            function s__CriticalStrike___CriticalStrike_GetMultiplier takes unit u returns real
                return s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData(u)]
            endfunction
    
            function s__CriticalStrike___CriticalStrike_SetChance takes unit u,real value returns nothing
                set s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData(u)]=value
            endfunction
    
            function s__CriticalStrike___CriticalStrike_SetMultiplier takes unit u,real value returns nothing
                set s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData(u)]=value
            endfunction
    
            function s__CriticalStrike___CriticalStrike_AddCritical takes unit u,real chance,real multuplier returns nothing
                set s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((u ))]=(( (s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((u))]) + chance)*1.0) // INLINED!!
                set s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((u ))]=(( (s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((u))]) + multuplier)*1.0) // INLINED!!
            endfunction
    
            function s__CriticalStrike___CriticalStrike_OnPeriod takes nothing returns nothing
                local integer i= 0
                local integer this
                
                loop
                    exitwhen i > s__CriticalStrike___CriticalStrike_didx
                        set this=s__CriticalStrike___CriticalStrike_data[i]
                        set s__CriticalStrike___CriticalStrike_ticks[this]=s__CriticalStrike___CriticalStrike_ticks[this] - 1
    
                        if s__CriticalStrike___CriticalStrike_ticks[this] <= 0 then
                            if s__CriticalStrike___CriticalStrike_types[this] == 0 then
                                call s__CriticalStrike___CriticalStrike_AddCritical(s__CriticalStrike___CriticalStrike_u[this] , - s__CriticalStrike___CriticalStrike_chance[this] , - s__CriticalStrike___CriticalStrike_multiplier[this])
                            elseif s__CriticalStrike___CriticalStrike_types[this] == 1 then
                                set s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((s__CriticalStrike___CriticalStrike_u[this] ))]=(( (s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((s__CriticalStrike___CriticalStrike_u[this]))]) - s__CriticalStrike___CriticalStrike_chance[this])*1.0) // INLINED!!
                            else
                                set s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((s__CriticalStrike___CriticalStrike_u[this] ))]=(( (s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((s__CriticalStrike___CriticalStrike_u[this]))]) - s__CriticalStrike___CriticalStrike_multiplier[this])*1.0) // INLINED!!
                            endif
    
                            set s__CriticalStrike___CriticalStrike_data[i]=s__CriticalStrike___CriticalStrike_data[s__CriticalStrike___CriticalStrike_didx]
                            set s__CriticalStrike___CriticalStrike_didx=s__CriticalStrike___CriticalStrike_didx - 1
                            set i=i - 1
                            call s__CriticalStrike___CriticalStrike_destroy(this)
                        endif
                    set i=i + 1
                endloop
            endfunction
    
            function s__CriticalStrike___CriticalStrike_AddTimed takes unit u,real chance,real multiplier,real duration,integer types returns nothing
                local integer this= s__CriticalStrike___CriticalStrike__allocate()
    
                set s__CriticalStrike___CriticalStrike_u[this]=u
                set s__CriticalStrike___CriticalStrike_chance[this]=chance
                set s__CriticalStrike___CriticalStrike_multiplier[this]=multiplier
                set s__CriticalStrike___CriticalStrike_ticks[this]=duration / 0.03125000
                set s__CriticalStrike___CriticalStrike_types[this]=types
                set s__CriticalStrike___CriticalStrike_didx=s__CriticalStrike___CriticalStrike_didx + 1
                set s__CriticalStrike___CriticalStrike_data[s__CriticalStrike___CriticalStrike_didx]=this
    
                if types == 0 then
                    call s__CriticalStrike___CriticalStrike_AddCritical(u , chance , multiplier)
                elseif types == 1 then
                    set s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((u ))]=(( (s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((u))]) + chance)*1.0) // INLINED!!
                else
                    set s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((u ))]=(( (s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((u))]) + multiplier)*1.0) // INLINED!!
                endif
                
                if s__CriticalStrike___CriticalStrike_didx == 0 then
                    call TimerStart(s__CriticalStrike___CriticalStrike_t, 0.03125000, true, function s__CriticalStrike___CriticalStrike_OnPeriod)
                endif
            endfunction
    
            function s__CriticalStrike___CriticalStrike_CriticalText takes unit whichUnit,string text,real duration,integer red,integer green,integer blue,integer alpha returns nothing
                local texttag tx= CreateTextTag()
                
                call SetTextTagText(tx, text, s__CriticalStrike___CriticalStrike_text_size)
                call SetTextTagPosUnit(tx, whichUnit, 0)
                call SetTextTagColor(tx, red, green, blue, alpha)
                call SetTextTagLifespan(tx, duration)
                call SetTextTagVelocity(tx, 0.0, 0.0355)
                call SetTextTagPermanent(tx, false)
                
                set tx=null
            endfunction
    
            function s__CriticalStrike___CriticalStrike_OnDamage takes nothing returns nothing
                local unit src= GetEventDamageSource()
                local unit tgt= BlzGetEventDamageTarget()
                //----------------------------------------------
                local real damage= GetEventDamage()
                //----------------------------------------------
                local integer idx= GetUnitUserData(src)
                //----------------------------------------------
                local boolean isEnemy= IsUnitEnemy(tgt, GetOwningPlayer(src))
                local boolean notStructure= not IsUnitType(tgt, UNIT_TYPE_STRUCTURE)
                local boolean criticalHit= ( GetRandomReal(0, 100) <= s__CriticalStrike___CriticalStrike_CriticalChance[idx] )
                local boolean process= damage > 0 and criticalHit and isEnemy and notStructure and s__CriticalStrike___CriticalStrike_CriticalMultiplier[idx] > 0
                //----------------------------------------------
    
                if process then
                    set s__CriticalStrike___CriticalStrike_CriticalSource=src
                    set s__CriticalStrike___CriticalStrike_CriticalTarget=tgt
                    set s__CriticalStrike___CriticalStrike_CriticalDamage=damage * ( 1 + s__CriticalStrike___CriticalStrike_CriticalMultiplier[idx] )
    
                    call TriggerEvaluate(s__CriticalStrike___CriticalStrike_Critical)
    
                    //in case of damage modification 
                    call BlzSetEventDamage(s__CriticalStrike___CriticalStrike_CriticalDamage)
    
                    if s__CriticalStrike___CriticalStrike_CriticalDamage > 0 then
                        call s__CriticalStrike___CriticalStrike_CriticalText(tgt , ( I2S(R2I(s__CriticalStrike___CriticalStrike_CriticalDamage)) + "!" ) , 1.5 , 255 , 0 , 0 , 255)
                    endif
    
                    set s__CriticalStrike___CriticalStrike_CriticalSource=null
                    set s__CriticalStrike___CriticalStrike_CriticalTarget=null
                    set s__CriticalStrike___CriticalStrike_CriticalDamage=0.0
                endif
            endfunction
    
            function s__CriticalStrike___CriticalStrike_Register takes code c returns nothing
                call TriggerAddCondition(s__CriticalStrike___CriticalStrike_Critical, Filter(c))
            endfunction
    
            function s__CriticalStrike___CriticalStrike_onInit takes nothing returns nothing
                call s__DamageI_RegisterAttackDamage((function s__CriticalStrike___CriticalStrike_OnDamage) , true) // INLINED!!
            endfunction
    
        
        
        
    
        function RegisterCriticalStrikeEvent takes code c returns nothing
            call TriggerAddCondition(s__CriticalStrike___CriticalStrike_Critical, Filter((c))) // INLINED!!
        endfunction
    
        function GetCriticalSource takes nothing returns unit
            return s__CriticalStrike___CriticalStrike_CriticalSource
        endfunction
    
        function GetCriticalTarget takes nothing returns unit
            return s__CriticalStrike___CriticalStrike_CriticalTarget
        endfunction
    
        function GetCriticalDamage takes nothing returns real
            return s__CriticalStrike___CriticalStrike_CriticalDamage
        endfunction
    
        function GetUnitCriticalChance takes unit u returns real
            return (s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((u))]) // INLINED!!
        endfunction
    
        function GetUnitCriticalMultiplier takes unit u returns real
            return (s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((u))]) // INLINED!!
        endfunction
    
        function SetUnitCriticalChance takes unit u,real value returns nothing
            set s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData((u ))]=(( value)*1.0) // INLINED!!
        endfunction
    
        function SetUnitCriticalMultiplier takes unit u,real value returns nothing
            set s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData((u ))]=(( value)*1.0) // INLINED!!
        endfunction
    
        function SetCriticalEventDamage takes real newValue returns nothing
            set s__CriticalStrike___CriticalStrike_CriticalDamage=newValue
        endfunction
    
        function UnitAddCriticalStrike takes unit u,real chance,real multiplier returns nothing
            call s__CriticalStrike___CriticalStrike_AddCritical(u , chance , multiplier)
        endfunction
    
        function UnitAddCriticalStrikeTimed takes unit u,real chance,real multiplier,real duration returns nothing
            call s__CriticalStrike___CriticalStrike_AddTimed(u , chance , multiplier , duration , 0)
        endfunction
    
        function UnitAddCriticalChanceTimed takes unit u,real chance,real duration returns nothing
            call s__CriticalStrike___CriticalStrike_AddTimed(u , chance , 0 , duration , 1)
        endfunction
    
        function UnitAddCriticalMultiplierTimed takes unit u,real multiplier,real duration returns nothing
            call s__CriticalStrike___CriticalStrike_AddTimed(u , 0 , multiplier , duration , 2)
        endfunction

//library CriticalStrike ends
//library NewBonus:
    
    
       
        
            //SetUnitAbilityBonusI() and SetUnitAbilityBonusR are necessary to manage abilities that have integer fields and real fields
            //but the return is normalized to reals
            function s__NewBonus_SetUnitAbilityBonusI takes unit u,integer abilCode,abilityintegerlevelfield field,integer amount returns integer
                if GetUnitAbilityLevel(u, abilCode) == 0 then
                    call UnitAddAbility(u, abilCode)
                    call UnitMakeAbilityPermanent(u, true, abilCode)
                endif
            
                //Increasing and Decreasing is necessary since the abilities do not get updated just by changing
                //it's fields values. In the future, if Blizzard decides to patch it, it could be removed.
                if BlzSetAbilityIntegerLevelField(BlzGetUnitAbility(u, abilCode), field, 0, amount) then
                    call IncUnitAbilityLevel(u, abilCode)
                    call DecUnitAbilityLevel(u, abilCode)
                endif
            
                return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, abilCode), field, 0)
            endfunction
    
            function s__NewBonus_SetUnitAbilityBonusR takes unit u,integer abilCode,abilityreallevelfield field,real amount returns real
                if GetUnitAbilityLevel(u, abilCode) == 0 then
                    call UnitAddAbility(u, abilCode)
                    call UnitMakeAbilityPermanent(u, true, abilCode)
                endif
            
                if BlzSetAbilityRealLevelField(BlzGetUnitAbility(u, abilCode), field, 0, amount) then
                    call IncUnitAbilityLevel(u, abilCode)
                    call DecUnitAbilityLevel(u, abilCode)
                endif
            
                return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, abilCode), field, 0)
            endfunction
    
            function s__NewBonus_GetUnitBonus takes unit u,integer bonus_type returns integer
                if bonus_type == BONUS_DAMAGE then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__DAMAGE_ABILITY), NewBonus__DAMAGE_FIELD, 0)
                elseif bonus_type == BONUS_ARMOR then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__ARMOR_ABILITY), NewBonus__ARMOR_FIELD, 0)
                elseif bonus_type == BONUS_HEALTH then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__HEALTH_ABILITY), NewBonus__HEALTH_FIELD, 0)
                elseif bonus_type == BONUS_MANA then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__MANA_ABILITY), NewBonus__MANA_FIELD, 0)
                elseif bonus_type == BONUS_AGILITY then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__STATS_ABILITY), NewBonus__AGILITY_FIELD, 0)
                elseif bonus_type == BONUS_STRENGTH then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__STATS_ABILITY), NewBonus__STRENGTH_FIELD, 0)
                elseif bonus_type == BONUS_INTELLIGENCE then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__STATS_ABILITY), NewBonus__INTELLIGENCE_FIELD, 0)
                elseif bonus_type == BONUS_MOVEMENT_SPEED then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__MOVEMENTSPEED_ABILITY), NewBonus__MOVEMENTSPEED_FIELD, 0)
                elseif bonus_type == BONUS_SIGHT_RANGE then
                    return BlzGetAbilityIntegerLevelField(BlzGetUnitAbility(u, NewBonus__SIGHT_RANGE_ABILITY), NewBonus__SIGHT_RANGE_FIELD, 0)
                else
                    call DisplayTimedTextToPlayer(Player(0), 0, 0, 10, "Invalid Bonus Type")
                endif
                
                return - 1
            endfunction
    
            function s__NewBonus_SetUnitBonus takes unit u,integer bonus_type,integer amount returns integer
                local real p

                if bonus_type == BONUS_DAMAGE then
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__DAMAGE_ABILITY , NewBonus__DAMAGE_FIELD , amount)
                elseif bonus_type == BONUS_ARMOR then
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__ARMOR_ABILITY , NewBonus__ARMOR_FIELD , amount)
                elseif bonus_type == BONUS_HEALTH then
                    set p=GetUnitLifePercent(u)
                    call BlzSetUnitMaxHP(u, ( BlzGetUnitMaxHP(u) + amount - s__NewBonus_GetUnitBonus(u , bonus_type) ))
                    call SetUnitLifePercentBJ(u, p)
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__HEALTH_ABILITY , NewBonus__HEALTH_FIELD , amount)
                elseif bonus_type == BONUS_MANA then
                    set p=GetUnitManaPercent(u)
                    call BlzSetUnitMaxMana(u, ( BlzGetUnitMaxMana(u) + amount - s__NewBonus_GetUnitBonus(u , bonus_type) ))
                    call SetUnitManaPercentBJ(u, p)
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__MANA_ABILITY , NewBonus__MANA_FIELD , amount)
                elseif bonus_type == BONUS_AGILITY then
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__STATS_ABILITY , NewBonus__AGILITY_FIELD , amount)
                elseif bonus_type == BONUS_STRENGTH then
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__STATS_ABILITY , NewBonus__STRENGTH_FIELD , amount)
                elseif bonus_type == BONUS_INTELLIGENCE then
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__STATS_ABILITY , NewBonus__INTELLIGENCE_FIELD , amount)
                elseif bonus_type == BONUS_MOVEMENT_SPEED then
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__MOVEMENTSPEED_ABILITY , NewBonus__MOVEMENTSPEED_FIELD , amount)
                elseif bonus_type == BONUS_SIGHT_RANGE then
                    call BlzSetUnitRealField(u, UNIT_RF_SIGHT_RADIUS, ( BlzGetUnitRealField(u, UNIT_RF_SIGHT_RADIUS) + amount - s__NewBonus_GetUnitBonus(u , bonus_type) ))
                    return s__NewBonus_SetUnitAbilityBonusI(u , NewBonus__SIGHT_RANGE_ABILITY , NewBonus__SIGHT_RANGE_FIELD , amount)
                else
                    call DisplayTimedTextToPlayer(Player(0), 0, 0, 10, "Invalid Bonus Type")
                endif
    
                return - 1
            endfunction
    
            function s__NewBonus_AddUnitBonus takes unit u,integer bonus_type,integer amount returns integer
                local integer current_amount= s__NewBonus_GetUnitBonus(u , bonus_type)

                // Added in version 1.5 to avoid overflow/underflow of the field value
                if amount > 0 and current_amount > 2147483647 - amount then //Overflow
                    set amount=2147483647 - current_amount
                elseif amount < 0 and current_amount < - 2147483648 - amount then //Underflow
                    set amount=- 2147483648 - current_amount
                endif
    
                call s__NewBonus_SetUnitBonus(u , bonus_type , ( current_amount + amount ))
    
                return amount
            endfunction

            // Funtions that handle the real bonus types

            function s__NewBonus_GetUnitBonusR takes unit u,integer bonus_type returns real
                if bonus_type == BONUS_HEALTH_REGEN then
                    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, NewBonus__HEALTHREGEN_ABILITY), NewBonus__HEALTHREGEN_FIELD, 0)
                elseif bonus_type == BONUS_MANA_REGEN then
                    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, NewBonus__MANAREGEN_ABILITY), NewBonus__MANAREGEN_FIELD, 0)
                elseif bonus_type == BONUS_ATTACK_SPEED then
                    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, NewBonus__ATTACKSPEED_ABILITY), NewBonus__ATTACKSPEED_FIELD, 0)
                elseif bonus_type == BONUS_MAGIC_RESISTANCE then
                    return BlzGetAbilityRealLevelField(BlzGetUnitAbility(u, NewBonus__MAGIC_RESISTANCE_ABILITY), NewBonus__MAGIC_RESISTANCE_FIELD, 0)
                elseif bonus_type == BONUS_EVASION_CHANCE then
                    return (s__Evasion___Evasion_EvasionChance[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_MISS_CHANCE then
                    return (s__Evasion___Evasion_MissChance[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_CRITICAL_CHANCE then
                    return (s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_CRITICAL_DAMAGE then
                    return (s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_SPELL_POWER_FLAT then
                    return (s__SpellPower___SpellPower_Flat[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_SPELL_POWER_PERCENT then
                    return (s__SpellPower___SpellPower_Percent[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_LIFE_STEAL then
                    return (s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData(((u)))]) // INLINED!!
                elseif bonus_type == BONUS_SPELL_VAMP then
                    return (s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData(((u)))]) // INLINED!!
                //elseif bonus_type == BONUS_COOLDOWN_REDUCTION then
                //    return GetUnitCooldownReduction(u)
                //elseif bonus_type == BONUS_COOLDOWN_REDUCTION_FLAT then
                //    return GetUnitCooldownReductionFlat(u)
                //elseif bonus_type == BONUS_COOLDOWN_OFFSET then
                //    return GetUnitCooldownOffset(u)
                else
                    call DisplayTimedTextToPlayer(Player(0), 0, 0, 10, "Invalid Bonus Type")
                endif
                
                return - 1.0
            endfunction
    
            function s__NewBonus_SetUnitBonusR takes unit u,integer bonus_type,real amount returns nothing
                if bonus_type == BONUS_HEALTH_REGEN then
                    call s__NewBonus_SetUnitAbilityBonusR(u , NewBonus__HEALTHREGEN_ABILITY , NewBonus__HEALTHREGEN_FIELD , amount)
                elseif bonus_type == BONUS_MANA_REGEN then
                    call s__NewBonus_SetUnitAbilityBonusR(u , NewBonus__MANAREGEN_ABILITY , NewBonus__MANAREGEN_FIELD , amount)
                elseif bonus_type == BONUS_ATTACK_SPEED then
                    call s__NewBonus_SetUnitAbilityBonusR(u , NewBonus__ATTACKSPEED_ABILITY , NewBonus__ATTACKSPEED_FIELD , amount)
                elseif bonus_type == BONUS_MAGIC_RESISTANCE then
                    call s__NewBonus_SetUnitAbilityBonusR(u , NewBonus__MAGIC_RESISTANCE_ABILITY , NewBonus__MAGIC_RESISTANCE_FIELD , amount)
                elseif bonus_type == BONUS_EVASION_CHANCE then
                    set s__Evasion___Evasion_EvasionChance[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_MISS_CHANCE then
                    set s__Evasion___Evasion_MissChance[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_CRITICAL_CHANCE then
                    set s__CriticalStrike___CriticalStrike_CriticalChance[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_CRITICAL_DAMAGE then
                    set s__CriticalStrike___CriticalStrike_CriticalMultiplier[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_SPELL_POWER_FLAT then
                    set s__SpellPower___SpellPower_Flat[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_SPELL_POWER_PERCENT then
                    set s__SpellPower___SpellPower_Percent[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_LIFE_STEAL then
                    set s__LifeSteal___LifeSteal_LifeSteal___LifeSteal[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                elseif bonus_type == BONUS_SPELL_VAMP then
                    set s__SpellVamp___SpellVamp_SpellVamp___SpellVamp[GetUnitUserData(((u ) ))]=(( (( amount)*1.0))*1.0) // INLINED!!
                //elseif bonus_type == BONUS_COOLDOWN_REDUCTION then
                //    call SetUnitCooldownReduction(u, amount)
                //elseif bonus_type == BONUS_COOLDOWN_REDUCTION_FLAT then
                //    call SetUnitCooldownReductionFlat(u, amount)
                //elseif bonus_type == BONUS_COOLDOWN_OFFSET then
                //    call SetUnitCooldownOffset(u, amount)
                else
                    call DisplayTimedTextToPlayer(Player(0), 0, 0, 10, "Invalid Bonus Type")
                endif
            endfunction
    
            function s__NewBonus_AddUnitBonusR takes unit u,integer bonus_type,real amount returns nothing
                if bonus_type == BONUS_HEALTH_REGEN then
                    call s__NewBonus_SetUnitBonusR(u , bonus_type , s__NewBonus_GetUnitBonusR(u , bonus_type) + amount)
                elseif bonus_type == BONUS_MANA_REGEN then
                    call s__NewBonus_SetUnitBonusR(u , bonus_type , s__NewBonus_GetUnitBonusR(u , bonus_type) + amount)
                elseif bonus_type == BONUS_ATTACK_SPEED then
                    call s__NewBonus_SetUnitBonusR(u , bonus_type , s__NewBonus_GetUnitBonusR(u , bonus_type) + amount)
                elseif bonus_type == BONUS_MAGIC_RESISTANCE then
                    call s__NewBonus_SetUnitBonusR(u , bonus_type , s__NewBonus_GetUnitBonusR(u , bonus_type) + amount)
                elseif bonus_type == BONUS_EVASION_CHANCE then
                    call UnitAddEvasionChance(u , amount)
                elseif bonus_type == BONUS_MISS_CHANCE then
                    call UnitAddMissChance(u , amount)
                elseif bonus_type == BONUS_CRITICAL_CHANCE then
                    call s__CriticalStrike___CriticalStrike_AddCritical((u ) , (( amount )*1.0) , (( 0)*1.0)) // INLINED!!
                elseif bonus_type == BONUS_CRITICAL_DAMAGE then
                    call s__CriticalStrike___CriticalStrike_AddCritical((u ) , (( 0 )*1.0) , (( amount)*1.0)) // INLINED!!
                elseif bonus_type == BONUS_SPELL_POWER_FLAT then
                    call UnitAddSpellPowerFlat(u , amount)
                elseif bonus_type == BONUS_SPELL_POWER_PERCENT then
                    call UnitAddSpellPowerPercent(u , amount)
                elseif bonus_type == BONUS_LIFE_STEAL then
                    call UnitAddLifeSteal(u , amount)
                elseif bonus_type == BONUS_SPELL_VAMP then
                    call UnitAddSpellVamp(u , amount)
                //elseif bonus_type == BONUS_COOLDOWN_REDUCTION then
                //    call UnitAddCooldownReduction(u, amount)
                //elseif bonus_type == BONUS_COOLDOWN_REDUCTION_FLAT then
                //    call UnitAddCooldownReductionFlat(u, amount)
                //elseif bonus_type == BONUS_COOLDOWN_OFFSET then
                //    call UnitAddCooldownOffset(u, amount)
                else
                    call DisplayTimedTextToPlayer(Player(0), 0, 0, 10, "Invalid Bonus Type")
                endif
            endfunction
        
        
        
        
        
        function GetUnitBonus takes unit u,integer bonus_type returns integer
            return s__NewBonus_GetUnitBonus(u , bonus_type)
        endfunction
    
        function SetUnitBonus takes unit u,integer bonus_type,integer amount returns integer
            return s__NewBonus_SetUnitBonus(u , bonus_type , amount)
        endfunction
        
        function RemoveUnitBonus takes unit u,integer bonus_type returns nothing
            call s__NewBonus_SetUnitBonus(u , bonus_type , 0)
        endfunction
        
        function AddUnitBonus takes unit u,integer bonus_type,integer amount returns integer
            return s__NewBonus_AddUnitBonus(u , bonus_type , amount)
        endfunction

        // Extra functions for manipulating the real bonus types

        function GetUnitBonusReal takes unit u,integer bonus_type returns real
            return s__NewBonus_GetUnitBonusR(u , bonus_type)
        endfunction
    
        function SetUnitBonusReal takes unit u,integer bonus_type,real amount returns nothing
            call s__NewBonus_SetUnitBonusR(u , bonus_type , amount)
        endfunction
        
        function RemoveUnitBonusReal takes unit u,integer bonus_type returns nothing
            call s__NewBonus_SetUnitBonusR(u , bonus_type , 0)
        endfunction
        
        function AddUnitBonusReal takes unit u,integer bonus_type,real amount returns real
            call s__NewBonus_AddUnitBonusR(u , bonus_type , amount)
            return amount
        endfunction

//library NewBonus ends
//library NewBonusUtils:
    
    

        //Dynamic Indexing for buff and timed

        //Dynamic Indexing for items


        function s__NewBonusUtils__NewBonusUtils_destroyInstance takes integer this,integer i,boolean isItem returns integer
            if s__NewBonusUtils__NewBonusUtils_bonus_type[this] < 10 then
                call s__NewBonus_AddUnitBonus(s__NewBonusUtils__NewBonusUtils_u[this] , s__NewBonusUtils__NewBonusUtils_bonus_type[this] , - s__NewBonusUtils__NewBonusUtils_int_amount[this])
            else
                //if this.bonus_type == BONUS_COOLDOWN_REDUCTION then
                //    call UnitRemoveCooldownReduction(this.u, this.real_amount)
                //else
                    call AddUnitBonusReal(s__NewBonusUtils__NewBonusUtils_u[this] , s__NewBonusUtils__NewBonusUtils_bonus_type[this] , - s__NewBonusUtils__NewBonusUtils_real_amount[this])
                //endif
            endif

            if isItem then
                set s__NewBonusUtils__NewBonusUtils_items[i]=s__NewBonusUtils__NewBonusUtils_items[s__NewBonusUtils__NewBonusUtils_ditem]
                set s__NewBonusUtils__NewBonusUtils_ditem=s__NewBonusUtils__NewBonusUtils_ditem - 1
            else
                set s__NewBonusUtils__NewBonusUtils_data[i]=s__NewBonusUtils__NewBonusUtils_data[s__NewBonusUtils__NewBonusUtils_didx]
                set s__NewBonusUtils__NewBonusUtils_didx=s__NewBonusUtils__NewBonusUtils_didx - 1

                if s__NewBonusUtils__NewBonusUtils_didx == - 1 then
                    call PauseTimer(s__NewBonusUtils__NewBonusUtils_t)
                endif
            endif

            set s__NewBonusUtils__NewBonusUtils_u[this]=null
            set s__NewBonusUtils__NewBonusUtils_i[this]=null
            call sc__NewBonus_deallocate(this)

            return i - 1
        endfunction

        function s__NewBonusUtils__NewBonusUtils_OnDrop takes nothing returns nothing
            local item itm= GetManipulatedItem()
            local integer i= 0
            local integer this

            loop
                exitwhen i > s__NewBonusUtils__NewBonusUtils_ditem
                    set this=s__NewBonusUtils__NewBonusUtils_items[i]

                    if s__NewBonusUtils__NewBonusUtils_i[this] == itm then
                        set i=s__NewBonusUtils__NewBonusUtils_destroyInstance(this,i , true)
                    endif
                set i=i + 1
            endloop
        endfunction
     
        function s__NewBonusUtils__NewBonusUtils_OnPeriod takes nothing returns nothing
            local integer i= 0
            local integer this

            loop
                exitwhen i > s__NewBonusUtils__NewBonusUtils_didx
                    set this=s__NewBonusUtils__NewBonusUtils_data[i]

                    if s__NewBonusUtils__NewBonusUtils_link[this] then // Timed link
                        set s__NewBonusUtils__NewBonusUtils_ticks[this]=s__NewBonusUtils__NewBonusUtils_ticks[this] - 1

                        if s__NewBonusUtils__NewBonusUtils_ticks[this] <= 0 then
                            set i=s__NewBonusUtils__NewBonusUtils_destroyInstance(this,i , false)
                        endif
                    else // Buff Link
                        if GetUnitAbilityLevel(s__NewBonusUtils__NewBonusUtils_u[this], s__NewBonusUtils__NewBonusUtils_buffId[this]) == 0 then
                            set i=s__NewBonusUtils__NewBonusUtils_destroyInstance(this,i , false)
                        endif
                    endif
                set i=i + 1
            endloop
        endfunction

        function s__NewBonusUtils__NewBonusUtils_TimeLink takes unit u,integer bonus_type,real amount,real duration,boolean link returns nothing
            local integer this= s__NewBonusUtils__NewBonusUtils__allocate()

            set s__NewBonusUtils__NewBonusUtils_u[this]=u
            set s__NewBonusUtils__NewBonusUtils_bonus_type[this]=bonus_type
            set s__NewBonusUtils__NewBonusUtils_ticks[this]=duration / 0.03125000
            set s__NewBonusUtils__NewBonusUtils_link[this]=link
            set s__NewBonusUtils__NewBonusUtils_didx=s__NewBonusUtils__NewBonusUtils_didx + 1
            set s__NewBonusUtils__NewBonusUtils_data[s__NewBonusUtils__NewBonusUtils_didx]=this

            if bonus_type < 10 then
                set s__NewBonusUtils__NewBonusUtils_int_amount[this]=s__NewBonus_AddUnitBonus(u , bonus_type , R2I(amount))
            else
                set s__NewBonusUtils__NewBonusUtils_real_amount[this]=AddUnitBonusReal(u , bonus_type , amount)
            endif
         
            if s__NewBonusUtils__NewBonusUtils_didx == 0 then
                call TimerStart(s__NewBonusUtils__NewBonusUtils_t, 0.03125000, true, function s__NewBonusUtils__NewBonusUtils_OnPeriod)
            endif
        endfunction

        function s__NewBonusUtils__NewBonusUtils_BuffLink takes unit u,integer bonus_type,real amount,integer buffId,boolean link returns nothing
            local integer this= s__NewBonusUtils__NewBonusUtils__allocate()

            set s__NewBonusUtils__NewBonusUtils_u[this]=u
            set s__NewBonusUtils__NewBonusUtils_bonus_type[this]=bonus_type
            set s__NewBonusUtils__NewBonusUtils_buffId[this]=buffId
            set s__NewBonusUtils__NewBonusUtils_link[this]=link
            set s__NewBonusUtils__NewBonusUtils_didx=s__NewBonusUtils__NewBonusUtils_didx + 1
            set s__NewBonusUtils__NewBonusUtils_data[s__NewBonusUtils__NewBonusUtils_didx]=this

            if bonus_type < 10 then
                set s__NewBonusUtils__NewBonusUtils_int_amount[this]=s__NewBonus_AddUnitBonus(u , bonus_type , R2I(amount))
            else
                set s__NewBonusUtils__NewBonusUtils_real_amount[this]=AddUnitBonusReal(u , bonus_type , amount)
            endif
         
            if s__NewBonusUtils__NewBonusUtils_didx == 0 then
                call TimerStart(s__NewBonusUtils__NewBonusUtils_t, 0.03125000, true, function s__NewBonusUtils__NewBonusUtils_OnPeriod)
            endif
        endfunction

        function s__NewBonusUtils__NewBonusUtils_ItemLink takes unit u,integer bonus_type,real amount,item i returns nothing
            local integer this= s__NewBonusUtils__NewBonusUtils__allocate()

            set s__NewBonusUtils__NewBonusUtils_u[this]=u
            set s__NewBonusUtils__NewBonusUtils_i[this]=i
            set s__NewBonusUtils__NewBonusUtils_bonus_type[this]=bonus_type
            set s__NewBonusUtils__NewBonusUtils_ditem=s__NewBonusUtils__NewBonusUtils_ditem + 1
            set s__NewBonusUtils__NewBonusUtils_items[s__NewBonusUtils__NewBonusUtils_ditem]=this
         
            if bonus_type < 10 then
                set s__NewBonusUtils__NewBonusUtils_int_amount[this]=s__NewBonus_AddUnitBonus(u , bonus_type , R2I(amount))
            else
                set s__NewBonusUtils__NewBonusUtils_real_amount[this]=AddUnitBonusReal(u , bonus_type , amount)
            endif
        endfunction

        function s__NewBonusUtils__NewBonusUtils_CopyBonuses takes unit source,unit target returns nothing
            local integer i= 1

            loop
                exitwhen i > 24
                    if i < 10 then
                        if s__NewBonus_GetUnitBonus(source , i) != 0 then
                            call s__NewBonus_AddUnitBonus(target , i , s__NewBonus_GetUnitBonus(source , i))
                        endif
                    else
                        if (s__NewBonus_GetUnitBonusR((source ) , ( i))) != 0 then // INLINED!!
                            call AddUnitBonusReal(target , i , (s__NewBonus_GetUnitBonusR((source ) , ( i)))) // INLINED!!
                        endif
                    endif
                set i=i + 1
            endloop
        endfunction

        function s__NewBonusUtils__NewBonusUtils_MirrorBonuses takes unit source,unit target returns nothing
            local integer i= 1

            loop
                exitwhen i > 24
                    if i < 10 then
                        call s__NewBonus_SetUnitBonus(target , i , s__NewBonus_GetUnitBonus(source , i))
                    else
                        call s__NewBonus_SetUnitBonusR((target ) , ( i ) , (( (s__NewBonus_GetUnitBonusR((source ) , ( i))))*1.0)) // INLINED!!
                    endif
                set i=i + 1
            endloop
        endfunction

        function s__NewBonusUtils__NewBonusUtils_onInit takes nothing returns nothing
            call RegisterPlayerUnitEvent(EVENT_PLAYER_UNIT_DROP_ITEM , function s__NewBonusUtils__NewBonusUtils_OnDrop)
        endfunction

    
    
    

    function AddUnitBonusTimed takes unit u,integer bonus_type,real amount,real duration returns nothing
        call s__NewBonusUtils__NewBonusUtils_TimeLink(u , bonus_type , amount , duration , true)
    endfunction

    function LinkBonusToBuff takes unit u,integer bonus_type,real amount,integer buffId returns nothing
        call s__NewBonusUtils__NewBonusUtils_BuffLink(u , bonus_type , amount , buffId , false)
    endfunction

    function LinkBonusToItem takes unit u,integer bonus_type,real amount,item i returns nothing
        call s__NewBonusUtils__NewBonusUtils_ItemLink(u , bonus_type , amount , i)
    endfunction

    function UnitCopyBonuses takes unit source,unit target returns nothing
        call s__NewBonusUtils__NewBonusUtils_CopyBonuses(source , target)
    endfunction

    function UnitMirrorBonuses takes unit source,unit target returns nothing
        call s__NewBonusUtils__NewBonusUtils_MirrorBonuses(source , target)
    endfunction

//library NewBonusUtils ends
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
//*  RegisterPlayerUnitEvent
//TESH.scrollpos=28
//TESH.alwaysfold=0

//***************************************************************************
//*  NewBonusUtil
//***************************************************************************
//*  NewBonus
//***************************************************************************
//*  SpellVamp
//***************************************************************************
//*  CriticalStrike
//***************************************************************************
//*  SpellPower
//***************************************************************************
//*  LifeSteal
//***************************************************************************
//*  DamageInterface
//***************************************************************************
//*  Evasion
//***************************************************************************
//*  TasButtonList



//***************************************************************************
//*  String

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'ncp3', 2048.0, - 5952.0, 270.000, 'ncp3')
    set u=BlzCreateUnitWithSkin(p, 'ncp3', 2048.0, 0.0, 270.000, 'ncp3')
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'zmar', 1530.5, - 6958.8, 329.622, 'zmar')
    set u=BlzCreateUnitWithSkin(p, 'zmar', 2047.2, - 6962.6, 160.131, 'zmar')
    set u=BlzCreateUnitWithSkin(p, 'zmar', 2563.4, - 6962.6, 164.459, 'zmar')
    set u=BlzCreateUnitWithSkin(p, 'zmar', 1080.3, - 6405.1, 329.622, 'zmar')
    set u=BlzCreateUnitWithSkin(p, 'zmar', 3005.3, - 6402.9, 329.622, 'zmar')
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_WeaponsShop=Rect(1344.0, - 7008.0, 1728.0, - 6688.0)
    set gg_rct_MagicShop=Rect(1856.0, - 7008.0, 2240.0, - 6688.0)
    set gg_rct_DefenseShop=Rect(2368.0, - 7008.0, 2752.0, - 6688.0)
    set gg_rct_GeneralShop=Rect(2720.0, - 6592.0, 3040.0, - 6208.0)
    set gg_rct_RecipesShop=Rect(1056.0, - 6592.0, 1376.0, - 6208.0)
    set gg_rct_LeaveShop=Rect(1984.0, - 6016.0, 2112.0, - 5888.0)
    set gg_rct_AttackPoint=Rect(1920.0, - 128.0, 2176.0, 128.0)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), true)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3), true)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), true)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(5), true)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call ForcePlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(6), true)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call ForcePlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(7), true)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 8)
    call ForcePlayerStartLocation(Player(11), 8)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(11), true)
    call SetPlayerController(Player(11), MAP_CONTROL_NEUTRAL)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerTeam(Player(6), 0)
    call SetPlayerTeam(Player(7), 0)
    call SetPlayerTeam(Player(11), 0)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 7)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 7)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2, 7)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 7)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(4, 7)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5, 7)
    call SetStartLocPrio(5, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(6, 7)
    call SetStartLocPrio(6, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 6, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7, 7)
    call SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 6, 6, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 7552.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 9472.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7424.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7424.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 9472.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 7552.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs27001468")
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
    call SetPlayers(9)
    call SetTeams(9)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, 2048.0, - 6336.0)
    call DefineStartLocation(1, 2048.0, - 6336.0)
    call DefineStartLocation(2, 2048.0, - 6336.0)
    call DefineStartLocation(3, 2048.0, - 6336.0)
    call DefineStartLocation(4, 2048.0, - 6336.0)
    call DefineStartLocation(5, 2048.0, - 6336.0)
    call DefineStartLocation(6, 2048.0, - 6336.0)
    call DefineStartLocation(7, 2048.0, - 6336.0)
    call DefineStartLocation(8, 2048.0, - 5056.0)

    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(1), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(2), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(3), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(4), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(5), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(6), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(7), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(11), MAP_CONTROL_NEUTRAL)
    call InitGenericPlayerSlots()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

function jasshelper__initstructs27001468 takes nothing returns nothing
    set st__NewBonus_onDestroy[7]=null
    set st__NewBonus_onDestroy[8]=null









    call ExecuteFunc("s__DamageI_onInit")
    call ExecuteFunc("s__Evasion___Evasion_onInit")
    call ExecuteFunc("s__LifeSteal___LifeSteal_onInit")
    call ExecuteFunc("s__SpellPower___SpellPower_onInit")
    call ExecuteFunc("s__SpellVamp___SpellVamp_onInit")
    call ExecuteFunc("s__CriticalStrike___CriticalStrike_onInit")
    call ExecuteFunc("s__NewBonusUtils__NewBonusUtils_onInit")
endfunction

