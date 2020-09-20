if [ ! "$_PATCHELF_INCLUDED_" = "1" ]; then
_PATCHELF_INCLUDED_=1


feature_patchelf() {
	FEAT_NAME=patchelf

	FEAT_LIST_SCHEMA="0_10:source 0_9:source 0_8:source"
	FEAT_DEFAULT_ARCH=
	FEAT_DEFAULT_FLAVOUR="source"

	FEAT_DESC="A small utility to modify the dynamic linker and RPATH of ELF executables"
	FEAT_LINK="http://nixos.org/patchelf.html"

}




feature_patchelf_0_10() {
	FEAT_VERSION=0_10


	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://nixos.org/releases/patchelf/patchelf-0.10/patchelf-0.10.tar.gz
	FEAT_SOURCE_URL_FILENAME=patchelf-0.10.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/patchelf
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}

feature_patchelf_0_9() {
	FEAT_VERSION=0_9


	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://nixos.org/releases/patchelf/patchelf-0.9/patchelf-0.9.tar.gz
	FEAT_SOURCE_URL_FILENAME=patchelf-0.9.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/patchelf
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}

feature_patchelf_0_8() {
	FEAT_VERSION=0_8


	FEAT_SOURCE_DEPENDENCIES=
	FEAT_BINARY_DEPENDENCIES=

	FEAT_SOURCE_URL=https://nixos.org/releases/patchelf/patchelf-0.8/patchelf-0.8.tar.gz
	FEAT_SOURCE_URL_FILENAME=patchelf-0.8.tar.gz
	FEAT_SOURCE_URL_PROTOCOL=HTTP_ZIP

	FEAT_BINARY_URL=
	FEAT_BINARY_URL_FILENAME=
	FEAT_BINARY_URL_PROTOCOL=

	FEAT_SOURCE_CALLBACK=
	FEAT_BINARY_CALLBACK=
	FEAT_ENV_CALLBACK=

	FEAT_INSTALL_TEST="$FEAT_INSTALL_ROOT"/bin/patchelf
	FEAT_SEARCH_PATH="$FEAT_INSTALL_ROOT"/bin

}


feature_patchelf_install_source() {
	INSTALL_DIR="$FEAT_INSTALL_ROOT"
	SRC_DIR="$STELLA_APP_FEATURE_ROOT/$FEAT_NAME-$FEAT_VERSION-src"

	__set_toolset "STANDARD"

	__get_resource "$FEAT_NAME" "$FEAT_SOURCE_URL" "$FEAT_SOURCE_URL_PROTOCOL" "$SRC_DIR" "DEST_ERASE STRIP"


	AUTO_INSTALL_CONF_FLAG_PREFIX=
	AUTO_INSTALL_CONF_FLAG_POSTFIX="--disable-dependency-tracking"
	AUTO_INSTALL_BUILD_FLAG_PREFIX=
	AUTO_INSTALL_BUILD_FLAG_POSTFIX=

	__auto_build "$FEAT_NAME" "$SRC_DIR" "$INSTALL_DIR"




}


fi
