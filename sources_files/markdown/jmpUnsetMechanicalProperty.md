jmpUnsetMechanicalProperty()
============================

Removes one or more mechanical properties from the Coldfire calculation
set.

Syntax
------

int jmpUnsetMechanicalProperty (int propertyToRemove);

Parameters
----------

`propertyToRemove [input]`

Integer that specifies the property (or set of properties) you wish to
exclude from the list of mechanical properties to be calculated when
running Coldfire. This parameter can take one or any combination of the
following values:

  ------------------------------------------ -------------------------------------------------------------
  `JMP_MECHANICAL_PROPERTY_YIELD_STRESS`     To exclude yield stress from the calculation set.
  `JMP_MECHANICAL_PROPERTY_TENSILE_STRESS`   To exclude tensile stress from the calculation set.
  `JMP_MECHANICAL_PROPERTY_HARDNESS`         To exclude Vickers hardness from the calculation set.
  `JMP_MECHANICAL_PROPERTY_HALL_PETCH`       To exclude Hall-Petch coefficient from the calculation set.
  ------------------------------------------ -------------------------------------------------------------

Remarks
-------

-   This function applies when preparing Coldfire to perform the
    calculation of room-temperature matrix mechanical properties.
-   This function call is optional. By default, no property will be
    excluded from the calculation.
-   Property flags may be combined in a bitwise manner and unset with a
    single function call, as shown in the code snippet below:
-   The parameter value `JMP_MECHANICAL_PROPERTY_ALL` is also defined,
    and may be used as a shorthand to remove all properties at once.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


