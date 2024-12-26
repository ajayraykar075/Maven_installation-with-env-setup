To check the installed Maven version, follow these steps:

### **Command to Check Maven Version**
```bash
mvn -version
```

### **Example Output**
If Maven is installed correctly, the output will look similar to this:
```
Apache Maven 3.9.5
Maven home: /opt/maven
Java version: 11.0.18, vendor: Ubuntu, runtime: /usr/lib/jvm/java-11-openjdk-amd64
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "5.15.0-76-generic", arch: "amd64", family: "unix"
```

---

### **Troubleshooting**
- If the command returns `mvn: command not found`:
  - Ensure Maven is correctly installed.
  - Check if the Maven binary path is added to the `PATH` environment variable:
    ```bash
    echo $PATH
    ```
  - Reload the environment variables:
    ```bash
    source ~/.bashrc
    ```

Let me know if you encounter any issues!
