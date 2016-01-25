# R-devel Chocolatey Package #

This is a [Chocolatey](https://www.chocolatey.org) package to install the latest [R-devel daily snapshot build](https://cran.r-project.org/bin/windows/base/rdevel.html).

There is already [a package for the latest release](https://chocolatey.org/packages/R.Project), but that is inconvenient for testing packages against the daily build, as required by [CRAN Repository Policies](cran.r-project.org/web/packages/policies.html).

To build the package:

```
git pull https://github.com/leeper/choco-r-devel master
make build
```

To install the package, once built:

```
make install
```

