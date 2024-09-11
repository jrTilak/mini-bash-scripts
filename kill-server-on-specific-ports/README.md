# Kill Server on Specific Ports Bash Script

This bash script helps you quickly terminate processes running on specific ports. You can provide one or more port numbers as arguments, and the script will kill the processes running on those ports.

## Prerequisites

- **Linux or macOS** system.
- **`lsof` command** should be installed. Most Linux and macOS distributions have it pre-installed. If not, install it using the appropriate package manager:
  - **Ubuntu/Debian**: `sudo apt install lsof`
  - **macOS**: `brew install lsof`

## How It Works

The script performs the following actions:

1. Takes one or more port numbers as arguments.
2. For each port, it checks if a process is running on that port.
3. If a process is found, it is terminated using the `kill -9` command.

## How to Use

### 1. Download the Script

Save the bash script as `index.sh`.

### 2. Make the Script Executable

You need to give the script executable permission. Run the following command:

```bash
chmod +x index.sh
```

### 3. Running the Script

To run the script, use the following format:

```bash
./index.sh <port1> <port2> ... <portN>
```

For example, to kill processes running on ports **3000** and **3001**, use:

```bash
./index.sh 3000 3001
```

### 4. Script Output

- If a process is found on the specified port(s), you will see the following message:

  ```
  Killing process <PID> on port <port>
  ```

- If no process is found on a port, you will see:

  ```
  No process found on port <port>
  ```

## Example

1. Checking if any processes are running on ports 8080 and 3000:
   ```bash
   ./index.sh 8080 3000
   ```

2. Output when a process is found on port 8080 but not on 3000:
   ```
   Killing process 12345 on port 8080
   No process found on port 3000
   ```

## Notes

- The script uses `kill -9` to forcefully terminate the processes. Be cautious when using it, as it may terminate critical services.
- The script requires **root** or **sudo** privileges if the process is owned by another user. Run the script with `sudo` if necessary.

## Troubleshooting

- **"Permission Denied" Error**: Ensure the script is executable by running `chmod +x index.sh`.
- **No Process Found**: Double-check the port numbers and ensure that processes are indeed running on those ports using:
  ```bash
  lsof -i:<port>
  ```

## License

This script is open-source and free to use. Modify it to suit your needs!

