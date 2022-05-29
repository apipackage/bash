
![logo.apipackage.com](https://logo.apipackage.com/1/cover.png)

# [bash.apipackage.com](https://bash.apipackage.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apipackage/bash/edit/main/DOCS/MENU.md) 

+ [Example usae cases - examples.apipackage.com](http://examples.apipackage.com)
+ [Blog - www.apipackage.com](https://www.apipackage.com/)
+ [Documentation - docs.apipackage.com](https://docs.apipackage.com/)
+ [Logotyp: logo.apipackage.com](https://logo.apipackage.com/)

+ [LICENSE](LICENSE)



## About apipackage [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apipackage/bash/edit/main/DOCS/ABOUT.md)


Few examples:
+ Install apipackage project
+ Install letpath package

## Install apipackage examples

```bash
git clone https://github.com/apipackage/example
````

## Install apipackage [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apipackage/bash/edit/main/DOCS/INSTALL.md)




install dependencies from file: [apifork.txt](apifork.txt)

```bash
./apifork install
```

OR for development
```bash
./apifork install apifork.dev.txt
```

install packages and build for [apipackage](https://github.com/apipackage/bash) from file: [apipackage.txt](apipackage.txt)

```bash
./apipackage.sh install
```


OR

We are working on apipackage folder

```bash
cd apipackage 
````

install packages inside apipackage

```bash
cd apifork
./add https://github.com/letwhois/bash bash letwhois
./add https://github.com/reactphp/dns php reactphp
```



## Start apipackage [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apipackage/bash/edit/main/DOCS/START.md)

Test default functions

### Show the example functions

```bash
cat ../scripts/example2.txt
```
http("https://www.rezydent.de/").xpath("title");

---

### Check how it works

```bash
./apipackage.sh ../scripts/example2.txt
```
www | Rezydent Podatkowy Niemiec

---

## Test loaded package function

Install [letpath](https://github.com/letpath/bash) package to apipackage project in /apipackage/bash/letpath

```bash
./add.sh https://github.com/letpath/bash bash letpath
```

### Show the example functions
```bash
cd apipackage
```
```bash
cat ../scripts/example7.txt
```
http("https://www.rezydent.de/").letpath.tag("title");
```bash
./apipackage.sh ../scripts/example7.txt
```
check from command
```bash
./apipackage.sh 'http("https://www.rezydent.de/").letpath.tag("title")'
./apipackage.sh 'letpath.tag("title")'
```

get whois data

```bash
./apipackage.sh 'letwhois.ns("softreck.com")'
```


```bash
./apipackage.sh 'letwhois.reverseIp("8.8.8.8")'
```

get ip from domain host

```bash
./apipackage.sh 'letwhois.domainIp("softreck.com")'
```

```bash
./apipackage.sh 'nslookup("softreck.com")'
```

---

### Check how it works
```bash
./apipackage.sh ../scripts/example7.txt
```
www | Rezydent Podatkowy Niemiec
    
---

## Test removing package function

remove [letpath](https://github.com/letpath/bash) package from apipackage project in /apipackage/bash/letpath

```bash
./del.sh bash letpath
```




## Contribution [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apipackage/bash/edit/main/DOCS/CONTRIBUTION.md)

Solutions for development:

### Install

Install dependencies after created project
```bash
curl https://raw.githubusercontent.com/apifork/bash/main/apifork.sh -o apifork
echo "https://github.com/flatedit/bash.git flatedit" > "apifork.dev.txt"
./apifork install apifork.dev.txt
```


Install package list after created project
```bash
curl https://raw.githubusercontent.com/apipackage/bash/main/apipackage.sh -o apipackage
echo "https://github.com/letwhois/bash apidsl/apidsl/bash letwhois" >> "apipackage.txt"
./apipackage install
```

Edit documentation with flatedit
```bash
echo '#!/bin/bash' > "readme"
echo './flatedit/readme.sh readme.txt' >> "readme"
echo "./DOCS/MENU.md" >> "readme.txt"
echo "./DOCS/ABOUT.md" >> "readme.txt"
echo "./DOCS/FOOT.md" >> "readme.txt"
```

### Update documentation

```bash
 ./readme
```

Config project file

The config file: **.apifork** can be another, e.g. **projects.txt**

Just change the first line in  **.apifork** on **projects.txt**
```bash
projects.txt
```


### install

[minsungson/GitHub-cURL: A guide to installing files from GitHub repos in terminal using cURL](https://github.com/minsungson/GitHub-cURL)

```bash
./apifork install
```
OR

```bash
./apifork
```

### update

```bash
./apifork update
```


### remove

```bash
./apifork remove
```



# Tags

+ scripts
+ language

---

+ [edit](https://github.com/apipackage/bash/edit/main/README.md)
+ [apipackage/bash](https://github.com/apipackage/bash)
