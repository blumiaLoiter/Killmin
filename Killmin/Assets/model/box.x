xof 0303txt 0032
template Vector {
 <3d82ab5e-62da-11cf-ab39-0020af71e433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template MeshFace {
 <3d82ab5f-62da-11cf-ab39-0020af71e433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
 <3d82ab44-62da-11cf-ab39-0020af71e433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template MeshNormals {
 <f6f23f43-7686-11cf-8f52-0040333594a3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Coords2d {
 <f6f23f44-7686-11cf-8f52-0040333594a3>
 FLOAT u;
 FLOAT v;
}

template MeshTextureCoords {
 <f6f23f40-7686-11cf-8f52-0040333594a3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template ColorRGBA {
 <35ff44e0-6c7c-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <d3e16e81-7835-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template Material {
 <3d82ab4d-62da-11cf-ab39-0020af71e433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshMaterialList {
 <f6f23f42-7686-11cf-8f52-0040333594a3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material <3d82ab4d-62da-11cf-ab39-0020af71e433>]
}

template TextureFilename {
 <a42790e1-7810-11cf-8f52-0040333594a3>
 STRING filename;
}


Mesh {
 24;
 -1.000000;1.000000;-1.000000;,
 1.000000;1.000000;-1.000000;,
 1.000000;-1.000000;-1.000000;,
 -1.000000;-1.000000;-1.000000;,
 1.000000;1.000000;-1.000000;,
 1.000000;1.000000;1.000000;,
 1.000000;-1.000000;1.000000;,
 1.000000;-1.000000;-1.000000;,
 1.000000;1.000000;1.000000;,
 -1.000000;1.000000;1.000000;,
 -1.000000;-1.000000;1.000000;,
 1.000000;-1.000000;1.000000;,
 -1.000000;1.000000;1.000000;,
 -1.000000;1.000000;-1.000000;,
 -1.000000;-1.000000;-1.000000;,
 -1.000000;-1.000000;1.000000;,
 1.000000;1.000000;1.000000;,
 1.000000;1.000000;-1.000000;,
 -1.000000;-1.000000;-1.000000;,
 1.000000;-1.000000;-1.000000;,
 -1.000000;-1.000000;1.000000;,
 -1.000000;1.000000;1.000000;,
 -1.000000;1.000000;-1.000000;,
 1.000000;-1.000000;1.000000;;
 12;
 3;0,1,2;,
 3;0,2,3;,
 3;4,5,6;,
 3;4,6,7;,
 3;8,9,10;,
 3;8,10,11;,
 3;12,13,14;,
 3;12,14,15;,
 3;21,16,17;,
 3;21,17,22;,
 3;18,19,23;,
 3;18,23,20;;

 MeshNormals {
  24;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;
  12;
  3;0,1,2;,
  3;0,2,3;,
  3;4,5,6;,
  3;4,6,7;,
  3;8,9,10;,
  3;8,10,11;,
  3;12,13,14;,
  3;12,14,15;,
  3;21,16,17;,
  3;21,17,22;,
  3;18,19,23;,
  3;18,23,20;;
 }

 MeshTextureCoords {
  24;
  0.509683;0.013864;,
  0.986011;0.013864;,
  0.986011;0.490193;,
  0.509683;0.490193;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.014410;0.490866;,
  0.490738;0.491287;,
  0.490317;0.967616;,
  0.013989;0.967194;,
  0.014831;0.014537;,
  0.491160;0.014959;,
  0.000000;0.003188;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  0.014410;0.490866;,
  0.490738;0.491287;,
  1.000000;1.000000;;
 }

 MeshMaterialList {
  1;
  12;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;

  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "Assets/model/af18.jpg";
   }
  }
 }
}