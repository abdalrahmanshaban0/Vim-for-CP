# Vim-for-CP
In windows (WSL):<br>
![image](https://github.com/abdalrahmanshaban0/Vim-for-CP/assets/126330281/89593094-0a5a-47ec-84c1-72fc3fc8fc7e)<br>
In Linux: <br>
![image](https://github.com/abdalrahmanshaban0/Vim-for-CP/assets/126330281/428cef6f-7dc2-47fd-88fd-f094f286cb8d) <br>

Dependancies: <br>
g++ <br>
ccls (Example in Debian: $ sudo apt install ccls) <br>
nodejs <br>
[vim-plug](https://github.com/junegunn/vim-plug) <br>

Write in vim: 
```
:CocConfig
```

then paste:
```
{
"languageserver": {
  "ccls": {
    "command": "ccls",
    "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
    "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
    "initializationOptions": {
        "cache": {
          "directory": "/tmp/ccls"
        }
      }
  }
}
}
```

Note: 
``
You need to comment and uncomment some lines in the files in case native Linux or WSL! Just read the comments.
``

Key Bindings:
To Build and Run ---> F9 <br>
To Paste test cases in input.txt while in code file ---> Ctrl + t <br>
To Close any splited tab ---> Ctrl + q <br>
To Split a file from NERDTree ---> Ctrl + s <br>
Auto Indent from what you stand to down ---> =G
