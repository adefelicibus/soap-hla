#!/bin/bash

echo "Running the build.sh Script"

mkdir -p $PREFIX/bin/
mkdir -p $PREFIX/share/

echo "Adding SOAD-HLA data"
cp -r $SRC_DIR/data/ $PREFIX/share/database

echo "Install SOA-HLA with Conda specific EVs"
cp $SRC_DIR/include/* $PREFIX/bin/

touch $PREFIX/bin/MHC_autopipeline
touch $PREFIX/bin/MHC_ld2pretype_score
touch $PREFIX/bin/MHC_sam2snp_blast
touch $PREFIX/bin/MHC_snp2ld_assemble
touch $PREFIX/bin/MHC_typing_construct

chmod 755 $PREFIX/bin/MHC_autopipeline
chmod 755 $PREFIX/bin/MHC_ld2pretype_score
chmod 755 $PREFIX/bin/MHC_sam2snp_blast
chmod 755 $PREFIX/bin/MHC_snp2ld_assemble
chmod 755 $PREFIX/bin/MHC_typing_construct
chmod 755 $PREFIX/bin/blastall
chmod 755 $PREFIX/bin/formatdb
chmod 755 $PREFIX/bin/samtools

cat $SRC_DIR/src/MHC_autopipeline.pl >> $PREFIX/bin/MHC_autopipeline
cat $SRC_DIR/src/MHC_ld2pretype_score.pl >> $PREFIX/bin/MHC_ld2pretype_score
cat $SRC_DIR/src/MHC_sam2snp_blast.pl >> $PREFIX/bin/MHC_sam2snp_blast
cat $SRC_DIR/src/MHC_snp2ld_assemble.pl >> $PREFIX/bin/MHC_snp2ld_assemble
cat $SRC_DIR/src/MHC_typing_construct.pl >> $PREFIX/bin/MHC_typing_construct
