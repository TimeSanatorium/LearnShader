Shader "Sindrax/ShaderStruct1.0"
{
    Properties//�������Ҫʹ�õ��Ĳ���
    {
        _Range ("Range",Range(0,100)) = 1
        _Texture ("Texture",2D) = ""{}
        _Texture3D ("Texture3D",3D) = ""{}//ֻ���ýű����ƴ��� OpenGL3.0���ϲ���ʹ���������

    }
    SubShader//�Կ���Ⱦ��ʽ
    {
        Tags { "RenderType"="Opaque" }//��Ⱦ�ı�ǩ����
        Pass//ֻҪ��һ��Pass����ͻ���Ⱦһ��
            {
            CGPROGRAM   
            //������д�Լ��Ĵ����
            //��Ⱦ���� ��ɫ��ϵ� Render Setup
            //�������� ֻ����fixed function Shader�вſ���ʵ�� Texture Setup
            ENDCG
            }
    }
    FallBack "Diffuse"
}
