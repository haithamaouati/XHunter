# XHunter
XHunter is a Bash script that fetches detailed user information from 𝕏 (formerly Twitter) using the 𝕏 API, including ID, name, bio, location, and social metrics.

# Screenshot

![screenshot]()

## Usage

To use the XHunter script, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/haithamaouati/XHunter.git
    ```

2. Change to the XHunter directory:

    ```bash
    cd XHunter
    ```
    
3. Change the file modes
    ```bash
    chmod +x xhunter.sh
    ```
    
5. Run the script:

    ```bash
    ./xhunter.sh
    ```
##### Syntax:

```
./xhunter.sh username
```

## Configuration

Replace your 𝕏 bearer token inside the script code: `BEARER_TOKEN="your x bearer token"`

## Dependencies

The script requires the following dependencies:

- [figlet](http://www.figlet.org/): Program for making large letters out of ordinary text
- [curl](https://curl.se/): Command line tool for transferring data with URL syntax
- [jq](https://stedolan.github.io/jq/): Command-line JSON processor

Make sure to install these dependencies before running the script.

## Author

Made with :coffee: by **Haitham Aouati**
  - GitHub: [github.com/haithamaouati](https://github.com/haithamaouati)

## License

XHunter is licensed under [Unlicense license](LICENSE).
