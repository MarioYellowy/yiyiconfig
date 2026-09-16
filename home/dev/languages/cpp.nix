{pkgs, ...}: {
  home.packages = with pkgs; [
    cmake
    gdb
    lldb
    clang-tools
  ];
}
