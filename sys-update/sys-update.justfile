default:
  @just --choose

dnf: 
  sudo dnf clean all
  sudo dnf upgrade --refresh


flatpak:
  flatpak update

rust-cargo: 
  rustup check
  rustup update
  cargo install-update -a

all: \
  (dnf) \
  (flatpak) \
  (rust-cargo)
  @echo "DONE!"



#  just --command-color green all