# img2md
- Automatically detects the MIME type of the image (e.g., `image/png`, `image/jpeg`).
- Encodes the image to base64 and outputs it in a single line.
- Generates a complete HTML `<img>` tag with the base64-encoded image for embedding in Markdown or HTML files.

## Requirements

- Bash (Unix/Linux environment)
- `file` command (for detecting MIME type)
- `base64` command (for encoding)

## Installation

1. Clone the repository or download the script.
2. Make the script executable:

   ```bash
   chmod +x img2md

> [!TIP] Move the script to a directory in your $PATH for easy access:
```sh
sudo mv img2md /usr/local/bin/
```

## Usage
- Just run the script with the image as argument:
```sh
img2md <image-file>
```
- This will output:
```sh
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUg..." alt="image" />
```