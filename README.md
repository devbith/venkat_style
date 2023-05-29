# Execute and Observe output of Java as <a href="https://www.youtube.com/watch?v=yTuwi--LFsM">Dr. Venkat Subramaniam</a>.

This repository configuration script that enables to execute and observe the output of Java files in the style of <a href="https://www.youtube.com/watch?v=yTuwi--LFsM">Dr. Venkat Subramaniam</a>.


The script automates the installation of Quicksilver, a tool that facilitates displaying text in a floating window. Additionally, it creates a convenient setup for compiling and executing Java code, presenting the output in a visually appealing format similar to Dr. Venkat's presentation style.


## Setup

1. Download the setup script. Open Terminal, copy and run the below code:

   ```bash
    curl -O https://raw.githubusercontent.com/devbith/venkat_style/main/setup_script.sh
  
2. Make the script executable by running the following command:

   ```bash
   chmod +x setup_script.sh

3. Run the script by executing the following command:
  
   ```bash
   ./setup_script.sh
   
This will install Quicksilver, create the necessary script file, and set up Vim mapping F5 for running Java files.

## Usage


1. Open Terminal

```bash
 vim Sample.java
```
2. Copy the following code snippet in Sample.java

``` java
  public class Sample {
  public static void main(String[] args) {
    System.out.println("It works");
  }
 }
```
3. Run the program using the key <b>F5</b> 

<img src="screentshot.png" height="500px">
