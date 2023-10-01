# generated by cabal-rpm-2.1.0 --standalone
# https://docs.fedoraproject.org/en-US/packaging-guidelines/Haskell/

#%%global ghc_major 9.2
#%%global ghc_name ghc%%{ghc_major}

%global ghc_without_dynamic 1
%global ghc_without_shared 1
%undefine with_ghc_prof
%undefine with_haddock
%global without_prof 1
%global without_haddock 1
%global debug_package %{nil}

Name:           hslua-ppc64le
Version:        0.4
Release:        1%{?dist}
Summary:        One line summary

License:        BSD-3-Clause
Url:            https://hackage.haskell.org/package/%{name}
# Begin cabal-rpm sources:
Source0:        pandoc.hs
# End cabal-rpm sources

# Begin cabal-rpm deps:
BuildRequires:  ghc-rpm-macros
%if %{defined ghc_name}
BuildRequires:  %{ghc_name}-devel
BuildRequires:  %{ghc_name}-prof
BuildRequires:  zlib-devel
%else
BuildRequires:  ghc-base-devel
BuildRequires:  ghc-hslua-devel
%endif
BuildRequires:  cabal-install > 1.18
# End cabal-rpm deps

%description
Short paragraph here.


%prep
# Begin cabal-rpm setup:
# End cabal-rpm setup


%build
runghc %{SOURCE0}


%files
# Begin cabal-rpm files:
# End cabal-rpm files


%changelog
* Fri Feb 24 2023 Jens Petersen <petersen@redhat.com> - 0.1.7-1
- spec file generated by cabal-rpm-2.1.0