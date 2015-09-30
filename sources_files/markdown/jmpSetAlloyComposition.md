jmpSetAlloyComposition()
========================

Defines the numerical values of the alloy composition.

Syntax
------

int jmpSetAlloyComposition (int numElements, double \*composition);

Parameters
----------

`numElements [input]`

Integer that specifies the number of elements in the alloy.

`composition [input]`

Pointer to an array of doubles that specifies the concentrations of the
elements in the alloy.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is required to set up most calculation modules.
    The only exception is Coldfire, for which the alloy composition is
    read from a Solver output file.
-   The input composition unit may be specified using
    [jmpSetCompositionUnit()](jmpSetCompositionUnit.htm).
-   The first element in the alloy is always used for balancing, in
    order to ensure that the total fraction of elements is 1 (or 100%).
    As such, it is not necessary to specify its concentration, even
    though it must be passed in the input array.
-   When preparing the Solver to run a concentration stepping
    calculation, this function will either define the concentrations of
    the fixed elements or provide a basis upon which balancing is
    performed at each step.
-   For Scheil-Gulliver calculations, this function will set the initial
    composition of the liquid, which is expected to be the only phase
    present at the start of the calculation.
-   Make sure that the specified alloy composition is consistent with
    the material type, otherwise unexpected or unreliable results may
    be obtained.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


