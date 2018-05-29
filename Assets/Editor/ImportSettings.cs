using UnityEngine;
using UnityEditor;
using System;

public class ImportSettings : AssetPostprocessor
{
	void OnPreprocessModel() {
		ModelImporter modell = assetImporter as ModelImporter;
		String modellName = modell.assetPath.ToLower();
		if (modellName.Substring(modellName.Length - 4, 4).Equals(".fbx") || modellName.Substring(modellName.Length - 6, 6).Equals(".blend")) {
			modell.importAnimation = false;
			modell.importVisibility = false;
			modell.importCameras = false;
			modell.importLights = false;
			modell.importMaterials = false;
			modell.animationType = ModelImporterAnimationType.None;
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

/*
 * void OnPostprocessTexture(Texture2D texture)
    {
        // Only post process textures if they are in a folder
        // "invert color" or a sub folder of it.
        string lowerCaseAssetPath = assetPath.ToLower();
        if (lowerCaseAssetPath.IndexOf("/invert color/") == -1)
            return;

        for (int m = 0; m < texture.mipmapCount; m++)
        {
            Color[] c = texture.GetPixels(m);

            for (int i = 0; i < c.Length; i++)
            {
                c[i].r = 1 - c[i].r;
                c[i].g = 1 - c[i].g;
                c[i].b = 1 - c[i].b;
            }
            texture.SetPixels(c, m);
        }
        // Instead of setting pixels for each mip map levels, you can also
        // modify only the pixels in the highest mip level. And then simply use
        // texture.Apply(true); to generate lower mip levels.
    }
*/