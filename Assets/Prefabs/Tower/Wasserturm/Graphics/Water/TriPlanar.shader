// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1674,x:33712,y:33079,varname:node_1674,prsc:2|diff-3031-RGB,spec-7085-R,gloss-7085-R,normal-6489-RGB;n:type:ShaderForge.SFN_Tex2d,id:3031,x:33368,y:32857,varname:node_3031,prsc:2,tex:93774dc2c631ea544b9b8732a90fc148,ntxv:0,isnm:False|UVIN-54-OUT,TEX-3935-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3935,x:33019,y:32844,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:_Albedo,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93774dc2c631ea544b9b8732a90fc148,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6489,x:33368,y:33031,varname:node_3036,prsc:2,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:0,isnm:False|UVIN-54-OUT,TEX-1265-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1265,x:33019,y:33044,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7085,x:33387,y:33250,varname:node_3037,prsc:2,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:0,isnm:False|UVIN-54-OUT,TEX-988-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:988,x:33019,y:33263,ptovrint:True,ptlb:Roughness,ptin:_Roughness,varname:_Roughness,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Panner,id:480,x:32287,y:32611,varname:node_480,prsc:2,spu:1,spv:0|UVIN-2038-OUT,DIST-9814-OUT;n:type:ShaderForge.SFN_Tex2d,id:8739,x:32506,y:32400,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_8739,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1854-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6020,x:32772,y:32401,varname:node_6020,prsc:2|A-3336-OUT,B-8739-R;n:type:ShaderForge.SFN_ValueProperty,id:3336,x:32506,y:32313,ptovrint:False,ptlb:NoiseAmount,ptin:_NoiseAmount,varname:node_3336,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Panner,id:1854,x:32301,y:32400,varname:node_1854,prsc:2,spu:1,spv:0|UVIN-2038-OUT,DIST-749-OUT;n:type:ShaderForge.SFN_TexCoord,id:6913,x:31026,y:32344,varname:node_6913,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:4472,x:31774,y:32628,ptovrint:False,ptlb:NoiseSpeed,ptin:_NoiseSpeed,varname:node_4472,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:3725,x:31762,y:32741,ptovrint:False,ptlb:WaterSpeed,ptin:_WaterSpeed,varname:node_3725,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Time,id:9265,x:31774,y:32471,varname:node_9265,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9814,x:32070,y:32631,varname:node_9814,prsc:2|A-9265-T,B-3725-OUT;n:type:ShaderForge.SFN_Multiply,id:749,x:32070,y:32467,varname:node_749,prsc:2|A-9265-T,B-4472-OUT;n:type:ShaderForge.SFN_RemapRange,id:7952,x:31233,y:32344,varname:node_7952,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6913-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9617,x:31449,y:32344,varname:node_9617,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7952-OUT;n:type:ShaderForge.SFN_ArcTan2,id:9515,x:31774,y:32306,varname:node_9515,prsc:2,attp:3|A-9617-G,B-9617-R;n:type:ShaderForge.SFN_Length,id:5110,x:31636,y:32164,varname:node_5110,prsc:2|IN-9617-OUT;n:type:ShaderForge.SFN_Append,id:2038,x:32057,y:32233,varname:node_2038,prsc:2|A-7914-OUT,B-9515-OUT;n:type:ShaderForge.SFN_Add,id:54,x:32998,y:32623,varname:node_54,prsc:2|A-6020-OUT,B-480-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:7914,x:31836,y:32164,varname:node_7914,prsc:2|IN-5110-OUT;proporder:3935-1265-988-8739-3336-4472-3725;pass:END;sub:END;*/

