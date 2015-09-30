jmpSetConcentrationStepping()
=============================

Defines which element to vary, as well as the concentration range and
step size used for variable composition calculations.

Syntax
------

int jmpSetConcentrationStepping (char \*varyingElement, double
startConcentration, double endConcentration, double stepConcentration);

Parameters
----------

`varyingElement [input]`

Pointer to a null-terminated sequence of characters that specifies the
element whose concentration is to be varied.

`startConcentration [input]`

Double that specifies the concentration of the varying element at the
start of the Solver calculation.

`endConcentration [input]`

Double that specifies the concentration of the varying element at the
end of the Solver calculation.

`stepConcentration [input]`

Double that specifies the concentration interval between consecutive
steps.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is required when preparing the Solver to run
    concentration stepping calculations.
-   If the specified varying element is not found in the set of elements
    in the alloy, then the last element of the set will be used instead.
-   The input composition unit may be specified using
    [jmpSetCompositionUnit()](jmpSetCompositionUnit.htm).
-   When decreasing the concentration, it is not necessary to specify a
    negative stepping interval.
-   Make sure that the successive alloy compositions are consistent with
    the material type, otherwise unexpected or unreliable results may
    be obtained.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


