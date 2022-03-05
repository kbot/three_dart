part of three_textures;

class Data3DTexture extends Texture {
  bool isDataTexture3D = true;
  late int wrapR;

  Data3DTexture(
      [NativeArray? data, int width = 1, int height = 1, int depth = 1])
      : super(null, null, null, null, null, null, null, null, null, null) {
    this.image =
        ImageElement(data: data, width: width, height: height, depth: depth);

    this.magFilter = LinearFilter;
    this.minFilter = LinearFilter;

    this.wrapR = ClampToEdgeWrapping;

    this.generateMipmaps = false;
    this.flipY = false;
    this.unpackAlignment = 1;
  }

  // We're going to add .setXXX() methods for setting properties later.
  // Users can still set in DataTexture3D directly.
  //
  //	const texture = new THREE.DataTexture3D( data, width, height, depth );
  // 	texture.anisotropy = 16;
  //
  // See #14839

}