{
  "targets": [
    {
      "target_name": "addon",
      "sources": ["src/addon.c"],
      "libraries": ["-L$(PWD)/", "-lhelloadd"],
      "cflags": ["-ggdb"]
    }
  ]
}

# instead of absolute path figure out a way to use project directory