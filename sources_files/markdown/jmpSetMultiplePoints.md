jmpSetMultiplePoints()
======================

Defines the temperatures and compositions to be considered in Solver
calculations with arbitrary points.

Syntax
------

int jmpSetMultiplePoints (int numPoints, int numElements, double
\*\*inputData);

Parameters
----------

`numPoints [input]`

Integer that specifies the number of temperature-composition points to
consider in the calculation.

`numElements [input]`

Integer that specifies the number of elements in the alloy.

`inputData [input]`

Pointer to a two-dimensional array of doubles that specifies the set of
temperature-composition points to consider in the calculation. The array
should have `numPoints` rows and `numElements + 1` columns. The first
column must hold the temperature values, while the remaining columns
must be used for the various concentrations of elements in the alloy.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   A call to this function is necessary to prepare the Solver to run
    multiple points calculations. It may also be used to set up single
    phase calculations, when many temperature-composition points
    are required.
-   The specified number of temperature-composition points must not
    exceed 1000.
-   The input temperature and composition units may be specified using
    [jmpSetTemperatureUnit()](jmpSetTemperatureUnit.htm) and
    [jmpSetCompositionUnit()](jmpSetCompositionUnit.htm), respectively.
-   The first element in the alloy is always used for balancing, in
    order to ensure that, for each row, the total fraction of elements
    is 1 (or 100%). As such, it is not necessary to specify its
    concentration, even though it must be passed in the input array.
-   To ensure the validity of the calculations, the specified
    temperatures should not be set to values lower than
    room temperature.
-   Also, you should make sure that the various alloy compositions are
    consistent with the material type, otherwise unexpected or
    unreliable results may be obtained.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLL       `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


