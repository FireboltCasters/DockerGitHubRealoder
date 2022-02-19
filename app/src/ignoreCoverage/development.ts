import {Reloader} from "docker-github-reloader";

let env = process.env;

let usingEnv = env;

console.log("Starting TEST")
console.log("Starting Reloader with env");
Reloader.start(usingEnv)