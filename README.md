# cc-utils
Lua scripts designed for automation and integration using ComputerCraft and Advanced Peripherals in Minecraft.
# gistget.lua

Here's a Lua script that allows you to import scripts directly from GitHub Gist using the HTTP API.


## Getting Started

### Prerequisites
 - ComputerCraft must have HTTP API enabled in the configuration (http.enabled=true in the config file).
 - You need the raw URL of the Gist file (not the Gist page URL). 

### Installation

Copy and paste command into the Computer Terminal.
```
pastebin get https://pastebin.com/mfHgpDLj gistget
```

### Parameters

```
  gistget <raw_gist_url> <output_filename>
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `<raw_gist_url>` | `URL` | The **raw** GitHub Gist URL pointing directly to a file. |
| `<output_filename>` | `File` | The name to save the downloaded file as (e.g. gistget.lua). |

#### Example

```
  gistget https://gist.githubusercontent.com/user/gistid/raw/script.lua myscript.lua
