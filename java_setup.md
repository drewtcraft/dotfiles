# JAVA

1. install [sdkman](https://sdkman.io/) 
  a. `sdk list java`
  b. `sdk install <version>`
2. install jdt.ls: `brew install jdtls`
3. add `.helix/languages.toml` to root of java dir
  3a. ```toml
[language-server]
jdtls = { 
  command = "jdtls", 
  args = [
    "-data", "/Users/andrewcraft/.cache/jdtls/workspaces/${PWD}"
  ] 
}

[[language]]
name = "java"
scope = "source.java"
injection-regex = "java"
file-types = ["java"]
roots = ["pom.xml", "build.gradle"]
indent = { tab-width = 4, unit = "    " }
language-servers = ["jdtls"]
``` 

4. install quarkus: `sdk install quarkus`
