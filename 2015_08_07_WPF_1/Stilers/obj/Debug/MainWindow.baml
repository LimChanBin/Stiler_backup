   M S B A M L   `   `   `  ����B  >Stilers, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:StilersStilers  5   	       Stilers.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Stilers     5   	   c _Microsoft.Expression.Effects, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35?ee4http://schemas.microsoft.com/expression/2010/effects   5   	     � Title$  
MainWindow��5	   	   $	��271��6   $	��455��6)    � AllowsTransparency .  � WindowStyle$
 None=�6e   ��65   Z�  � 	Resources 5
         
bounceLogo g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value��%W  &	        �� 5   
   $ Forever��6(   .��5      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6,   $ logoImg��6�   .\�5        $ 0��6'   $ 1Q�63     5      $ 0:0:0.4��6'   $
 1.05Q�69     5      $ 0:0:0.6��6'   $ 1Q�69   5      U� 5      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6,   $ logoImg��6�   .\�5        $ 0��6'   $ 1Q�63     5      $ 0:0:0.4��6'   $
 1.05Q�69     5      $ 0:0:0.6��6'   $ 1Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 UIElement.MouseEnter��6   .[�5      �� -   5         ��Name$  bounceLogo_BeginStoryboard��5      #��[  6B   5      :� 5   
   $
 UIElement.MouseLeave��6   .[�5      ?�  �� BeginStoryboardName$  bounceLogo_BeginStoryboard��6   5      .��5       � -   5        .+�5!   
   ��  �� RadiusX$ 15��6    �� RadiusY$ 15��6!   $��0��6.   $��10q�6B   ���	#FF252525 J� Effect 5"      3  -System.Windows.Media.Effects.DropShadowEffect  5#         ShadowDepth$ 0Q�6#      
BlurRadius$ 10Q�63   5%      �� 5&   
   -   5         ��Name$ btnLogin��5&      $��SignIn��6#   $
��Left=�64   $��26.509��6O   $��259.159,172.605,0,0q�6_   $	��Top=�6|   $��68��6�   
�������
�������6�   �� 5'   
   -   5         ��Name$ 
emailInput��5'      $
��Left=�6&   $��27.424��6A   $��259.159,77.44,0,0q�6Q    �� TextWrapping$
 Wrap=�6l   $��me@seunghyun.net��6�   $	��Top=�6�   $	��155��6�   
�������$��0,0,0,1q�6�   ��6�   Z� 6�   �� 5(   
   -   5         ��Name$ logoImg��5(      $��42.754,61.63,0,61.061q�6!   $��Resource/logo.png��6@    J� RenderTransformOrigin$ 0.5,0.5&�6[   $
��Left=�6{   $��169.916��6�   z�5)      V� 5*      .~�5+      ��  �� ScaleY$	 1.2Q�6%    �� ScaleX$	 1.2Q�62   �� 5,      �� 5-      T� 5.      5/      51      G� 52   
   -   5         G�Name$ pwInput��52      $��Right=�6'   $��0,120.268,40.841,123.308q�6C   $	��155��6e   
�������$��0,0,0,1q�6�    G� Password$ 8159742a��6�   $��27.424��6�   ��6q   Z� 6�   �� 53   
   -   5        $ btnLogin_Copy��53      $��SignUp��6(   $
��Left=�69   $��26.509��6T   $��350.159,172.605,0,0q�6d   $	��Top=�6�   $��64��6�   
�������
�������6�   A� 54   
   ���	#FFFFDC00$
��Left=�6#   $��17��6>   $��
394,19,0,0q�6J   
���   �$	��Top=�6m   $��17��6�   A� 55   
   ���	#FFFF6340$
��Left=�6#   $��17��6>   $��
418,19,0,0q�6J   
���   �$	��Top=�6m   $��17��6�   �� 56   
   -   5         ��Name$ label��56      $��-��6   $
��Left=�6+   $��	394,9,0,0q�6F   $	��Top=�6Y   $��26��6q   $��17��6}   
���   �$��16(�6�   ��6�   Z� 6�   �� 57   
   -	   5        $ 
label_Copy��57      $��X��6$   $
��Left=�60   $��
418,14,0,0q�6K   $	��Top=�6_   $��22��6w   $��17��6�   
���   �$��10.667(�6�   ��6�   Z� 6�   59      5:      