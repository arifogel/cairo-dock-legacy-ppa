#!/usr/bin/env bash
export GPG_KEY=9B2D3B9BEF5C3B4CA886C345705D2E7C231102D5
apt-ftparchive -o APT::FTPArchive::Release::Origin="arifogel" -o APT::FTPArchive::Release::Label="cairo-dock-legacy-ppa" release . > Release
gpg --default-key "${GPG_KEY}" -abs -o - Release > Release.gpg
gpg --default-key "${GPG_KEY}" --clearsign -o - Release > InRelease
