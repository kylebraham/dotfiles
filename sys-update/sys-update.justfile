default:
  @just --choose

dnf:
  sudo dnf clean all
  sudo dnf upgrade --refresh


flatpak:
  @printf "\n\n"
  flatpak update

rust-cargo:
  @printf "\n\n"
  rustup check
  rustup update
  cargo install-update -a


kubectl:
  #!/usr/bin/env bash
  set -eu -o pipefail
  printf "\n\n"
  install_path="${INSTALL_PATH:-$HOME/bin/kubectl}"
  k8_version="$(curl -fsSL https://dl.k8s.io/release/stable.txt)"
  printf "kubectl version:\t%s\n" "$k8_version"
  printf "install path:\t%s\n" "$install_path\n"
  tmpdir="$(mktemp -d -t kubectl-install.XXXXXX)"
  trap 'rm -rf "$tmpdir"' EXIT
  echo "Using temp dir: $tmpdir"
  download_url="https://dl.k8s.io/release/${k8_version}/bin/linux/amd64/kubectl"
  checksum_url="${download_url}.sha256"
  curl -fLS --retry 3 --retry-delay 2 -o "$tmpdir/kubectl" "$download_url"
  curl -fLS --retry 3 --retry-delay 2 -o "$tmpdir/kubectl.sha256" "$checksum_url"
  pushd "$tmpdir" >/dev/null
  sha="$(awk '{print $1}' kubectl.sha256)"
  printf "%s  kubectl\n" "$sha" > kubectl.sha256
  if ! sha256sum --quiet --check kubectl.sha256; then echo "ERROR: checksum verification failed!" >&2; exit 1; fi
  popd >/dev/null
  chmod +x "$tmpdir/kubectl"
  dest_dir="$(dirname "$install_path")"
  if ! mkdir -p "$dest_dir" 2>/dev/null; then echo "Creating $dest_dir needs privileges; using sudo..."; sudo mkdir -p "$dest_dir"; fi
  if install -m 0755 "$tmpdir/kubectl" "$install_path" 2>/dev/null; then echo "kubectl installed to $install_path"; else echo "Permission issue—retrying with sudo..."; sudo install -m 0755 "$tmpdir/kubectl" "$install_path"; echo "kubectl installed to $install_path via sudo"; fi
  printf "Done. Verify with: %s version --client\n" "$install_path"


krew:
  @printf "\n\n"
  kubectl krew list
  kubectl krew upgrade

opencode:
    @printf "\n\n"
    curl -fsSL https://opencode.ai/install | bash

all: \
  (dnf) \
  (flatpak) \
  (kubectl) \
  (krew) \
  (opencode) \
  (rust-cargo)
  @echo "DONE!"



#  just --command-color green all
