��SRsb�p�p�p    H�     ��USWV.�.��PR�.�W
"ƄT�tp�� ��.�G
t]A�(Ms�m(Mw�U��U@t��."����� �t��� +G;�r��G� :GwڈG�
�ҍ���������).�W.�W.�? t݋�.��&�=�tϯu�V�u�^u�.���.���.�.�㒋�.��D���  ��v8�$.8r�����v�Iv�EtMt�u
Q���Yt��.�� .+W�;�r����.�� .�G�.�G��ZX^_[]�+����� ���t@��#�@t9��*�P+�+Ҏ��/<�Xu���t� ���x �t,��u�:&\ u	� z�/<�t+��Á� �s� �b �u��2PRS���� �^ �\ P� �^ �X�fuš\ V�  �^�|*XX����&�M��;��Ð    NetWareDriverLAN WS  ELINKSUP$          �PW�!.�>^ �u�ȯt0QUSRV�H�Ў�^Z[]u��>^ �` �!&��� ��&�E�� Y_X.�� .�.� �����O��Ju�U+��ô1����!ROUTE-DOS-$    t�� � � �I�, �!��
�6����Jr��;�u�U�h]tz�� �u�\ 1�������� ����%�!�t�>^ �.` �_��>`  t�>^ �!&��� ��&�E�� �� P�� ��&���&�T&�|&�|������`&�>u�
��������t�����t�����t������ t� ����t�q���M��� ���
W��w�<�t�"O��uA����u����[;�r;�r� L�!.��	u�l
�w� ��
����$� +ҋ�"uCC��
������N �\ ����+����t�����u��t+����ø5�!�� �� �&�_����� u�������	&�G�;G�u����	� ��=�
�����n���h&���I<�u���W���Q�܋�&�,��B�9&��S�1��&��+���f�!�v�#&�
���u�ĺ�*��&� �����
� ��<	w0�8��+��-�����������W�"�����B���ru+�;�u��u�����
;�t�	
� ��
�u���<r����ø������뢀��+�S��[u;�t
�݁=!tS��[u+��+�;�r�٠�1�L�>��.���y˸��y���s��t:����5�!����;�uZ�%�� �!�.�>�����۾� ����I���!�6����I����& @��&�>  t�@.;, t�&� ��; tٌ�;�t����=�r��= w����=8r�8� ���	���*������ ���� �,+��tR�<-t</uF�ֿ���}�]�����5�<ar<zw$߮��u���u3�"u�+���US�}��[rn�t��
�>Í\�� �� �
t/F�����<=u���@u��� tB��W�}�< _s��*
�F
*���r��w󤖸" ������$�6
�6
�Ҹ
t��|�L�!USW+���+��KONCF�$<0r^<9v��uU <arO<fwK�����O��r?�Hu��t$+�G�A��������Q�� O��Yr�;�u�
�u���@t	$�ʹ������ˋ�_[]����	  
�,�$Q� :�tW���_��Y�P�X+�+��	+��7R:�t��� XCC�?u��s��'�d 
    +�V���( ��^�R�
��u� �m ���������� �$� ��^�t��<$t��K ���'@'�Au�	
� �~	�E ��!��	�,���q�c Press ANY key to continue...$ 0�t��0P���!X��Ë�|$t:���. �*�d�����*�
���������: �������T�< tJ� �
�	�!�ô ����uF<w�N+��.
$

is invalidis not supported
is too big The parameter "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	Node Address	Source Route$Local Segment$
	$	$VeRsIoN=Novell Source Routing Driver for DOS ODI  v2.22 (960110) 
(c) Copyright 1989 - 1996, by Novell Inc. All rights reserved.

$ROUTE  U,BOARD=b,CLEAR,DEF,GBR,HOPS=h,MBR,NODES=n,TIME=t,TRA=ta,TRO=to,XTX=x

U	Unload a previously installed Source Router from memory.
BOARD=b	The board number as assigned by ODI.
CLEAR	CLEAR ALL Nodes from a previously loaded Source Router.
DEF	Send DEFault (Unknown) Node Addresses ALL ROUTES Broadcast.
	If NOT entered, SINGLE ROUTE Broadcast is ASSUMED.
GBR	Send Broadcast (FFFF FFFF FFFF) Addresses ALL ROUTES Broadcast.
	If NOT entered, SINGLE ROUTE Broadcast is ASSUMED.
HOPS=h	The number of bridge hops.  The DEFAULT is 07, MAXIMUM is 13.
MBR	Send Multicast (C000 xxxx xxxx) Addresses ALL ROUTES Broadcast.
	If NOT entered, SINGLE ROUTE Broadcast is ASSUMED.
NODES=n	The number of NODE Addresses to support.  The DEFAULT is 16,
	MAXIMUM is 1000.  If LESS THAN 08, then 08 is used.
TIME=t	The number of seconds to wait before a known route is timed
	out.  The DEFAULT is 10, MAXIMUM is 3640.  If 0, the route
	will NEVER time out.$TRA=ta	A number specifying a THIS RING ALTERNATE count for Broadcasts.
	The Source Router will ALTERNATE betweed SOURCE Routed and NON-
	SOURCE Routed frames.  The DEFAULT is 00, MAXIMUM is 255.
TRO=to	A number specifying a THIS RING ONLY count for Broadcasts.
	The DEFAULT is 00, MAXIMUM is 255.
XTX=x	The number of times to transmit on a timed out route.  The
	DEFAULT is 02, MAXIMUM is 255.
ALL Parameters are OPTIONAL, are NOT case sensitive, and may be entered in ANY
order. They may be used to SET the Source Router that is being loaded, or
CHANGE the configuration of a PREVIOUSLY loaded Source Router.$ALL$dSource Routing Table has been CLEARED$	DEFault Node     (Unknown$	Broadcast (FFFF FFFF FFFF$	Multicast (C000 xxxx xxxx$	ROUTE is not loaded$eBOARD #x NOT Found; Source Router will POLL for it$� Current ROUTE.com parameters for Board #1 are:

$	Maximum HOPS = $ Bridges; NODES = $; Aging TIME = $ Seconds.
	This Ring $Alternate (TRA) Count = $Only (TRO) Count = $) Addresses are sent $SINGLE$ ROUTE Broadcast.
$fBoard #1 does not support Source Routing$A TSR is loaded above ROUTE.com$ROUTE.com for board #1 has been unloaded$gYou are using the WRONG verion of ROUTE.com$; Extra Transmit (XTX) Count = $?@�U@�jF@�eBOARD���CLEAR@�D-@!DEF@
GBR@HOPS�DLSB@XMBR@MSB@]NODES�1TIME�CTRA�TTRO�XXTX� ` 