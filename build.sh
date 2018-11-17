
echo "Running the build.sh Script"

mkdir -p $PREFIX/bin/
mkdir -p $PREFIX/share/

echo "Adding SOAD-HLA data"
cp -r $SRC_DIR/data/ $PREFIX/share/database

echo "Install SOA-HLA with Conda specific EVs"
cp $SRC_DIR/src/* $PREFIX/bin/
cp $SRC_DIR/include/* $PREFIX/bin/

chmod 755 $PREFIX/bin/*.pl
chmod 755 $PREFIX/bin/blastall
chmod 755 $PREFIX/bin/formatdb
chmod 755 $PREFIX/bin/samtools