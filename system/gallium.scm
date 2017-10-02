;; This is an operating system configuration template
;; for a "desktop" setup without full-blown desktop
;; environments.

(use-modules
 (srfi srfi-1)
 (gnu)
 (gnu packages shells)
 (gnu system locale)
 (gnu system nss)
 (gnu services desktop)
 (gnu services networking)
 (nat guix utils)
 (nat guix packages linux-nonfree))
; (use-service-modules desktop)
; (use-package-modules bootloaders certs connman suckless wm version-control vim)

(define %redundant-linux-modules
 '("pcspkr" "snd_pcsp"))

(operating-system
  (host-name "gallium")
  (timezone "Europe/Warsaw")

  (kernel linux-nonfree)
  (firmware (cons* ath10k-firmware-nonfree %base-firmware))
  (kernel-arguments
   (list (string-append "modprobe.blacklist="
                        (apply comma-separated
                               %redundant-linux-modules))))

  (locale "pl_PL.utf8")
  (locale-definitions
   (list (locale-definition (source "pl_PL")
                            (name "pl_PL.utf8"))
         (locale-definition (source "en_US")
                            (name "en_US.utf8"))))

  ;; Use the UEFI variant of GRUB with the EFI System
  ;; Partiftp/Scheme/monad-in-Scheme.htmltion mounted on /boot/efi.
  ;; newer syntax, not yet working
  (bootloader (bootloader-configuration
                (bootloader grub-efi-bootloader)
                (target "/boot")))

  ;; (bootloader (grub-configuration (grub grub-efi)
  ;; (device "/dev/nvme0n1p1")))

  ;; Assume the target root file system is labelled "my-root".
  (file-systems (cons* (file-system
                         (device "guix")
                         (title 'label)
                         (mount-point "/")
                         (type "ext4"))
                       (file-system
                         ;; Specify partition here since FAT
                         ;; labels are currently unsupported.
                         (device "/dev/nvme0n1p1")
                         (mount-point "/boot")
                         (type "vfat"))
                       %base-file-systems))

  (users (cons (user-account
                (name "jkopanski")
                (uid 1000)
                (comment "Jakub Kopanski")
                (group "users")
                (shell (file-append zsh "/bin/zsh"))
                (supplementary-groups '("wheel" "netdev" "kvm"
                                        "audio" "video"))
                (home-directory "/home/jkopanski"))
               %base-user-accounts))

  ;; Add a bunch of window managers; we can choose one at
  ;; the log-in screen with F1.
  (packages
   (let ((useless-packages (map specification->package
                                '("iw"
                                  "net-tools"
                                  "zile"
                                  "nano"))))
      (append
       (map specification->package
            '("acpi"
              "arandr"
              "alsa-utils"
              "font-adobe-source-code-pro"
              "font-anonymous-pro"
              "font-awesome"
              "font-fira-mono"
              "font-go"
              "font-hack"
              "font-iosevka"
              "font-inconsolata"
              "glibc-utf8-locales"
              "le-certs"
              "shadow"
              "nss-certs"
              "setxkbmap"
              "vim"
              "xbacklight"
              "xcalib"
              "xclip"
              "xdg-utils"
              "xkill"
              "xmodmap"
              "xrandr"
              "xrdb"
              "xsetroot"
              "zsh")))
      (remove (lambda (pkg)
                (memq pkg useless-packages))
              %base-packages)))

  ;; Use the "desktop" services, which include the X11
  ;; log-in service, networking with Wicd, and more.
  (services (cons* (console-keymap-service "pl2")
                   (extra-special-file "/usr/bin/env"
                                       (file-append coreutils "/bin/env"))
                   %desktop-services))

  ;; Allow resolution of '.local' host names with mDNS.
  (name-service-switch %mdns-host-lookup-nss))
