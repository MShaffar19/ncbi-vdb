################################################################################
sub PACKAGE      { "sra-tools" }
sub VERSION      { "2.4.2-4" }
sub PACKAGE_TYPE { 'B' }
sub PACKAGE_NAME { "SRA-TOOLS" }
sub PACKAGE_NAMW { "SRATOOLS" }
sub CONFIG_OUT   { 'build' }
sub PKG { ( LNG   => 'C',
            OUT   => 'ncbi-outdir',
            PATH  => '/usr/local/ncbi/sra-tools',
            UPATH =>      '$HOME/ncbi/sra-tools', ) }
sub DEPENDS { ( { name => 'fuse' , Include => '/usr/include'        , },
                { name => 'hdf5' , Include => '/usr/include'        , },
                { name => 'magic', Include => '/usr/include'        , },
                { name => 'xml2' , Include => '/usr/include/libxml2', } ) }
sub REQ { (
            { name    => 'ngs-sdk',
              aname   => 'NGS',
              option  => 'with-ngs-sdk-prefix',
              origin  => 'I',
              type    => 'L',
              srcpath => '../ngs/ngs-sdk',
              pkgpath => '/usr/local/ngs/ngs-sdk',
              usrpath =>      '$HOME/ngs/ngs-sdk',
              bldpath => '$HOME/ncbi-outdir/ngs-sdk',
              include => 'ngs/itf/Refcount.h',
              lib     => 'libngs-c++.a',
            },
            { name    => 'ncbi-vdb',
              aname   => 'VDB',
              option  => 'with-ncbi-vdb-sources',
              boption => 'with-ncbi-vdb-build',
              origin  => 'I',
              type    => 'SB',
              srcpath => '../ncbi-vdb',
              pkgpath => '/usr/local/ncbi/ncbi-vdb',
              usrpath =>      '$HOME/ncbi/ncbi-vdb',
              bldpath => '$HOME/ncbi-outdir/ncbi-vdb',
              include => 'klib/rc.h',
              lib     => 'libncbi-vdb.a',
              ilib    => 'libkapp.a',
            },
            { name    => 'hdf5',
              option  => 'with-hdf5-prefix',
              origin  => 'E',
              type    => 'LIO',
              pkgpath => '/usr',
              usrpath => '$HOME',
              include => 'hdf5.h',
              lib     => 'libhdf5.a',
        } ) }
1
