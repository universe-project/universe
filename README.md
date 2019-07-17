# Universe Core

### What is Universe coin?
Universe coin is a decentralised digital cryptocurrency that uses proof-of-stake consensus as a security model, with a combined proof-of-stake/proof-of-work minting system.
Universe coin uses peer-to-peer technology to operate with no central authority: managing transactions and issuing money are carried out collectively by the network.

### Resources

- Main: [Site](https://universe-project.com/), [Web Wallet](https://uniwallet.io/)
- Help: [Forum](https://forum.universe-project.com/), [Telegram](https://t.me/UniverseUNIEng)

## License
Universe is released under the terms of the MIT license. See [LICENSE](LICENSE) for more
information or see https://opensource.org/licenses/MIT.

## Development and contributions
Development is ongoing, and the development team, as well as other volunteers, can freely work in their own trees and submit pull requests when features or bug fixes are ready.

#### Version strategy
Version numbers are following ```major.minor.patch``` semantics.

#### Branches
There are 2 types of branches in this repository:

- **master:** Stable, contains the latest version of the latest *major.minor* release.
- **development:** Unstable, contains new code for planned releases.

*Master branch is exclusively mutable by release. Planned releases will always have a development branch and pull requests should be submitted against those.*

#### Contributions

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

## Development tips and tricks

**compiling**

Choose your operating system for the proper guide:  
[Windows](doc/build-msw.txt)  
[Linux/Unix](doc/build-unix.txt)  
[MacOS](doc/build-osx.txt)

To build with graphical user interface see [readme-qt](doc/readme-qt.rst).
