#!/usr/bin/env node

const shell = require("shelljs");

shell.chmod("u+x", "./Docker.sh");

shell.exec("./Docker.sh");
