using UnityEngine;
using UnityEditor;
using System;

public class ImportSettings : AssetPostprocessor
{
	void OnPreprocessModel() {
		ModelImporter modell = assetImporter as ModelImporter;
		String modellName = modell.assetPath.ToLower();
		if (modellName.Substring(modellName.Length - 4, 4).Equals(".fbx") || modellName.Substring(modellName.Length - 6, 6).Equals(".blend")) {
			modell.importVisibility = false;
			modell.importCameras = false;
			modell.importLights = false;
			modell.importMaterials = false;

			if (!modellName.Contains("animated")) {
				modell.importAnimation = false;
				modell.animationType = ModelImporterAnimationType.None;
			}
		}
	}

	void OnPreprocessTexture() {
		TextureImporter texture = assetImporter as TextureImporter;
		String texName = texture.assetPath.ToLower();

		if (texName.Substring(texName.Length - 4, 4).Equals(".png") || texName.Substring(texName.Length - 4, 4).Equals(".jpg")) {
			texture.crunchedCompression = true;
			texture.alphaIsTransparency = true;
		}

		if (texName.Contains("normal")) {
			texture.textureType = TextureImporterType.NormalMap;
		}
	}
}