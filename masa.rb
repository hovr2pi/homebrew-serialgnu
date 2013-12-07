require 'formula'

class Masa < Formula
	homepage 'https://github.com/manufactured-solutions'
	url 'https://github.com/manufactured-solutions/MASA/releases/download/0.43.1/masa-0.43.1.tar.gz'
	sha1 'cbe347fc8faf2a04cd851bbdee0f50519523ff6e'
	option 'check', 'Run the make check target because verification'
	keg_only "intended to be managed with lmod"

	depends_on :fortran
	depends_on :autoconf
	depends_on 'doxygen' => :recommended
	depends_on 'graphviz' => :recommended


	def install
		prefix # == HOMEBREW_PREFIX+'Cellar'+'serial-gnu'+name+version
		system "./configure", "--disable-debug",
			"--disable-dependency-tracking",
			"--disable-silent-rules",
			"--prefix=#{prefix}"
		system "make"
		system "make check"
		system "make install"
	end

	def caveats
		"Documentation will only be built if doxygen, graphviz and pdflatex are installed"
		"We recommend using a MacTeX distribution: http://www.tug.org/mactex/"
		"$ brew install doxygen graphiz"
		"it is strongly recommended that you also run brew test masa once the install is done"
	end

	test do
		# This test will fail and we won't accept that! It's enough to just replace
		# "false" with the main program this formula installs, but it'd be nice if you
		# were more thorough. Run the test with `brew test masa`.
		#
		# The installed folder is not in the path, so use the entire path to any
		# executables being tested: `system "#{bin}/program", "--version"`.
		system "false"
	end
end
