# Emulator Setup Script

This script automates the setup process to connect to an Android emulator through a specified port using telnet. By default, the script sets up the connection for port `14550`. It reads the authentication token from the `.emulator_console_auth_token` file in the user's home directory and uses it to authenticate with the emulator. The script then adds a UDP redirection to the emulator and exits the telnet session.

## Features

- Automatically installs telnet if not already installed (macOS only).
- Reads authentication token from `.emulator_console_auth_token` file.
- Authenticates with the emulator using the read authentication token.
- Adds UDP redirection to the emulator.
- Provides descriptive messages to indicate the progress and status of the script execution.

## Default Port

The script is configured to set up the connection for port `14550` by default. You can modify this port as needed in the script.

## Prerequisites

- [telnet](https://www.telnet.org/) (macOS users can install it using [Homebrew](https://brew.sh/))

## Usage

1. Save the script to a file, for example, `emulator_setup.sh`.
2. Make the script executable:
    ```bash
    chmod +x emulator_setup.sh
    ```
3. Run the script:
    ```bash
    ./emulator_setup.sh
    ```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
