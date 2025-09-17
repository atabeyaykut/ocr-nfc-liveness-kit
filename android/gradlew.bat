@echo off
:: -----------------------------------------------------------------------------
:: Gradle start up script for Windows
:: -----------------------------------------------------------------------------

setlocal

set DIR=%~dp0
if "%DIR%"=="" set DIR=.
set APP_HOME=%DIR%

set CLASSPATH=%APP_HOME%gradle\wrapper\gradle-wrapper.jar

:: Find Java
if defined JAVA_HOME (
  set JAVA_EXE=%JAVA_HOME%\bin\java.exe
) else (
  set JAVA_EXE=java.exe
)

:: Verify Java
where "%JAVA_EXE%" >nul 2>nul
if errorlevel 1 (
  echo ERROR: Java executable not found. Set JAVA_HOME or ensure "java" is on your PATH. 1>&2
  exit /b 1
)

set DEFAULT_JVM_OPTS=

:: Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -Dorg.gradle.appname=gradlew -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

endlocal
