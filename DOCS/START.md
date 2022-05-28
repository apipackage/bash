
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


