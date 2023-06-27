# Karate - API Testing - Credit Card Service

## Description

Karate is an open-source tool to combine API test-automation, mocks, performance-testing and UI automation into a single, unified framework. The BDD syntax popularized by Cucumber is language-neutral. Assertions and HTML reports are built-in, and we can run tests in parallel for speed.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [References](#references)

## Installation

### Pre requisite

- Visual Studio Code (VS Code) | IntelliJ IDEA 
- VS Code extension:
  - [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
  - [Karate Runner](https://marketplace.visualstudio.com/items?itemName=kirkslota.karate-runner)
  - [Maven for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven) 
- IntelliJ plugin: [Link](https://plugins.jetbrains.com/plugin/19232-karate)
- Java 1.8
- Maven 3.8.1

### Folder structre

```bash
├── api
│   ├── pom.xml
│   ├── src
│   │   └── test
│   │       └── java
│   │           ├── karate-config.js : Karate setting file
│   │           ├── karate-config.json : Karate configuration constance
│   │           ├── TestRunner.java : Runner for parallel execution
│   │           ├── lookUp : Test Suite 
│   │           │   ├── ID-look-up.feature : Karate test
│   │           │   ├── cities.json : Test Data
│   │           │   ├── districsts.json
│   │           │   ├── look-up-base.feature : Karate test
│   │           │   ├── look-up.feature
│   │           │   └── provinces.json
│   │           │   └── LookUpRunner.java : Test suite runner
│   │           ├── utils
│   │           │   └── util-function.js : Utilites functions
```
#### Steps

- Clone repository.
- Open folder `test/api` using vscode.
- Open `.vscode/launch.json`, set `karateCli`, example ( adding environment, `-Dkarate.env=uat`):

```bash
mvn test-compile -f \"${command:karateRunner.getDebugBuildFile}\" exec:java -Dkarate.env=uat -Dexec.mainClass=com.intuit.karate.cli.Main -Dexec.args=\"-d\" -Dexec.classpathScope=\"test\" ${config:karateRunner.karateRunner.commandLineArgs}
```

## Usage

- [Running Tests](https://fundingasiagroup.atlassian.net/wiki/spaces/~626d2c9852310b006802bf65/pages/2455470173/API+Testing+Getting+started+with+karate+using+Visual+Studio+Code#Running-tests)
- [Debugging Tests](https://fundingasiagroup.atlassian.net/wiki/spaces/~626d2c9852310b006802bf65/pages/2455470173/API+Testing+Getting+started+with+karate+using+Visual+Studio+Code#Debugging-tests)
- [Reporting](https://fundingasiagroup.atlassian.net/wiki/spaces/~626d2c9852310b006802bf65/pages/2455470173/API+Testing+Getting+started+with+karate+using+Visual+Studio+Code#Reporting)

## References

- [Karate framework](https://karatelabs.github.io/karate)
- [Karate runner (vscode extension)](https://marketplace.visualstudio.com/items?itemName=kirkslota.karate-runner)
- [Visual studio code setup (confluence page) by Chung](https://fundingasiagroup.atlassian.net/wiki/spaces/~626d2c9852310b006802bf65/pages/2455470173?atlOrigin=eyJpIjoiNjIxNWY0Y2Y4ZWJhNGZkZmFhZjBjMDBlZDRmYTBiMDgiLCJwIjoiY29uZmx1ZW5jZS1jaGF0cy1pbnQifQ)
- [Karate framework - Api testing (google doc) by Ryan](https://docs.google.com/document/d/1zTJumJLUhbd4X8OEfPBBUijUPPUp_YEj7vMh10oyk3U/edit?usp=sharing)
- [Karate framework (confluence page) by Kondababu](https://fundingasiagroup.atlassian.net/wiki/spaces/QA/pages/2593358220/Karate+Framework)
- [Karate - IDE Support](https://github.com/karatelabs/karate/wiki/IDE-Support)