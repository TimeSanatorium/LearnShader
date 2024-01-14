/// <summary>
/// ������ɫ�� 
/// 1���������ɫ
/// 2������任 
/// 3���ƹ������
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
            //Shader1.0����������㹫ʽ
                //Amebient * Lighting Window's Ambient Intensity setting + (Light Color * DIFFUSE+Light Color*Specular)+Emission
                //Ambient ������
                //DIFFUSE �������
                //SPECULAR ���淴���
                //Emission �Է���
                //Lighting Window's Ambient Intensity setting ��Unity Liting->Enviroment->Realtime ShadowColor ������
                DIFFUSE[_MainColor]
            }
            Lighting On//�ƹ���ܿ���
            SeparateSpecular On//�߹�Ŀ���
        }
    }
}
