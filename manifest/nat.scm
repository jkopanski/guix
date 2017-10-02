(use-modules (gnu packages)
             (guix packages))

(define newghc
  (lambda (version)
    (specification->package (string-append "ghc@" version))))

(define use-ghc
  (lambda (version)
    (package-input-rewriting '((,ghc . ,newghc)))))

(packages->manifest
 (map specification->package
      '("acpi"
        "arandr"
        "alsa-utils"
        "arc-icon-theme"
        "arc-theme"
        "cabal-install"
        "clang"
        "clang-runtime"
        "cmake"
        "compton"
        "conky"
        "curl"
        "dzen"
        "emacs"
        "feh"
        "file"
        "font-adobe-source-code-pro"
        "font-anonymous-pro"
        "font-awesome"
        "font-fira-mono"
        "font-go"
        "font-hack"
        "font-iosevka"
        "font-inconsolata"
        "llvm"
        "gcc-toolchain@6"
        "git"
        "ghc@7"
        "ghc-happy"
        "ghc-hindent"
        "ghc-xmonad-contrib"
        "gnupg"
        "htop"
        "icecat"
        "mpd"
        "ncmpcpp"
        "node"
        "openssh"
        "openvpn"
        "qutebrowser"
        "redshift"
        "rofi"
        "ruby"
        "rxvt-unicode"
        "scrot"
        "setxkbmap"
        "sxhkd"
        "the-silver-searcher"
        "tmux"
        "weechat"
        "wget"
        "vim"
        "xmonad"
        "xmobar"
        "xbacklight"
        "xcalib"
        "xclip"
        "xdg-utils"
        "xkill"
        "xmodmap"
        "xrandr"
        "xrdb"
        "xsetroot"
        "zathura"
        "zathura-pdf-poppler"
        "zsh"
        )))