![UT](logo.png)

Tehran Report
===

[![pipeline status](https://gitlab.com/hadi_sfr/tehranReport/badges/master/pipeline.svg)](https://gitlab.com/hadi_sfr/tehranReport/commits/master)

a LaTeX class for reports in [University of Tehran](http://ut.ac.ir/)  
based on [report](https://ctan.org/pkg/report) LaTeX class

## Usage

See `example.tex` for a working example.


### Options

##### Organization

* organization logo

```tex
\documentclass[logo=logo.svg]{tehranReport}
```

### Commands

##### Document

* document title

```tex
\title{text}
```

##### Author

* author's name

```tex
\author{text}
```
* author's position title

```tex
\authorPosition{text}
```
* author's student number

```tex
\studentNumber{text}
```

##### Organization

* university name

```tex
\university{text}
```
* college name

```tex
\college{text}
```

##### Course

* course name

```tex
\course{text}
```
* supervisor or course lecturer

```tex
\supervisor{text}
```
