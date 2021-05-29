
part of three_materials;

/**
 * parameters = {
 *  opacity: <float>,
 *
 *  bumpMap: new THREE.Texture( <Image> ),
 *  bumpScale: <float>,
 *
 *  normalMap: new THREE.Texture( <Image> ),
 *  normalMapType: THREE.TangentSpaceNormalMap,
 *  normalScale: <Vector2>,
 *
 *  displacementMap: new THREE.Texture( <Image> ),
 *  displacementScale: <float>,
 *  displacementBias: <float>,
 *
 *  wireframe: <boolean>,
 *  wireframeLinewidth: <float>
 *
 *  skinning: <bool>,
 *  morphTargets: <bool>,
 *  morphNormals: <bool>
 * }
 */

class MeshNormalMaterial extends Material {

  bool isMeshNormalMaterial = true;

  String type = "MeshNormalMaterial";
  num bumpScale = 1;
  Texture? bumpMap;

  Texture? normalMap;
  int? normalMapType = TangentSpaceNormalMap;

  Vector2? normalScale = Vector2( 1, 1 );

  Texture? displacementMap;
  num? displacementScale = 1;
  num? displacementBias = 0;

  bool wireframe = false;
  num? wireframeLinewidth = 1;

  bool fog = false;

  bool skinning = false;
  bool morphTargets = false;
  bool morphNormals = false;


  MeshNormalMaterial( Map<String, dynamic> parameters ) : super() {
    this.setValues( parameters );
  }



}

// MeshNormalMaterial.prototype.copy = function ( source ) {

// 	Material.prototype.copy.call( this, source );

// 	this.bumpMap = source.bumpMap;
// 	this.bumpScale = source.bumpScale;

// 	this.normalMap = source.normalMap;
// 	this.normalMapType = source.normalMapType;
// 	this.normalScale.copy( source.normalScale );

// 	this.displacementMap = source.displacementMap;
// 	this.displacementScale = source.displacementScale;
// 	this.displacementBias = source.displacementBias;

// 	this.wireframe = source.wireframe;
// 	this.wireframeLinewidth = source.wireframeLinewidth;

// 	this.skinning = source.skinning;
// 	this.morphTargets = source.morphTargets;
// 	this.morphNormals = source.morphNormals;

// 	return this;

// };
