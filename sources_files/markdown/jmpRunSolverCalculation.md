jmpRunSolverCalculation()
=========================

Runs a Solver calculation.

Syntax
------

int jmpRunSolverCalculation (void);

Parameters
----------

This function has no parameters.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Output files
------------

`summary.out`

This file is produced when running single point, single phase, multiple
points, temperature, concentration, or extended stepping calculations.
It starts with a header that summarises basic alloy information and the
type of stepping performed. This is followed by sublattice information:
for every phase included in the calculation, the number of sublattices
considered and the number of sites available on each sublattice are
given. In the case of fixed composition equilibrium calculations, the
alloy composition is printed next, both in atomic and weight fractions
(`X` and `W`, respectively). The thermodynamic properties are then
output, in one or more blocks delimited by the tags `[START]` and
`[END]`. Each block consists of the following data (in order of
appearance):

-   Alloy composition, in atomic and weight fractions (`X` and
    `W`, respectively). This is printed only for variable composition
    equilibrium calculations.
-   Temperature, `T` (in kelvins), and pressure, `P` (in
    standard atmospheres). Currently, the latter cannot be changed and
    is always taken as 1 atm.
-   Total Gibbs energy, enthalpy, entropy, and specific heat. These are
    given both per mole — respectively, `GM`, `HM`, in J/mol, and `SM`,
    `CpM`, in J/(mol K) — and per gram — `GW`, `HW`, in J/g, and `SW`,
    `CpW`, in J/(g K).
-   Chemical potentials, `mu`, and partial molar enthalpies,
    `partial_h`, for all elements in the alloy (in J/mol).
-   Phase amounts at the given temperature-composition point, in atomic
    and weight fractions (`MP` and `WP`, respectively).
-   Thermodynamic phase properties: Gibbs energy, enthalpy, and entropy
    — both per mole (`G`, `H`, `S`) and per gram (`G_W`, `H_W`, `S_W`) —
    along with sublattice site fractions, `Y`, and phase composition (in
    atomic and weight fractions, `X` and `W`). These are printed in
    succession for all phases present in the alloy.

**Note**  The data blocks labelled with `T*` correspond to phase
boundaries, and will only show for stepping calculations with phase
boundaries search. At these points, the specific heat is not computed
and reads `CpM`, `CpW = -1`. Also, for extended stepping calculations,
the chemical potentials and partial enthalpies are not computed below
the heat treatment temperature — in this region, the former read
`mu = 0` and the latter are not printed. The remaining quantities will
be calculated down to room temperature, with the phase structure
obtained at the heat treatment temperature being kept frozen.

`scheil.out`

This file is created as a result of a Scheil-Gulliver calculation. A
header summarising the alloy and calculation type is proceeded by
sublattice information for all phases considered in the calculation. The
initial composition of the liquid (expected to be the only phase present
at the beginning) is printed next, both in atomic and weight fractions
(`X` and `W`, respectively). The thermodynamic properties then follow,
in several data blocks delimited by the tags `[START]` and `[END]`.
Above the solidus, each block includes (in order of appearance):

-   Temperature, `T`, in kelvins.
-   Chemical potentials in the liquid phase, `mu_liquid`, in J/mol.
-   Remaining amount of liquid and total amount of solid phases, in
    atomic and weight fractions (`MFL`, `MFS` and `WFL`,
    `WFS`, respectively).
-   Thermodynamic phase properties: phase amount (in atomic and weight
    fractions, `MP` and `WP`), sublattice site fractions, `Y`, phase
    composition (in atomic and weight fractions, `X` and `W`), and
    enthalpy (`HM`, in J/mol, and `HW`, in J/g). These are printed in
    succession for the remaining liquid and for all solid phases formed
    at the given temperature only. Averaging with the solid formed at
    higher temperatures is not performed — to achieve this, you must use
    the Solidification module.
-   Total enthalpy and specific heat, given both per mole —
    respectively, `HM`, in J/mol, and `CpM`, in J/(mol K) — and per gram
    — `HW`, in J/g, and `CpW`, in J/(g K).
-   Latent heat of solidification, `LHM`, in J/mol, and `LHW`, in J/g.

**Note**  As for `summary.out`, the blocks labelled with `T*` correspond
to phase boundaries, and will only show if the search for phase
boundaries has been turned on. At such points, the specific heat is not
calculated and reads `CpM`, `CpW = -1`.

Below the solidus, the block structure is changed to consist of the
following data:

-   Temperature, in kelvins, now labelled as `T$`.
-   Enthalpies (`HM`, in J/mol, and `HW`, in J/g) for all phases found
    at the last step of solidification (including a small amount of
    remaining liquid). These are calculated using the phase amounts
    obtained at the end of solidification.
-   Total enthalpy and specific heat, given both per mole —
    respectively, `HM`, in J/mol, and `CpM`, in J/(mol K) — and per gram
    — `HW`, in J/g, and `CpW`, in J/(g K).

`dg.out`

This file is obtained when performing a T~0~ energy change or a Gibbs
energy difference calculation. In the latter case, the phases considered
in the calculation are printed in the header, which is followed by two
tab-separated columns with the temperature values and associated
differences in Gibbs energy. In the former case, these results are
supplemented by the differences in enthalpy and the precise temperature
value at which the Gibbs energies of the two phases coincide.

**Note**  This file is also used in multiple points and stepping
calculations to store the formation driving forces of phases flagged as
dormant.

`phase_bound.out`

This file is output when running a Solver stepping or Scheil-Gulliver
calculation with phase boundaries search. It contains all the phase
boundaries found throughout the calculation. At each line, a boundary
temperature (in kelvins) — or concentration (in atomic or weight
fractions) of the chosen varying element, in the case of concentration
stepping calculations — is given, together with the phase name,
prepended with a sign that indicates whether the phase appears or
disappears at the boundary (`+` or `-`, respectively).

**Note**  The sign attached to the phase name depends on the way in
which the temperature (or concentration) is varied. Reversing the
stepping direction will result in a change of sign (but the position of
the boundary will remain unaltered).

Remarks
-------

-   Make sure that your application can access the required DLLs,
    configuration and database files, otherwise an error will occur. To
    successfully run a calculation, the contents of the subdirectory
    `Runtime/win32` (for 32-bit applications) or `Runtime/x64` (for
    64-bit applications), found in the API installation directory,
    should be placed at the same level as your executable file.
-   The output files will be saved in the working directory, which can
    be set using [jmpSetWorkingDirectory()](jmpSetWorkingDirectory.htm).
-   When performing several calculations in a row, be sure to extract
    the data that you need or rename the output files at each step, as
    they will be overwritten.

Requirements
------------

  --------- -------------------------------------
  Headers   `jmpcore.h`\
            `jmpsolver.h`

  Library   `jmpsolver.lib`/`jmpsolver_x64.lib`

  DLLs      `jmpcore.dll`/`jmpcore_x64.dll`\
            `jmpsolver.dll`/`jmpsolver_x64.dll`
  --------- -------------------------------------


