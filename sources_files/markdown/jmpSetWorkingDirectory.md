jmpSetWorkingDirectory()
========================

Defines the working directory, where temporary and output files are
written to.

Syntax
------

int jmpSetWorkingDirectory (char \*path);

Parameters
----------

`path [input]`

Pointer to a null-terminated sequence of characters that specifies the
path to the directory where temporary and output files are to be written
to, i.e., the working directory. The path may be absolute or relative to
the directory where the executable resides.

Return values
-------------

  -------------------- ------------------------------------------
  `JMP_STATUS_OK`      Request has been successfully completed.
  `JMP_STATUS_ERROR`   An error has occurred.
  -------------------- ------------------------------------------

Remarks
-------

-   This function call is optional. If you do not specify a working
    directory, then it will default to `temp` at the same level as the
    executable file.
-   The input path should include the trailing slash, as shown in the
    code snippet below:
-   Also, you should make sure that the specified working directory
    exists, otherwise errors will ensue when running calculations.

Requirements
------------

  --------- ---------------------------------
  Header    `jmpcore.h`
  Library   `jmpcore.lib`/`jmpcore_x64.lib`
  DLL       `jmpcore.dll`/`jmpcore_x64.dll`
  --------- ---------------------------------


