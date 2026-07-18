$env.config.ls = {
  use_ls_colors: true
  clickable_links: true
}

$env.config.buffer_editor = "zeditor"

$env.config.table.mode = "rounded"

$env.config.hooks.env_change.PWD = ($env.config.hooks.env_change.PWD? | default [] | append {|before, after|
    if (which direnv | is-empty) {
        return
    }

    direnv export json | from json | default {} | load-env
})
