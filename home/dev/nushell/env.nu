do --env {
    let ssh_agent_file = (
        $nu.temp-dir | path join $"ssh-agent-(whoami).nuon"
    )

    if ($ssh_agent_file | path exists) {
        let ssh_agent_env = open ($ssh_agent_file)
        if ($"/proc/($ssh_agent_env.SSH_AGENT_PID)" | path exists) {
            load-env $ssh_agent_env
            return
        } else {
            rm $ssh_agent_file
        }
    }

    let ssh_agent_env = ^ssh-agent -c
        | lines
        | first 2
        | parse "setenv {name} {value};"
        | transpose --header-row
        | into record
    load-env $ssh_agent_env
    $ssh_agent_env | save --force $ssh_agent_file
}

# SurrealDB dev instance
def surreal-dev [] {
    surreal start --user root --pass root --bind 127.0.0.1:8000 $"surrealkv://($env.HOME)/.local/share/surrealdb/dev"
}

# SurrealDB KV local project
def surreal-project [] {
    surreal start --user root --pass root --bind 127.0.0.1:8001 $"surrealkv://($env.PWD)/data/surreal"
}

# fnm configuration
$env.PATH = ($env.PATH | prepend $"($env.HOME)/.local/share/fnm")

let fnm_env = (fnm env --json | from json)
load-env $fnm_env
$env.PATH = ($env.PATH | prepend $"($fnm_env.FNM_MULTISHELL_PATH)/bin")
