# Ignore this repo.
Temporary repo to reproduce problem with openwhisk scoverage tool in integration git repo.
PR https://github.com/apache/incubator-openwhisk/pull/3249

Setup
```
git clone this repo https://github.com/csantanapr/incubator-openwhisk/openwhisk-repro-codecoverage-problem
cd openwhisk-repro-codecoverage-problem/
git submodule update --remote
```

To reproduce
```
cd blue/
./gradlew :runtimes:nodejs-ibm:distDocker
```

Error message about `Plugin with id 'org.scoverage' not found.`
```
Starting a Gradle Daemon (subsequent builds will be faster)

FAILURE: Build failed with an exception.

* Where:
Build file '/Users/csantanapr/Documents/dev/whisk/git/apache/openwhisk-repro-codecoverage-problem/open/common/scala/build.gradle' line: 4

* What went wrong:
A problem occurred evaluating project ':common:scala'.
> Plugin with id 'org.scoverage' not found.

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

* Get more help at https://help.gradle.org

BUILD FAILED in 4s
```
