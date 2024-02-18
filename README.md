# Windows-SDK
Extracts the Windows SDK, MSCV Tools and DIA SDK from the Github Windows Runner VM (windows-latest) and puts it into a [Docker Scratch Image](https://hub.docker.com/_/scratch/) `ghcr.io/qno/windows-sdk`, so it can be used in a Linux environment to crosscompile Windows programs with the MSVC compatible [clang-cl](https://clang.llvm.org/docs/UsersManual.html#clang-cl) compiler.

The locations are:
* Windows SDK - `C:\Program Files (x86)\Windows Kits\10`
* MSVC Tools  - `C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Tools\MSVC`
* DIA SDK     - `C:\Program Files\Microsoft Visual Studio\2022\Enterprise\DIA SDK`

The used Win SDK version is `10.0.22621.0` and MSVC version is `14.38.33130`.

More details can be found in the [Github workflow](https://github.com/qno/Windows-SDK/blob/main/.github/workflows/docker-publish.yml#L42).
___
***By using the packaged software in this docker image, you are consented to accept the license at:***

https://go.microsoft.com/fwlink/?LinkId=2086102
