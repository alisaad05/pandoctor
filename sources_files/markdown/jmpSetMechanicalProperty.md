jmpSetMechanicalProperty()
==========================

Adds one or more mechanical properties to the Coldfire calculation set.

Syntax
------

int jmpSetMechanicalProperty (int propertyToAdd);

Parameters
----------

`propertyToAdd [input]`

Integer that specifies the property (or set of properties) you wish to
include in the list of mechanical properties to be calculated when
running Coldfire. This parameter can take one or any combination of the
following values:

  ------------------------------------------ -----------------------------------------------------------
  `JMP_MECHANICAL_PROPERTY_YIELD_STRESS`     To include yield stress in the calculation set.
  `JMP_MECHANICAL_PROPERTY_TENSILE_STRESS`   To include tensile stress in the calculation set.
  `JMP_MECHANICAL_PROPERTY_HARDNESS`         To include Vickers hardness in the calculation set.
  `JMP_MECHANICAL_PROPERTY_HALL_PETCH`       To include Hall-Petch coefficient in the calculation set.
  ------------------------------------------ -----------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function applies when preparing Coldfire to perform the
    calculation of room-temperature matrix mechanical properties.
-   This function call is optional. By default, every property will be
    included in the calculation.
-   Property flags may be combined in a bitwise manner and set with a
    single function call, as shown in the code snippet below:
-   The parameter value `JMP_MECHANICAL_PROPERTY_ALL` is also defined,
    and may be used as a shorthand to add all properties at once.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


