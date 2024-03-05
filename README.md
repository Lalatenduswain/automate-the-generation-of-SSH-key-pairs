# Automating SSH Key Generation for Multiple Users

This Bash script automates the generation of SSH key pairs for multiple users in a Linux environment. It reads usernames from a file, generates SSH key pairs with a passphrase, and saves them in the appropriate directory.

## Usage

1. Clone the repository:

```bash
https://github.com/Lalatenduswain/automate-the-generation-of-SSH-key-pairs.git
```

2. Navigate to the directory:

```bash
cd automate-the-generation-of-SSH-key-pairs
```

3. Create a file named `usernames.txt` containing the usernames, with each username on a new line.

4. Set the passphrase in the script to your desired value.

5. Make the script executable:

```bash
chmod +x generate_ssh_keys.sh
```

6. Run the script:

```bash
./generate_ssh_keys.sh
```

## Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).
