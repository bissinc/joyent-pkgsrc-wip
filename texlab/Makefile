# $NetBSD$

DISTNAME=	texlab-2.1.0
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GITHUB:=latex-lsp/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/latex-lsp/texlab/
COMMENT=	Implementation of the Language Server Protocol for LaTeX
LICENSE=	gnu-gpl-v3

CARGO_CRATE_DEPENDS+=	adler32-1.0.4
CARGO_CRATE_DEPENDS+=	aho-corasick-0.7.10
CARGO_CRATE_DEPENDS+=	ansi_term-0.11.0
CARGO_CRATE_DEPENDS+=	aovec-1.1.0
CARGO_CRATE_DEPENDS+=	arc-swap-0.4.4
CARGO_CRATE_DEPENDS+=	arrayref-0.3.6
CARGO_CRATE_DEPENDS+=	arrayvec-0.4.12
CARGO_CRATE_DEPENDS+=	arrayvec-0.5.1
CARGO_CRATE_DEPENDS+=	ascii-0.9.3
CARGO_CRATE_DEPENDS+=	ascii-canvas-2.0.0
CARGO_CRATE_DEPENDS+=	async-trait-0.1.30
CARGO_CRATE_DEPENDS+=	atty-0.2.11
CARGO_CRATE_DEPENDS+=	autocfg-0.1.7
CARGO_CRATE_DEPENDS+=	autocfg-1.0.0
CARGO_CRATE_DEPENDS+=	base64-0.11.0
CARGO_CRATE_DEPENDS+=	base64-0.12.0
CARGO_CRATE_DEPENDS+=	bibutils-sys-0.1.0
CARGO_CRATE_DEPENDS+=	bit-set-0.5.1
CARGO_CRATE_DEPENDS+=	bit-vec-0.5.1
CARGO_CRATE_DEPENDS+=	bitflags-1.2.1
CARGO_CRATE_DEPENDS+=	blake2b_simd-0.5.10
CARGO_CRATE_DEPENDS+=	block-buffer-0.7.3
CARGO_CRATE_DEPENDS+=	block-padding-0.1.5
CARGO_CRATE_DEPENDS+=	bstr-0.2.12
CARGO_CRATE_DEPENDS+=	bumpalo-3.2.0
CARGO_CRATE_DEPENDS+=	byte-tools-0.3.1
CARGO_CRATE_DEPENDS+=	bytemuck-1.2.0
CARGO_CRATE_DEPENDS+=	byteorder-1.3.4
CARGO_CRATE_DEPENDS+=	bytes-0.5.4
CARGO_CRATE_DEPENDS+=	cast-0.2.3
CARGO_CRATE_DEPENDS+=	cc-1.0.52
CARGO_CRATE_DEPENDS+=	cesu8-1.1.0
CARGO_CRATE_DEPENDS+=	cfg-if-0.1.10
CARGO_CRATE_DEPENDS+=	chashmap-2.2.2
# next four don't work because the crates are not on crates.io
CARGO_CRATE_DEPENDS+=	citeproc-0.0.1
CARGO_CRATE_DEPENDS+=	citeproc-db-0.1.0
CARGO_CRATE_DEPENDS+=	citeproc-io-0.1.0
CARGO_CRATE_DEPENDS+=	citeproc-proc-0.1.0
CARGO_CRATE_DEPENDS+=	clap-2.33.0
CARGO_CRATE_DEPENDS+=	cloudabi-0.0.3
CARGO_CRATE_DEPENDS+=	color_quant-1.0.1
CARGO_CRATE_DEPENDS+=	combine-3.8.1
CARGO_CRATE_DEPENDS+=	constant_time_eq-0.1.5
CARGO_CRATE_DEPENDS+=	crc32fast-1.2.0
CARGO_CRATE_DEPENDS+=	criterion-0.3.2
CARGO_CRATE_DEPENDS+=	criterion-plot-0.4.2
CARGO_CRATE_DEPENDS+=	crossbeam-0.7.3
CARGO_CRATE_DEPENDS+=	crossbeam-channel-0.4.2
CARGO_CRATE_DEPENDS+=	crossbeam-deque-0.7.3
CARGO_CRATE_DEPENDS+=	crossbeam-epoch-0.8.2
CARGO_CRATE_DEPENDS+=	crossbeam-queue-0.2.1
CARGO_CRATE_DEPENDS+=	crossbeam-utils-0.7.2
CARGO_CRATE_DEPENDS+=	csl-0.0.1
CARGO_CRATE_DEPENDS+=	csv-1.1.3
CARGO_CRATE_DEPENDS+=	csv-core-0.1.10
CARGO_CRATE_DEPENDS+=	deflate-0.8.4
CARGO_CRATE_DEPENDS+=	derive-new-0.5.8
CARGO_CRATE_DEPENDS+=	diff-0.1.12
CARGO_CRATE_DEPENDS+=	digest-0.8.1
CARGO_CRATE_DEPENDS+=	dirs-1.0.5
CARGO_CRATE_DEPENDS+=	docopt-1.1.0
CARGO_CRATE_DEPENDS+=	either-1.5.3
CARGO_CRATE_DEPENDS+=	ena-0.13.1
CARGO_CRATE_DEPENDS+=	error-chain-0.12.2
CARGO_CRATE_DEPENDS+=	fake-simd-0.1.2
CARGO_CRATE_DEPENDS+=	fern-0.6.0
CARGO_CRATE_DEPENDS+=	fixedbitset-0.1.9
CARGO_CRATE_DEPENDS+=	fixedbitset-0.2.0
CARGO_CRATE_DEPENDS+=	fnv-1.0.6
CARGO_CRATE_DEPENDS+=	fuchsia-cprng-0.1.1
CARGO_CRATE_DEPENDS+=	fuchsia-zircon-0.3.3
CARGO_CRATE_DEPENDS+=	fuchsia-zircon-sys-0.3.3
CARGO_CRATE_DEPENDS+=	futf-0.1.4
CARGO_CRATE_DEPENDS+=	futures-0.3.4
CARGO_CRATE_DEPENDS+=	futures-channel-0.3.4
CARGO_CRATE_DEPENDS+=	futures-core-0.3.4
CARGO_CRATE_DEPENDS+=	futures-executor-0.3.4
CARGO_CRATE_DEPENDS+=	futures-io-0.3.4
CARGO_CRATE_DEPENDS+=	futures-macro-0.3.4
CARGO_CRATE_DEPENDS+=	futures-sink-0.3.4
CARGO_CRATE_DEPENDS+=	futures-task-0.3.4
CARGO_CRATE_DEPENDS+=	futures-util-0.3.4
CARGO_CRATE_DEPENDS+=	generational-arena-0.2.7
CARGO_CRATE_DEPENDS+=	generic-array-0.12.3
CARGO_CRATE_DEPENDS+=	getrandom-0.1.14
CARGO_CRATE_DEPENDS+=	gif-0.10.3
CARGO_CRATE_DEPENDS+=	heck-0.3.1
CARGO_CRATE_DEPENDS+=	hermit-abi-0.1.8
CARGO_CRATE_DEPENDS+=	html2md-0.2.9
CARGO_CRATE_DEPENDS+=	html5ever-0.22.5
CARGO_CRATE_DEPENDS+=	html5ever-0.24.1
CARGO_CRATE_DEPENDS+=	idna-0.2.0
CARGO_CRATE_DEPENDS+=	image-0.23.4
CARGO_CRATE_DEPENDS+=	indexmap-1.3.2
CARGO_CRATE_DEPENDS+=	indoc-0.3.5
CARGO_CRATE_DEPENDS+=	indoc-impl-0.3.5
CARGO_CRATE_DEPENDS+=	inflate-0.4.5
CARGO_CRATE_DEPENDS+=	iovec-0.1.4
CARGO_CRATE_DEPENDS+=	itertools-0.8.2
CARGO_CRATE_DEPENDS+=	itertools-0.9.0
CARGO_CRATE_DEPENDS+=	itoa-0.4.5
CARGO_CRATE_DEPENDS+=	jni-0.11.0
CARGO_CRATE_DEPENDS+=	jni-sys-0.3.0
CARGO_CRATE_DEPENDS+=	jpeg-decoder-0.1.18
CARGO_CRATE_DEPENDS+=	js-sys-0.3.36
CARGO_CRATE_DEPENDS+=	kernel32-sys-0.2.2
CARGO_CRATE_DEPENDS+=	lalrpop-0.18.1
CARGO_CRATE_DEPENDS+=	lalrpop-util-0.18.1
CARGO_CRATE_DEPENDS+=	lazy_static-1.4.0
CARGO_CRATE_DEPENDS+=	lexical-core-0.6.2
CARGO_CRATE_DEPENDS+=	libc-0.2.67
CARGO_CRATE_DEPENDS+=	lock_api-0.3.3
CARGO_CRATE_DEPENDS+=	log-0.4.8
CARGO_CRATE_DEPENDS+=	lsp-types-0.74.0
CARGO_CRATE_DEPENDS+=	lzw-0.10.0
CARGO_CRATE_DEPENDS+=	mac-0.1.1
CARGO_CRATE_DEPENDS+=	markup5ever-0.7.5
CARGO_CRATE_DEPENDS+=	markup5ever-0.9.0
CARGO_CRATE_DEPENDS+=	matches-0.1.8
CARGO_CRATE_DEPENDS+=	maybe-uninit-2.0.0
CARGO_CRATE_DEPENDS+=	memchr-2.3.3
CARGO_CRATE_DEPENDS+=	memoffset-0.5.3
CARGO_CRATE_DEPENDS+=	miniz_oxide-0.3.6
CARGO_CRATE_DEPENDS+=	mio-0.6.21
CARGO_CRATE_DEPENDS+=	mio-named-pipes-0.1.6
CARGO_CRATE_DEPENDS+=	mio-uds-0.6.7
CARGO_CRATE_DEPENDS+=	miow-0.2.1
CARGO_CRATE_DEPENDS+=	miow-0.3.3
CARGO_CRATE_DEPENDS+=	net2-0.2.33
CARGO_CRATE_DEPENDS+=	new_debug_unreachable-1.0.4
CARGO_CRATE_DEPENDS+=	nodrop-0.1.14
CARGO_CRATE_DEPENDS+=	nom-4.2.3
CARGO_CRATE_DEPENDS+=	nom-5.1.1
CARGO_CRATE_DEPENDS+=	num-integer-0.1.42
CARGO_CRATE_DEPENDS+=	num-iter-0.1.40
CARGO_CRATE_DEPENDS+=	num-rational-0.2.4
CARGO_CRATE_DEPENDS+=	num-traits-0.2.11
CARGO_CRATE_DEPENDS+=	num_cpus-1.12.0
CARGO_CRATE_DEPENDS+=	numtoa-0.1.0
CARGO_CRATE_DEPENDS+=	once_cell-1.3.1
CARGO_CRATE_DEPENDS+=	oorandom-11.1.0
CARGO_CRATE_DEPENDS+=	opaque-debug-0.2.3
CARGO_CRATE_DEPENDS+=	ordermap-0.3.5
CARGO_CRATE_DEPENDS+=	owning_ref-0.3.3
CARGO_CRATE_DEPENDS+=	parking_lot-0.4.8
CARGO_CRATE_DEPENDS+=	parking_lot-0.9.0
CARGO_CRATE_DEPENDS+=	parking_lot_core-0.2.14
CARGO_CRATE_DEPENDS+=	parking_lot_core-0.6.2
CARGO_CRATE_DEPENDS+=	percent-encoding-1.0.1
CARGO_CRATE_DEPENDS+=	percent-encoding-2.1.0
CARGO_CRATE_DEPENDS+=	petgraph-0.4.13
CARGO_CRATE_DEPENDS+=	petgraph-0.5.0
CARGO_CRATE_DEPENDS+=	phf-0.7.24
CARGO_CRATE_DEPENDS+=	phf-0.8.0
CARGO_CRATE_DEPENDS+=	phf_codegen-0.7.24
CARGO_CRATE_DEPENDS+=	phf_generator-0.7.24
CARGO_CRATE_DEPENDS+=	phf_generator-0.8.0
CARGO_CRATE_DEPENDS+=	phf_macros-0.8.0
CARGO_CRATE_DEPENDS+=	phf_shared-0.7.24
CARGO_CRATE_DEPENDS+=	phf_shared-0.8.0
CARGO_CRATE_DEPENDS+=	pin-project-lite-0.1.4
CARGO_CRATE_DEPENDS+=	pin-utils-0.1.0-alpha.4
CARGO_CRATE_DEPENDS+=	plotters-0.2.12
CARGO_CRATE_DEPENDS+=	png-0.16.2
CARGO_CRATE_DEPENDS+=	ppv-lite86-0.2.6
CARGO_CRATE_DEPENDS+=	precomputed-hash-0.1.1
CARGO_CRATE_DEPENDS+=	proc-macro-error-1.0.2
CARGO_CRATE_DEPENDS+=	proc-macro-error-attr-1.0.2
CARGO_CRATE_DEPENDS+=	proc-macro-hack-0.5.11
CARGO_CRATE_DEPENDS+=	proc-macro-nested-0.1.3
CARGO_CRATE_DEPENDS+=	proc-macro2-0.4.30
CARGO_CRATE_DEPENDS+=	proc-macro2-1.0.9
CARGO_CRATE_DEPENDS+=	quote-0.6.13
CARGO_CRATE_DEPENDS+=	quote-1.0.4
CARGO_CRATE_DEPENDS+=	rand-0.4.6
CARGO_CRATE_DEPENDS+=	rand-0.6.5
CARGO_CRATE_DEPENDS+=	rand-0.7.3
CARGO_CRATE_DEPENDS+=	rand_chacha-0.1.1
CARGO_CRATE_DEPENDS+=	rand_chacha-0.2.2
CARGO_CRATE_DEPENDS+=	rand_core-0.3.1
CARGO_CRATE_DEPENDS+=	rand_core-0.4.2
CARGO_CRATE_DEPENDS+=	rand_core-0.5.1
CARGO_CRATE_DEPENDS+=	rand_hc-0.1.0
CARGO_CRATE_DEPENDS+=	rand_hc-0.2.0
CARGO_CRATE_DEPENDS+=	rand_isaac-0.1.1
CARGO_CRATE_DEPENDS+=	rand_jitter-0.1.4
CARGO_CRATE_DEPENDS+=	rand_os-0.1.3
CARGO_CRATE_DEPENDS+=	rand_pcg-0.1.2
CARGO_CRATE_DEPENDS+=	rand_pcg-0.2.1
CARGO_CRATE_DEPENDS+=	rand_xorshift-0.1.1
CARGO_CRATE_DEPENDS+=	rayon-1.3.0
CARGO_CRATE_DEPENDS+=	rayon-core-1.7.0
CARGO_CRATE_DEPENDS+=	rdrand-0.4.0
CARGO_CRATE_DEPENDS+=	redox_syscall-0.1.56
CARGO_CRATE_DEPENDS+=	redox_termios-0.1.1
CARGO_CRATE_DEPENDS+=	redox_users-0.3.4
CARGO_CRATE_DEPENDS+=	regex-1.3.7
CARGO_CRATE_DEPENDS+=	regex-automata-0.1.9
CARGO_CRATE_DEPENDS+=	regex-syntax-0.6.17
CARGO_CRATE_DEPENDS+=	remove_dir_all-0.5.2
CARGO_CRATE_DEPENDS+=	roxmltree-0.7.3
CARGO_CRATE_DEPENDS+=	rust-argon2-0.7.0
CARGO_CRATE_DEPENDS+=	rustc-hash-1.1.0
CARGO_CRATE_DEPENDS+=	rustc_version-0.2.3
CARGO_CRATE_DEPENDS+=	ryu-1.0.3
CARGO_CRATE_DEPENDS+=	salsa-0.13.2
CARGO_CRATE_DEPENDS+=	salsa-macros-0.13.2
CARGO_CRATE_DEPENDS+=	same-file-1.0.6
CARGO_CRATE_DEPENDS+=	scoped_threadpool-0.1.9
CARGO_CRATE_DEPENDS+=	scopeguard-1.1.0
CARGO_CRATE_DEPENDS+=	semver-0.9.0
CARGO_CRATE_DEPENDS+=	semver-parser-0.7.0
CARGO_CRATE_DEPENDS+=	serde-1.0.106
CARGO_CRATE_DEPENDS+=	serde_derive-1.0.106
CARGO_CRATE_DEPENDS+=	serde_json-1.0.52
CARGO_CRATE_DEPENDS+=	serde_repr-0.1.5
CARGO_CRATE_DEPENDS+=	sha2-0.8.1
CARGO_CRATE_DEPENDS+=	signal-hook-registry-1.2.0
CARGO_CRATE_DEPENDS+=	siphasher-0.2.3
CARGO_CRATE_DEPENDS+=	siphasher-0.3.1
CARGO_CRATE_DEPENDS+=	slab-0.4.2
CARGO_CRATE_DEPENDS+=	smallvec-0.4.5
CARGO_CRATE_DEPENDS+=	smallvec-0.6.13
CARGO_CRATE_DEPENDS+=	smallvec-1.4.0
CARGO_CRATE_DEPENDS+=	socket2-0.3.11
CARGO_CRATE_DEPENDS+=	stable_deref_trait-1.1.1
CARGO_CRATE_DEPENDS+=	static_assertions-0.3.4
CARGO_CRATE_DEPENDS+=	string_cache-0.7.5
CARGO_CRATE_DEPENDS+=	string_cache_codegen-0.4.4
CARGO_CRATE_DEPENDS+=	string_cache_shared-0.3.0
CARGO_CRATE_DEPENDS+=	stringreader-0.1.1
CARGO_CRATE_DEPENDS+=	strsim-0.8.0
CARGO_CRATE_DEPENDS+=	strsim-0.9.3
CARGO_CRATE_DEPENDS+=	structopt-0.3.14
CARGO_CRATE_DEPENDS+=	structopt-derive-0.4.7
CARGO_CRATE_DEPENDS+=	strum-0.15.0
CARGO_CRATE_DEPENDS+=	strum_macros-0.15.0
CARGO_CRATE_DEPENDS+=	syn-0.15.44
CARGO_CRATE_DEPENDS+=	syn-1.0.18
CARGO_CRATE_DEPENDS+=	syn-mid-0.5.0
CARGO_CRATE_DEPENDS+=	tempfile-3.1.0
CARGO_CRATE_DEPENDS+=	tendril-0.4.1
CARGO_CRATE_DEPENDS+=	term-0.5.2
CARGO_CRATE_DEPENDS+=	termion-1.5.5
CARGO_CRATE_DEPENDS+=	textwrap-0.11.0
CARGO_CRATE_DEPENDS+=	thiserror-1.0.16
CARGO_CRATE_DEPENDS+=	thiserror-impl-1.0.16
CARGO_CRATE_DEPENDS+=	thread_local-1.0.1
CARGO_CRATE_DEPENDS+=	tiff-0.4.0
CARGO_CRATE_DEPENDS+=	tinytemplate-1.0.3
CARGO_CRATE_DEPENDS+=	titlecase-1.1.0
CARGO_CRATE_DEPENDS+=	tokio-0.2.19
CARGO_CRATE_DEPENDS+=	tokio-macros-0.2.5
CARGO_CRATE_DEPENDS+=	tokio-util-0.3.1
CARGO_CRATE_DEPENDS+=	typenum-1.11.2
CARGO_CRATE_DEPENDS+=	ucd-trie-0.1.3
CARGO_CRATE_DEPENDS+=	unic-char-property-0.9.0
CARGO_CRATE_DEPENDS+=	unic-char-range-0.9.0
CARGO_CRATE_DEPENDS+=	unic-common-0.9.0
CARGO_CRATE_DEPENDS+=	unic-segment-0.9.0
CARGO_CRATE_DEPENDS+=	unic-ucd-segment-0.9.0
CARGO_CRATE_DEPENDS+=	unic-ucd-version-0.9.0
CARGO_CRATE_DEPENDS+=	unicode-bidi-0.3.4
CARGO_CRATE_DEPENDS+=	unicode-normalization-0.1.12
CARGO_CRATE_DEPENDS+=	unicode-segmentation-1.6.0
CARGO_CRATE_DEPENDS+=	unicode-width-0.1.7
CARGO_CRATE_DEPENDS+=	unicode-xid-0.1.0
CARGO_CRATE_DEPENDS+=	unicode-xid-0.2.0
CARGO_CRATE_DEPENDS+=	unindent-0.1.5
CARGO_CRATE_DEPENDS+=	unreachable-1.0.0
CARGO_CRATE_DEPENDS+=	url-2.1.1
CARGO_CRATE_DEPENDS+=	utf-8-0.7.5
CARGO_CRATE_DEPENDS+=	uuid-0.8.1
CARGO_CRATE_DEPENDS+=	v_escape-0.7.4
CARGO_CRATE_DEPENDS+=	v_escape_derive-0.5.6
CARGO_CRATE_DEPENDS+=	v_htmlescape-0.4.5
CARGO_CRATE_DEPENDS+=	vec_map-0.8.1
CARGO_CRATE_DEPENDS+=	version_check-0.1.5
CARGO_CRATE_DEPENDS+=	version_check-0.9.1
CARGO_CRATE_DEPENDS+=	void-1.0.2
CARGO_CRATE_DEPENDS+=	walkdir-2.3.1
CARGO_CRATE_DEPENDS+=	wasi-0.9.0+wasi-snapshot-preview1
CARGO_CRATE_DEPENDS+=	wasm-bindgen-0.2.59
CARGO_CRATE_DEPENDS+=	wasm-bindgen-backend-0.2.59
CARGO_CRATE_DEPENDS+=	wasm-bindgen-macro-0.2.59
CARGO_CRATE_DEPENDS+=	wasm-bindgen-macro-support-0.2.59
CARGO_CRATE_DEPENDS+=	wasm-bindgen-shared-0.2.59
CARGO_CRATE_DEPENDS+=	web-sys-0.3.36
CARGO_CRATE_DEPENDS+=	winapi-0.2.8
CARGO_CRATE_DEPENDS+=	winapi-0.3.8
CARGO_CRATE_DEPENDS+=	winapi-build-0.1.1
CARGO_CRATE_DEPENDS+=	winapi-i686-pc-windows-gnu-0.4.0
CARGO_CRATE_DEPENDS+=	winapi-util-0.1.3
CARGO_CRATE_DEPENDS+=	winapi-x86_64-pc-windows-gnu-0.4.0
CARGO_CRATE_DEPENDS+=	ws2_32-sys-0.2.1
CARGO_CRATE_DEPENDS+=	xmlparser-0.10.0

USE_LANGUAGES=		# none

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${PREFIX}/bin/cargo build --verbose --locked --frozen --release -j${_MAKE_JOBS_N}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/alacritty ${DESTDIR}${PREFIX}/bin

.include "../../lang/rust/cargo.mk"
.include "../../mk/bsd.pkg.mk"
