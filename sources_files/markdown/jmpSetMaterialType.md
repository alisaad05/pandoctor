jmpSetMaterialType()
====================

Prepares the API to run calculations for a given material type.

Syntax
------

int jmpSetMaterialType (int typeFlag);

Parameters
----------

`typeFlag [input]`

Integer that specifies the material type to consider in calculations.
This parameter can take one of the following values:

  --------------------------------------------- -----------------------------------------------------------
  `JMP_MATERIAL_ALUMINIUM_ALLOY`                To set up calculations for aluminium alloys.
  `JMP_MATERIAL_MAGNESIUM_ALLOY`                To set up calculations for magnesium alloys.
  `JMP_MATERIAL_ZIRCONIUM_ALLOY`                To set up calculations for zirconium alloys.
  `JMP_MATERIAL_TITANIUM_ALLOY`                 To set up calculations for titanium alloys.
  `JMP_MATERIAL_COBALT_ALLOY`                   To set up calculations for cobalt alloys.
  `JMP_MATERIAL_SOLDER_ALLOY`                   To set up calculations for solder alloys.
  `JMP_MATERIAL_NICKEL_BASED_SUPERALLOY`        To set up calculations for nickel-based superalloys.
  `JMP_MATERIAL_NICKEL_IRON_BASED_SUPERALLOY`   To set up calculations for nickel-iron-based superalloys.
  `JMP_MATERIAL_SINGLE_CRYSTAL`                 To set up calculations for nickel-based single crystals.
  `JMP_MATERIAL_CAST_IRON`                      To set up calculations for cast irons.
  `JMP_MATERIAL_STAINLESS_STEEL`                To set up calculations for stainless steels.
  `JMP_MATERIAL_GENERAL_STEEL`                  To set up calculations for general steels.
  `JMP_MATERIAL_COPPER_ALLOY`                   To set up calculations for copper alloys.
  --------------------------------------------- -----------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function is critical to the performance of the API. Omitting
    this function call will always result in failure to run
    a calculation.
-   Make sure that the specified material type is consistent with the
    alloy you wish to study, otherwise unexpected or unreliable results
    may be obtained.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