Shader "Dion/Water" {
    Properties {
        _Albedo ("Albedo", 2D) = "black" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Roughness ("Roughness", 2D) = "bump" {}
        _Noise ("Noise", 2D) = "white" {}
        _NoiseAmount ("NoiseAmount", Float ) = 0.2
        _NoiseSpeed ("NoiseSpeed", Float ) = 0.2
        _WaterSpeed ("WaterSpeed", Float ) = 0.2
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Roughness; uniform float4 _Roughness_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _NoiseAmount;
            uniform float _NoiseSpeed;
            uniform float _WaterSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9265 = _Time;
                float2 node_7952 = (i.uv0*2.0+-1.0);
                float2 node_9617 = node_7952.rg;
                float2 node_2038 = float2((1.0 - length(node_9617)),(1-abs(atan2(node_9617.g,node_9617.r)/3.14159265359)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX((node_2038+(node_9265.g*_NoiseSpeed)*float2(1,0)), _Noise));
                float node_6020 = (_NoiseAmount*_Noise_var.r);
                float2 node_480 = (node_2038+(node_9265.g*_WaterSpeed)*float2(1,0));
                float2 node_54 = (node_6020+node_480);
                float3 node_3036 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_54, _Normal)));
                float3 normalLocal = node_3036.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float3 node_3037 = UnpackNormal(tex2D(_Roughness,TRANSFORM_TEX(node_54, _Roughness)));
                float gloss = node_3037.r;
                float perceptualRoughness = 1.0 - node_3037.r;
                float roughness = perceptualRoughness * perceptualRoughness;
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float3 specularColor = node_3037.r;
                float specularMonochrome;
                float4 node_3031 = tex2D(_Albedo,TRANSFORM_TEX(node_54, _Albedo));
                float3 diffuseColor = node_3031.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
/////// Diffuse:
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4(0,0,0,1);
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Roughness; uniform float4 _Roughness_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _NoiseAmount;
            uniform float _NoiseSpeed;
            uniform float _WaterSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9265 = _Time;
                float2 node_7952 = (i.uv0*2.0+-1.0);
                float2 node_9617 = node_7952.rg;
                float2 node_2038 = float2((1.0 - length(node_9617)),(1-abs(atan2(node_9617.g,node_9617.r)/3.14159265359)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX((node_2038+(node_9265.g*_NoiseSpeed)*float2(1,0)), _Noise));
                float node_6020 = (_NoiseAmount*_Noise_var.r);
                float2 node_480 = (node_2038+(node_9265.g*_WaterSpeed)*float2(1,0));
                float2 node_54 = (node_6020+node_480);
                float3 node_3036 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_54, _Normal)));
                float3 normalLocal = node_3036.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float3 node_3037 = UnpackNormal(tex2D(_Roughness,TRANSFORM_TEX(node_54, _Roughness)));
                float gloss = node_3037.r;
                float perceptualRoughness = 1.0 - node_3037.r;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_3037.r;
                float specularMonochrome;
                float4 node_3031 = tex2D(_Albedo,TRANSFORM_TEX(node_54, _Albedo));
                float3 diffuseColor = node_3031.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Roughness; uniform float4 _Roughness_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _NoiseAmount;
            uniform float _NoiseSpeed;
            uniform float _WaterSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9265 = _Time;
                float2 node_7952 = (i.uv0*2.0+-1.0);
                float2 node_9617 = node_7952.rg;
                float2 node_2038 = float2((1.0 - length(node_9617)),(1-abs(atan2(node_9617.g,node_9617.r)/3.14159265359)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX((node_2038+(node_9265.g*_NoiseSpeed)*float2(1,0)), _Noise));
                float node_6020 = (_NoiseAmount*_Noise_var.r);
                float2 node_480 = (node_2038+(node_9265.g*_WaterSpeed)*float2(1,0));
                float2 node_54 = (node_6020+node_480);
                float3 node_3036 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_54, _Normal)));
                float3 normalLocal = node_3036.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float3 node_3037 = UnpackNormal(tex2D(_Roughness,TRANSFORM_TEX(node_54, _Roughness)));
                float gloss = node_3037.r;
                float perceptualRoughness = 1.0 - node_3037.r;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_3037.r;
                float specularMonochrome;
                float4 node_3031 = tex2D(_Albedo,TRANSFORM_TEX(node_54, _Albedo));
                float3 diffuseColor = node_3031.rgb; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
