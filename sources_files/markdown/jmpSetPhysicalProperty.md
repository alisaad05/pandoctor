jmpSetPhysicalProperty()
========================

Adds one or more physical properties to the Coldfire calculation set.

Syntax
------

int jmpSetPhysicalProperty (int propertyToAdd);

Parameters
----------

`propertyToAdd [input]`

Integer that specifies the property (or set of properties) you wish to
include in the list of physical and thermophysical properties to be
calculated when running Coldfire. This parameter can take one or any
combination of the following values:

  ------------------------------------------------- ------------------------------------------------------------
  `JMP_PHYSICAL_PROPERTY_DENSITY`                   To include density in the calculation set.
  `JMP_PHYSICAL_PROPERTY_MOLAR_VOLUME`              To include molar volume in the calculation set.
  `JMP_PHYSICAL_PROPERTY_VISCOSITY`                 To include viscosity in the calculation set.
  `JMP_PHYSICAL_PROPERTY_DIFFUSIVITY`               To include diffusivity in the calculation set.
  `JMP_PHYSICAL_PROPERTY_SURFACE_TENSION`           To include surface tension in the calculation set.
  `JMP_PHYSICAL_PROPERTY_YOUNGS_MODULUS`            To include Young's modulus in the calculation set.
  `JMP_PHYSICAL_PROPERTY_BULK_MODULUS`              To include bulk modulus in the calculation set.
  `JMP_PHYSICAL_PROPERTY_SHEAR_MODULUS`             To include shear modulus in the calculation set.
  `JMP_PHYSICAL_PROPERTY_POISSONS_RATIO`            To include Poisson's ratio in the calculation set.
  `JMP_PHYSICAL_PROPERTY_THERMAL_CONDUCTIVITY`      To include thermal conductivity in the calculation set.
  `JMP_PHYSICAL_PROPERTY_THERMAL_DIFFUSIVITY`       To include thermal diffusivity in the calculation set.
  `JMP_PHYSICAL_PROPERTY_ELECTRICAL_CONDUCTIVITY`   To include electrical conductivity in the calculation set.
  `JMP_PHYSICAL_PROPERTY_ELECTRICAL_RESISTIVITY`    To include electrical resistivity in the calculation set.
  ------------------------------------------------- ------------------------------------------------------------

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
-   This function call is optional. By default, every property will be
    included in the calculation.
-   Property flags may be combined in a bitwise manner and set with a
    single function call, as shown in the code snippet below:
-   The parameter value `JMP_PHYSICAL_PROPERTY_ALL` is also defined, and
    may be used as a shorthand to add all properties at once.

**Note**  Coldfire will also add enthalpy, specific heat, and latent
heat to the list of physical and thermophysical properties. These
quantities are always included in the calculation.

Requirements
------------

  --------- -----------------------------------------
  Headers   `jmpcore.h`\
            `jmpcoldfire.h`

  Library   `jmpcoldfire.lib`/`jmpcoldfire_x64.lib`

  DLL       `jmpcoldfire.dll`/`jmpcoldfire_x64.dll`
  --------- -----------------------------------------


