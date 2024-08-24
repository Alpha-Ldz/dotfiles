{
  inputs,
  pkgs,
  ...
} : {
  programs.starship = {
    
    enable = true;

    settings = {
      add_newline = false;
      command_timeout = 1000;

      format = ''$character$directory$git_branch$git_status$python$aws$golang$java$nodejs$rust$ruby$scala$dart$conda$pijul_channel$lua$rlang$package$buf$memory_usage$docker_context[](#1C3A5E)$time[ ](#1C3A5E)$cmd_duration
[└─>](bold green) 
      '';

      continuation_prompt = "▶▶ ";

      character = {
        success_symbol = "🚀";
        error_symbol = "🔥";
      };

      time = {
        disabled = false;
        time_format = "%r"; # Hour:Minute Format
        style = "bg:#1d2230";
        format = "[[ 󱑍 $time ](bg:#1C3A5E fg:#8DFBD2)]($style)";
      };

      cmd_duration = {
        format = "last command: [$duration](bold yellow)";
      };

      os = {
        format = "[$symbol](bold white)";
        disabled = false;
      };

      hostname = {
        ssh_only = false;
        format = "on [$hostname](bold yellow) ";
        disabled = false;
        ssh_symbol = " ";
      };

      directory = {
        truncation_length = 3;
        fish_style_pwd_dir_length = 2;
        home_symbol = "󰋜 ~";
        read_only_style = "197";
        read_only = "  ";
        format = "at [$path]($style)[$read_only]($read_only_style) ";
      };

      git_branch = {
        symbol = " ";
        format = "via [$symbol$branch]($style)";
        truncation_symbol = "…/";
        style = "bold green";
      };

      git_status = {
        format = "[$all_status$ahead_behind]($style) ";
        style = "bold green";
        conflicted = "🏳";
        up_to_date = "";
        untracked = " ";
        ahead = "⇡$count";
        diverged = "⇕⇡$ahead_count⇣$behind_count";
        behind = "⇣$count";
        stashed = " ";
        modified = " ";
        staged = "[++($count)](green)";
        renamed = "襁 ";
        deleted = " ";
      };

      aws = {
        symbol = "  ";
      };

      buf = {
        symbol = " ";
      };

      c = {
        symbol = " ";
      };

      conda = {
        symbol = " ";
      };

      dart = {
        symbol = " ";
      };

      docker_context = {
        symbol = " ";
      };

      golang = {
        symbol = " ";
      };

      java = {
        symbol = " ";
      };

      lua = {
        symbol = " ";
      };

      memory_usage = {
        symbol = "󰍛 ";
        disabled = true;
        style = "bold dimmed white";
        threshold = 1;
        format = "$symbol [$ram(|$swap)]($style) ";
      };

      nodejs = {
        symbol = " ";
      };

      package = {
        symbol = "󰏗 ";
      };

      pijul_channel = {
        symbol = " ";
      };

      python = {
        symbol = " ";
        pyenv_version_name = true;
      };

      ruby = {
        symbol = " ";
      };

      rlang = {
        symbol = "󰟔 ";
      };

      rust = {
        symbol = " ";
      };

      scala = {
        symbol = " ";
      };
    };

  };
}
