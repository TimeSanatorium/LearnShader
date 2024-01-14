/// <summary>
/// 顶点着色器 
/// 1、顶点的颜色
/// 2、顶点变换 
/// 3、灯光的作用
/// </summary>
Shader "Sindrax/VertexShader"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _MainColor("MapColor",Color) = (1,1,1,1)
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            //Color(1,0,0,1)
            Color[_MainColor]
            Material
            {
            //Shader1.0的漫反射计算公式
                //Amebient * Lighting Window's Ambient Intensity setting + (Light Color * DIFFUSE+Light Color*Specular)+Emission
                //Ambient 环境光
                //DIFFUSE 漫反射光
                //SPECULAR 镜面反射光
                //Emission 自发光
                //Lighting Window's Ambient Intensity setting 在Unity Liting->Enviroment->Realtime ShadowColor 的设置
                DIFFUSE[_MainColor]
            }
            Lighting On//灯光的总开关
            SeparateSpecular On//高光的开关
        }
    }
}
