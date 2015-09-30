jmpUnsetPhysicalProperty()
==========================

Removes one or more physical properties from the Coldfire calculation
set.

Syntax
------

int jmpUnsetPhysicalProperty (int propertyToRemove);

Parameters
----------

`propertyToRemove [input]`

Integer that specifies the property (or set of properties) you wish to
exclude from the list of physical and thermophysical properties to be
calculated when running Coldfire. This parameter can take one or any
combination of the following values:

  ------------------------------------------------- --------------------------------------------------------------
  `JMP_PHYSICAL_PROPERTY_DENSITY`                   To exclude density from the calculation set.
  `JMP_PHYSICAL_PROPERTY_MOLAR_VOLUME`              To exclude molar volume from the calculation set.
  `JMP_PHYSICAL_PROPERTY_VISCOSITY`                 To exclude viscosity from the calculation set.
  `JMP_PHYSICAL_PROPERTY_DIFFUSIVITY`               To exclude diffusivity from the calculation set.
  `JMP_PHYSICAL_PROPERTY_SURFACE_TENSION`           To exclude surface tension from the calculation set.
  `JMP_PHYSICAL_PROPERTY_YOUNGS_MODULUS`            To exclude Young's modulus from the calculation set.
  `JMP_PHYSICAL_PROPERTY_BULK_MODULUS`              To exclude bulk modulus from the calculation set.
  `JMP_PHYSICAL_PROPERTY_SHEAR_MODULUS`             To exclude shear modulus from the calculation set.
  `JMP_PHYSICAL_PROPERTY_POISSONS_RATIO`            To exclude Poisson's ratio from the calculation set.
  `JMP_PHYSICAL_PROPERTY_THERMAL_CONDUCTIVITY`      To exclude thermal conductivity from the calculation set.
  `JMP_PHYSICAL_PROPERTY_THERMAL_DIFFUSIVITY`       To exclude thermal diffusivity from the calculation set.
  `JMP_PHYSICAL_PROPERTY_ELECTRICAL_CONDUCTIVITY`   To exclude electrical conductivity from the calculation set.
  `JMP_PHYSICAL_PROPERTY_ELECTRICAL_RESISTIVITY`    To exclude electrical resistivity from the calculation set.
  ------------------------------------------------- --------------------------------------------------------------

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function applies when preparing Coldfire to perform the
    calculation of physical and thermophysical properties. It is also
    relevant to set up the Solidification module, since it uses Coldfire
    to calculate physical and thermophysical properties
    during solidification.
-   This function call is optional. By default, no property will be
    excluded from the calculation.
-   Property flags may be combined in a bitwise manner and unset with a
    single function call, as shown in the code snippet below:
-   The parameter value `JMP_PHYSICAL_PROPERTY_ALL` is also defined, and
    may be used as a shorthand to remove all properties at once.

**Note**  Coldfire always adds enthalpy, specific heat, and latent heat
to the list of physical and thermophysical properties. These quantities
can never be excluded from the calculation.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


