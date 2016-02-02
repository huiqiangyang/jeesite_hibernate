/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.19 : Database - jeesiteh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jeesiteh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jeesiteh`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('3e3d15d5436449a58b5eeedd189136e8',1,'leave.png','9f8ac51208c44024a2687beb61f1b1f3','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0b\0\0\0_\'r�\0\07�IDATx������}��X[F\\�Ԝ+&���ڷ�#q��Q}[��W�e��㼒e�����d�\n_՘��ƽ�6\"�MV�h����^bp66�+`8g��3�gm�^����>�cO�����w�;��y���inw��g���y������D\r\0\0\0B���\0\0\0$H�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0���>��������ܞ={*��DYe�=�������ō��؇�1��s����S�\0���ˑ#G��8kGn�������\'Μ=[Α=�l>�o߾lN��$��a,8G�#E�n�-\0�!mv���1??�w��g�}���3F�x��糾$�������h�#Α\"R���Q�6;�ڑ���/���3gO�Ɲ_���k�][[�}���9�)\"u�n1i������v�5�����_w�?�}���9�)\"u�n1i�Ց#G��}��sU#������7����\Z#�q���U�\0�����j�R�<����s�\Zy��S?۵�=����#�q���U�\0D!m���������s�4��3�4���7?�T������B�Cǈ8G�#E�n�-\0QH�o0;;{����������M����\'�־{����ڃ\'�����K�����j��j�Wj_��G�<������D�~����t�C7\\����at5�H��H�[ݦW�\0���SSSǏ?|�ܩ����8Y��:_{�\\�gj��j���|v�Mo������֞9]{��Z���ڟ��#��~����\'\'\'c�!ʺ�뮻�˷ݶgϞ�;�<�#��#%)ou�X�P�f�Z]^^>p�����_���ɾ���T��eǎ/����s\'�#k2^y�v���:w���?�{�������Z��s����~z��=ï?�͎�d9G�������~��3g�e�ݑ��I�)Oy�۔����B���,UNNNf93˖��q��ߨ�;����n����\\���޽{qq1��fW�rcd=u��⫵3���Y+����ǿ����̏.|����3���}�~�履\Z�v$ͽx}�IGq#ɜ#�S�#�u�L�P,[\\H�;�5%Y��Re�S�6���}�>:==���t����*�_c\\�H^�=�J��\'kgk�3�OO]s����������C�<�T#Ɏ��^G��MJ��\'����U�H��P�{�YݦQ�\0�V��f�񮻿�7g�41Ys���j�\Z�i���U����m�⫵�\\��k�����+���͗��_���:���P�cK5��H���C\n�=&��[��2�ΑΑa��ֳ�M�n(���,(���-,,�3��o�%�c��ׇ�|�i���h�쯯����z�߿��v������_��o�b���������j\'O�^9}��}�履\Z�u$�{�a��v|��۷F�rP�]u��Ay�a=�ۢ�-\05�B�E�ݻw/--m9j6~�6�����О��e+�s?k��B�5%/����L�G/���ѵ]��7�����\'�k?��~R��x���$���@�cK5R�H����g�ׂ��6��w��My�a=��B�-\0�5�B277�����c��9��R��U����|�]=zl�އV�}����s�/���_?��7z�[}�އ����}⇷���>|Ç�w:�m�ߋ�\r�}_j�-⫚�}p��Yy�a=����-\0��w!9x��v~��}>|����P��lv$?m��[����^M���>���R�4:�A{񀁳����Q�ԍs����(�{�Y��n(�\\ɱcǦ��F����\'>y뭷�d�#y�t$Бl�8�w���C����뭈#�92���zV�E�[\0�k!ɢ��ڔ��g�����X�>텎���AG�;��^�ί~�k��<q�c�>��v���m��\n��F����8�\'�9R�sd��=���nW�\0���B���<;;<j�ǧ?�;�\Z���i�#y�t�#�؋ONNfO��+�y��wϡg�	l|��Yo�1\ZΑb�#Q�{�Y��nHF��$�0�h́^�ܹs��gN��O�AGq;��x]KG�܋�[��{|q��#:Gb��ֳ�-P���>I�X�رcHQ�>���ڣG������ّ��t�#i��_>yj�Ν-������{�Lֻ?��s���~������@���s�(�H���zV�E�[\0�g!Y\\\\���j����7/,,����---u���͎d�t�[G��7t{ߔ�+;v�h��z�Ꮍ��_�Z�B}g,Αq>G�w7�v���r곐�߿��[ojڼ��od��h�m����7R�_~��Ç[��#I�#�}��z�Egǎ��K/�Ӌ�Gޗsd���ݍ�����,$333�\Z�P��\'���2�g��V�ozӛ�M�%�\\�w�����7;��1cՑ�>ĵ|�ѱ#�ً�sG��sd���ݍ�����,$C������SYg3�g[��?���|�c�K���_��1�����!����=:���v�99G��Q�ݨ�q�[\0ʩ�B�-��o1���gY����G��ן3�t{�z�����+u���lᢋ.��?ɹ��/�err�^oE#9G�w�k��cB�`{�,$SSS�?>��9�g[w�W4���MY����Z���?k:ƭ#�q��;�u�Ͽ�b߲���u?����������10��8�#ʻu;�u@9�YH��a��1������Q�E� ��<�sii���͎�-��l|�˿���H���l$�^5�O��w�Fv��}�k�:��xΎ|{�t��:�����?�sDyw�n��aǝ���#�[\0J��B2??�������{ߵ�^;�g�y��\'\'\'gff*����B�:�\\�8�hK}?l�k�n���v�v�n�G��q;}��Fv��}��zw�{�.�(G>��x~�ϑ-�S��cmǪ�Q�#ʻ��u���7�G��(�X{�n(�>ɡC�>���j����}ɓ�������Ŏ�d]��m�s�C�����ιc���q�Hz�ny�ϸ����T�ޑ�g/>�a�#9O��j8b���Q��ĭ�<��|�o/�<��������YH�e�R�5m�ݻ�ȑ#�y�}m��O4�R���J��no�H�G\r�{��P���?(��ۊ���[/^�Ύo��ґ�s/��*d�u�R�͢��x�#ʻ��v;�\\�-ߍ����0>�/$C}���O�����;ԏ�����AG�Q�Ƕ���v�Ƕ���O��N�v�y#���{�}g ��ۢ��|߾�v��룽#߻woV�E����r�zBm�>Q�l���0���]�݊���w�������_H��˴���g���is]*����>ռ��m�V����\'�y`��Ҽ�-�Bw$=:�<�ܑ\'Ӌ緝:�YK�N�������Q�u�>�}K�cU�|+�N�[����I�Z�T*���ͬ���������gN����9\Zi����m������ӻw�o�O�=��Cc�m�ؑ����zG�R/�_�s��������s���sDy׆_�yj�GY�,-w���q��4�ZH���>|�\rɿ�Y�yGrb���:�hl��FǇw�J��9���׎���ssNB�C�]�y�s���ǎO��o��ҷ�zvo����=�C��/\r˲G�F��q�[\0�w!��?x���f���ڵ+kh������?9�h~H�v�+�7z?��!-�붟�}�n?��朄؇.�<T�>�����f�z6\rz�(�_�s���=�CܷV{_���0������.$�^{m����5�\'N��m����@��!��MC��t{x��6��+�~n���;�wW{OB�CƠy2�x~[��AO�n��=IƬ���#e.�����ݣ»]�#����-\0�6�B�����n��=P���?x�W�6�g�e[K�-]o����[s�@�2��mnqZ~J��fm��<�^<�!��}k5�95��/�9R��6�^�����!���؇�bl!�:�]�v�s�}[���?�E�񌚵͎����\Z���n�H��6j�{�o6�r�܎?���zOB�CR��<�^<��UH��(�ws���X�H9�{xG6�_�[�5��d;��Pl/$Y�r�M�����|��|���_��3	bs]��1�H�#�ݑ�׋��I�)ay����\"��BR�V��y�5SYzl�oa����n����O�N��mv$�Ơ#Ɏ�[G�d/��s$�s�l�nӨ[\0\ng������7޸cǎ|��Y�l?��+���??|�\r�}������Z���͎�{Ơ#Վ��#O���9��9R��V���-\0Ų݅�Z�.//����ڵk⍲�dQsiiicc#Ⱦ����䫯>|��w��F�IsG�p/��s$�s�<�nS�[\0\n�B��J婧������@#펤ޑ?y�D½x~Α�Α����M�n(\n������#���=f��[�����؇n��.<�V���s��w�|�H���mzu@!H�op������E_�5�d�s����Е�9��I�)��W�6����o2���65���V<_{��9fg߷����\r]:�<�#�#e�mu�^�P�7�:p����y��Z��ss3��(��#��9��9R��V���-\0�P�&c �juϞ�8z��j������SS���qO�6\n%���p�$v�����mbu@!���������5��˵�1���ڑ�u[Y�R��5\"%��sr��t�����mJu@!����ѣG�����Y�=l�����OMUVV�[�5:���sr�$s�����m2u@!���T�Z]X�߳罋��n}���C���_--�������{�۱�H��#��9��9R��V�i�-\0�P�&cVVV����Ν�4��Ď��ͽ?kJb�&J֑��iV�sd����n��n(�26�s��(eGN��\\�H�&�����#��؈�#�#\'Uj;.�@�,r�p�UWe�o��o�ޑ���*��� a���?����y�;�q�رػSR:BR���2�\0$�\"7�666&\'\'�i��K/}�{�{�JJGH��v\\���Y�����l�;^u�U����w��t��Jm�e�H�En�mll��U�;���j�\Z{�JGGH��v\\���Y��ڗ���z�|����H���뿾��{�JGGH��v\\���Y��ڷ������m�JeǎYG�s����vis�t��Jm�e�H�En�;vlmm����$��mi���*��� a��Б�e�I�ڎ���0�\\a�H�2��Jm�e�H�E�0t$q�R���2�\0$�\"W:���?�R�q�\0f�+I\\�T���?\0	����$.�O��v\\���Y�\nCG��\'Uj;.�@�,r��#����*��� a��Б�e�I�ڎ���0�\\a�H�2��Jm�e�H�E�0t$q�R���2�\0$�\"W:���?�R�q�\0f�+I\\�T���?\0	����$.�O��v\\���Y�\nCGW��w�e�� a��Б��{�\'��s��������V\\���Y�\nCGנ����=6���:������0�\\a�H�\n�6;�h��[^�d��U\\���Y�\nCG�@����9_�l����𨮸�?\0	����$�����re�Fz��ټ�j2\Z�+.�@�,r��#�+���Dǎ������(����?\0	����$�<��1d��Γ6���Ȩ���?\0	����$����;��ZS�����9(���2�\0$�\"W:��F�.A�~W0$J+.�@�,r��#�+V���EB]�e�H�E�0t$q\r/m�|g�A�rRWq�\0f�+I\\�T���?\0	����$.�O��v\\���Y�\nCG��\'Uj;.�@�,r��#����*��� a��Б�e�I�ڎ���0�\\a�H�2��Jm�e�H�E�0t$q�R���2�\0$�\"W:���?�R�q�\0f�+I\\�T���?\0	����$.�O��v\\���Y�\nCG2zKKKٴONNNOOg7v�ܙ��ַ�uuu5��A0�-q�\0f�+��}�+_�hs���///��5Ƶ%.�@�,r��#�j�z�e�5G����=;w���؈�k�kK\\���Y�\nCG�g>�7��͍���O}jaa!�NAH�-q�\0f�+I,W^ye=j�p�\r�J�Z���#ɵ%.�@�,r��#�����%�\\����̌��Iz\\[�2�\0$�\"W:��������f���\\[�2�\0$�\"W:����׳���\'$ɵ%.�@�,r��#����*��� a��(gGR�V���������S�T�?��$����������_!��R^[Ƈ� a��(aGr�ȑ,eeQ���o��<q��ٳ��s�f���������$˜��(�e��\0f�+�Ru$���{��}��gΜ=c4��_x>˜�䬯��>P��Tז1d�H�E�0�ӑdQszz�˷}����F�q�W���k���b.\n�<ז�d�H�E�0�ӑ���oF�׌�㮻�~�u�(����smO���Y�\n�$ɑ#G��}��sU#������7����\Z�V�k��2�\0$�\"We�H��j�Ry�����^5򌓧~�k�{|(�Q�k�83�\0$�\"We�H���Ϟ{�1����9?#��Q�\Z7���b:\n�זqf�H�E�0�Б������m�|�޿�՞~�����wO�9]{��Cw|�/�{��3��[��_���J�����G?���у_��퇎NOO�>tX�-����0�\\a��#���:~���N�G��O�j���^:W���+�ڿ�7��x��v�����gNמy��V�=y������˛�J8N�zqrr2�����pmg���Y�\n�Ɏ;^x��N�G��_y�v���:w���?�{�������Z��s����~z��Q�}���l�͓�e�\r�G��e�H�E�0�Бl&Ɨ#��s�_��y��w�����_����O_x�G��_Ϟ���L��}���ǖj��6��� a��(CG���_c\\H��מ��㓵��ڙӧ���fb�≉���}�|�[[�Q��`x�O\\���Y�\n��fb|�1�I�⫵�\\��k�����+���͗��_������~�履\Ze�\r�G��e�H�E�0�Бl&ƍ�������O�^�|������{�{���������V��<]{���s�ǖj��6�����;w�ދRs��0�\\a��#ɞ�s?k��S��Kgk?;S���g�{tm�?�����?���ڏ���Tk/��ey��hyl�Fj�!Y[[�T*���Ԝ�\0$�\"We�HZ������x��գ�V�}h�އ��;\'�������O}�ǿ����}��Gy��\'~x����7|8z�6)�#G�����ދRs��0�\\a��#�L�?m��[�����C-,�(Cm0$6�ދRs��0�\\a��#�L�/\Z��2�C233s�ȑ�{Qj�_\0f�+�2t$���/��2�ð��^�T��j�)5�/\0	��F:�ʹ��1�(Cm0����c�E�9H�E�0�Бl�͟��2��U��J����{G���@�,r�Q��d3m��t��6n~~~qq1�^P�k;\0�e�+�2t$�is�tt���������C��СC��\\P�k;\0�e�+�2t$�f������|���0�x�;N�U����yQs|���@iY�\n��f��c��\\��z���d=jf7v���?�Q���q�СJ��h�J��\0��E�0�Бd����d:굱���k��kMv�ޝE��G��VVV<8;;�Í7��_�M��\0��E�0�Бl���AG6o{�와N��XXXX^^��؈}���D	��\0��E�0�БL\\H��\Z��zm�����o���ʯ4b��_>==��Y.��\0�0�\\a��#�L�τ�����O�;��l�/�u���9<r���W_��w����.��j�\Z�_�W)�ܭ�}�=?:sP\0H�E�0�Бlf��Ͷo���N�-�͜춝PO�y\Z�xy������jzz:��رc�(����q)h�V�_�p)(���Y�\n����X���r�9+��������~^퓹��������<��H(=�f�-�}����G��Y�\n��f6{zx������t�\'��ǧ[��v�۷9����^����pO�|1S��\'���Y�\n�ɅHv~-��y����n7\Z�l�J˦z�nyx��4�Pe��re˷j=_�l�B�}7�\0	��F:��l�T���l����>������4?��݂?�؇��Z�c���B;�͎�e�8.\0$�\"We�H6�����f۷_�J������y���G�}���t����vC�s��q a��(CG��N���o4������I�a;ynw�Ȑ�`�CG\0-��c��5��$ٱ�ǘs�\0H�E�0�БlF�\'���f�7���v���w���V�m�z���u;�=w{\"��uƊ�@�,r�Q��d3�=|�\">����+��5߿�n-w�s�S\"\r��\Z?+��#��i���� a��(CG2���{����l��_ڤ���f�5Z���O=6K,�\0	��F:��9�?���F���w��n�n����w趑�O-�����@�,r�Q��d3�}�t��6 U�_\0f�+�2t$�is�t��6 U�_\0f�+�2t$�i�{Ơ���r��0�\\a��#���|�Շϟ��1�(Cm@���\0$�\"We�H*��SO����Ǎ�FjR�� a��(CG233���z����|o�Ϧ��b:`��pm��,r�Q��������ߊ5�d�s����Ee��PZ��(CG���65���V<_{��9fg߷����[T�k;\0�e�+��t$.���#��_K�qnn&�A��$�v\0��\"W%�H���=�q�����1z������~uc��\rغ�\\�(\'�\\a��#Y]]���fuu�V;ftY��b��ʗb.`[�sm��,r�Q����ѣY�<x�_�j�cy��SS�����@�U�k;\0ec�+��u$�juaa~Ϟ�..������j����������n�>D@\0e��P*��(gG���2?��v���	&&v�|n��Y��}X�`&Jym�$,r��#��gZ���@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r��#������@�,r�1hG2�$Ϧ���T������MNNNOOg7v�ܙ��ַ�uuu5���H��	\05i�@�v$o��>}����]���W���gw���///��5 )]3��E�0�H�߹�����T��j�z�e�5��{��;wnll��5����\0%�fHHR�D�#\"6��4^������sfc�3��̛���Ƴ�ԧ>���{��b�{\0�Dj� a}�\\Δ�2�$Җ��2�����+��?�n��R�T���{�ߛ\0�$R	�ɓ6�������W8�n��Q�o~�\\rI��fff��\0��&\0(�ԂA��;��}7�c;�.ɋ��{���i3��\0��{\0$/�l����~�Z�����u����S�@@~o�䥙\r�4P��}羯m�I�P�i���Sb�{\0�M]�^���g���f�������7�\0��{\0�-�l������d��(��Ж_���NE2���/�v۞={N �$/�\0Pg�+����[�=k�_���C;��$_۬G���Й��?N`�������fgg�����L���������;\0���\r699�G�9jև�	lY2�������o��V|\0 mF�RY[[��%�5N`kVVVv���7g6ˮ�ި���6czz�رc���,�EM�H�Z���o��w���㮻��7��ٽ{���svv֥��6#�7+++���zGM��i}}��%�O�w�<q�ǵ��^��-��ܹ��EN��@AI��1??���{/җ\'j\n�@_kkkYPl�ƙ���9�%s�t�g����<z�h�\'\0�6#��Y�����5N��j������n�9�U�y�~���rf�NoW@�H�����:55{/R6h�8�n���\ZQ���;�5W�;vԷ�]jb?-\0��Y$�(hx�5N�����6_�lw~�k��:t(���H�E��7�xc�HP{��ڻk���������]�v}���N����t��jn3j�G��p�ܹ��pP �f�dM���\\ǨY��RW_]i���Y��N����R�}�y�� i�哧\Z�R��(i�`VVV�ם�zDͺ���5N�]vh|�I��Y٥���;v�~�\0���Y<�o�A�G���g{�l�B��2�����!����]��[���\0��YH333\"�vt{[��w�l�=�pǨy�W�־���������[�����Cv5��O|���l	�3�-�6��ȑ#�J������~ڎ���K/�5NH��?^�\\~��n���������[Ѷ����F}�w���`P�f�ea&K�Y朙��n�ݪ��|�I���3j\n���j���7��~��K���w5�Ι]����}}��x�ĉ�Ƴ�~�	\0�H����>G���f�)�!��j��}���		k���oy�[>����?����\'[��޾��Cc�\0�bŢ\\��y���������_]|��-Q�.��?���o{6�L���j�n�ֻ���~�K)\0�bŢ\\�;���_x�oW��h�:~g�-d93����4c�%3�9F��տ�R����7��+\Z8�);�WWW�oMMMտ�����H���g�=\0�����8{D͜�SԤ��i���h�齝��\n-[����,X~����\\ZZj|����\"�Ȯ*����M\0�B�A����E]�?p�����:&�n����������&=<��ӓ��333�Jeaa��?f����g����<m>v�x}���ӱ�>\0D�AIu��f�\\���B���l��&}��~�2d����\'���-///..v��̓�\'v߾�O����������F��`+�\Z�W{��5��@��]j[��I�^Ǵ��v�/v����m�Z]]�Ouv�x�䩰i3�^�7�e��O\0r�|Pj�s߾�v����8�����)EM���ƾ��m�Ǧ�݁P*�J}n�#`�l|����\'9�~�\0��V���8;~�fs�5ٲ<I�[��B�����6-,,�g{׮]_���?X����l�\0yi8�s��5���ɖ��ƾ�7�y)���Z�ߪm���9<�O����7����{_�\\g\0(\r\\�8�H٣�{��qQ�Pz���#F�[{��lپC�5~?b����������O\0�Հ���9��C�d��_r�uzY�ۍ�_�9����v��]?�YP��ټ���\'O5޺,����z�g\0�p��\Z4p��lM���l���>��E������\Z��;K��W��x���\ZQsrrree%����h8�\r�NQ�Pz�&m�w{xǰ:��6w�n�pؘ�,+~�[����_��:t(����3�U��)j}-//7fҮ]����X�K����5((i:�8EM ���թ����eΛn��cǏ���/�r�޽{�U�@@qI��Y��)j���8p����d��d���k�}knn��Ph�&t�8EM`k��8??�1U�ˮ3G����\0�]�&��8EM`������R;���[f�R������[��	@2�M�8�<qB�\0���M�/��JE�\0���M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0O�\0\0 <i\0\0��M\0\0\06\0\0�� lJH	\0\0\0\0IEND�B`�',0),('c3c56879a4484d58a9848a65eab725f3',1,'leave.bpmn20.xml','9f8ac51208c44024a2687beb61f1b1f3','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"com.thinkgem.jeesite.modules.oa.leave\">\n  <process id=\"leave\" name=\"请假流程\" isExecutable=\"true\">\n    <documentation>请假流程演示</documentation>\n    <startEvent id=\"startevent1\" name=\"Start\" activiti:initiator=\"applyUserId\"></startEvent>\n    <userTask id=\"deptLeaderAudit\" name=\"部门领导审批\" activiti:candidateGroups=\"oa:leave:deptLeaderAudit\"></userTask>\n    <exclusiveGateway id=\"exclusivegateway5\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <userTask id=\"modifyApply\" name=\"调整申请\" activiti:assignee=\"${applyUserId}\"></userTask>\n    <userTask id=\"hrAudit\" name=\"人事审批\" activiti:candidateGroups=\"oa:leave:hrAudit\"></userTask>\n    <exclusiveGateway id=\"exclusivegateway6\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <userTask id=\"reportBack\" name=\"销假\" activiti:assignee=\"${applyUserId}\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <exclusiveGateway id=\"exclusivegateway7\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <sequenceFlow id=\"flow2\" sourceRef=\"startevent1\" targetRef=\"deptLeaderAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"deptLeaderAudit\" targetRef=\"exclusivegateway5\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"不同意\" sourceRef=\"exclusivegateway5\" targetRef=\"modifyApply\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!deptLeaderPass}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"同意\" sourceRef=\"exclusivegateway5\" targetRef=\"hrAudit\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${deptLeaderPass}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"hrAudit\" targetRef=\"exclusivegateway6\"></sequenceFlow>\n    <sequenceFlow id=\"flow7\" name=\"同意\" sourceRef=\"exclusivegateway6\" targetRef=\"reportBack\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hrPass}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow8\" sourceRef=\"reportBack\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow9\" name=\"不同意\" sourceRef=\"exclusivegateway6\" targetRef=\"modifyApply\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!hrPass}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow10\" name=\"重新申请\" sourceRef=\"exclusivegateway7\" targetRef=\"deptLeaderAudit\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${reApply}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow11\" sourceRef=\"modifyApply\" targetRef=\"exclusivegateway7\"></sequenceFlow>\n    <sequenceFlow id=\"flow12\" name=\"结束流程\" sourceRef=\"exclusivegateway7\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!reApply}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"10.0\" y=\"90.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"deptLeaderAudit\" id=\"BPMNShape_deptLeaderAudit\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"90.0\" y=\"80.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway5\" id=\"BPMNShape_exclusivegateway5\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"250.0\" y=\"87.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"modifyApply\" id=\"BPMNShape_modifyApply\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"218.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"hrAudit\" id=\"BPMNShape_hrAudit\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"358.0\" y=\"80.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway6\" id=\"BPMNShape_exclusivegateway6\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"495.0\" y=\"87.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"reportBack\" id=\"BPMNShape_reportBack\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"590.0\" y=\"80.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"625.0\" y=\"283.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway7\" id=\"BPMNShape_exclusivegateway7\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"250.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"45.0\" y=\"107.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"90.0\" y=\"107.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"195.0\" y=\"107.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"250.0\" y=\"107.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"270.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"190.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"36.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"290.0\" y=\"107.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"358.0\" y=\"107.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"-24.0\" y=\"-17.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"463.0\" y=\"107.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"495.0\" y=\"107.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\n        <omgdi:waypoint x=\"535.0\" y=\"107.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"590.0\" y=\"107.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"-22.0\" y=\"-17.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"642.0\" y=\"135.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"642.0\" y=\"283.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"515.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"514.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"323.0\" y=\"217.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"36.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow10\" id=\"BPMNEdge_flow10\">\n        <omgdi:waypoint x=\"250.0\" y=\"300.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"299.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"135.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"48.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow11\" id=\"BPMNEdge_flow11\">\n        <omgdi:waypoint x=\"270.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"270.0\" y=\"280.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow12\" id=\"BPMNEdge_flow12\">\n        <omgdi:waypoint x=\"290.0\" y=\"300.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"625.0\" y=\"300.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"48.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','1',1),('schema.history','create(5.14)',1),('schema.version','5.14',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('oa:leave:deptLeaderAudit',1,NULL,NULL),('oa:leave:hrAudit',1,NULL,NULL);

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`) values ('1','oa:leave:deptLeaderAudit'),('2','oa:leave:deptLeaderAudit'),('9','oa:leave:deptLeaderAudit'),('1','oa:leave:hrAudit'),('2','oa:leave:hrAudit'),('9','oa:leave:hrAudit');

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('1',1,NULL,NULL,NULL,NULL,NULL),('10',1,NULL,NULL,NULL,NULL,NULL),('11',1,NULL,NULL,NULL,NULL,NULL),('12',1,NULL,NULL,NULL,NULL,NULL),('13',1,NULL,NULL,NULL,NULL,NULL),('14',1,NULL,NULL,NULL,NULL,NULL),('2',1,NULL,NULL,NULL,NULL,NULL),('3',1,NULL,NULL,NULL,NULL,NULL),('4',1,NULL,NULL,NULL,NULL,NULL),('5',1,NULL,NULL,NULL,NULL,NULL),('6',1,NULL,NULL,NULL,NULL,NULL),('7',1,NULL,NULL,NULL,NULL,NULL),('8',1,NULL,NULL,NULL,NULL,NULL),('9',1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('9f8ac51208c44024a2687beb61f1b1f3','SpringAutoDeployment',NULL,'2016-01-29 21:00:38');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`) values ('leave:1:c5ecfc9036c748669a350678aa02c99c',1,'com.thinkgem.jeesite.modules.oa.leave','请假流程','leave',1,'9f8ac51208c44024a2687beb61f1b1f3','leave.bpmn20.xml','leave.png','请假流程演示',0,1);

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `cms_article` */

DROP TABLE IF EXISTS `cms_article`;

CREATE TABLE `cms_article` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `category_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目编号',
  `title` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '标题',
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COLLATE utf8_bin COMMENT '视图配置',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`),
  KEY `cms_article_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章表';

/*Data for the table `cms_article` */

insert  into `cms_article`(`id`,`category_id`,`title`,`link`,`color`,`image`,`keywords`,`description`,`weight`,`weight_date`,`hits`,`posid`,`custom_content_view`,`view_config`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,2,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','文章标题标题标题标题',NULL,'red',NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','4','文章标题标题标题标题',NULL,'blue',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_article_data` */

DROP TABLE IF EXISTS `cms_article_data`;

CREATE TABLE `cms_article_data` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `content` text COLLATE utf8_bin COMMENT '文章内容',
  `copyfrom` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`),
  KEY `cms_article_data_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章详表';

/*Data for the table `cms_article_data` */

insert  into `cms_article_data`(`id`,`content`,`copyfrom`,`relation`,`allow_comment`) values ('1','文章内容内容内容内容','来源','1,2,3','1'),('2','文章内容内容内容内容','来源','1,2,3','1'),('3','文章内容内容内容内容','来源','1,2,3','1'),('4','文章内容内容内容内容','来源','1,2,3','1'),('5','文章内容内容内容内容','来源','1,2,3','1'),('6','文章内容内容内容内容','来源','1,2,3','1'),('7','文章内容内容内容内容','来源','1,2,3','1'),('8','文章内容内容内容内容','来源','1,2,3','1'),('9','文章内容内容内容内容','来源','1,2,3','1'),('10','文章内容内容内容内容','来源','1,2,3','1'),('11','文章内容内容内容内容','来源','1,2,3','1'),('12','文章内容内容内容内容','来源','1,2,3','1'),('13','文章内容内容内容内容','来源','1,2,3','1'),('14','文章内容内容内容内容','来源','1,2,3','1'),('15','文章内容内容内容内容','来源','1,2,3','1'),('16','文章内容内容内容内容','来源','1,2,3','1'),('17','文章内容内容内容内容','来源','1,2,3','1'),('18','文章内容内容内容内容','来源','1,2,3','1'),('19','文章内容内容内容内容','来源','1,2,3','1'),('20','文章内容内容内容内容','来源','1,2,3','1'),('21','文章内容内容内容内容','来源','1,2,3','1'),('22','文章内容内容内容内容','来源','1,2,3','1'),('23','文章内容内容内容内容','来源','1,2,3','1'),('24','文章内容内容内容内容','来源','1,2,3','1'),('25','文章内容内容内容内容','来源','1,2,3','1'),('26','文章内容内容内容内容','来源','1,2,3','1'),('27','文章内容内容内容内容','来源','1,2,3','1'),('28','文章内容内容内容内容','来源','1,2,3','1'),('29','文章内容内容内容内容','来源','1,2,3','1'),('30','文章内容内容内容内容','来源','1,2,3','1'),('31','文章内容内容内容内容','来源','1,2,3','1'),('32','文章内容内容内容内容','来源','1,2,3','1'),('33','文章内容内容内容内容','来源','1,2,3','1'),('34','文章内容内容内容内容','来源','1,2,3','1'),('35','文章内容内容内容内容','来源','1,2,3','1'),('36','文章内容内容内容内容','来源','1,2,3','1'),('37','文章内容内容内容内容','来源','1,2,3','1'),('38','文章内容内容内容内容','来源','1,2,3','1'),('39','文章内容内容内容内容','来源','1,2,3','1'),('40','文章内容内容内容内容','来源','1,2,3','1'),('41','文章内容内容内容内容','来源','1,2,3','1'),('42','文章内容内容内容内容','来源','1,2,3','1'),('43','文章内容内容内容内容','来源','1,2,3','1'),('44','文章内容内容内容内容','来源','1,2,3','1'),('45','文章内容内容内容内容','来源','1,2,3','1'),('46','文章内容内容内容内容','来源','1,2,3','1'),('47','文章内容内容内容内容','来源','1,2,3','1'),('48','文章内容内容内容内容','来源','1,2,3','1'),('49','文章内容内容内容内容','来源','1,2,3','1'),('50','文章内容内容内容内容','来源','1,2,3','1'),('51','文章内容内容内容内容','来源','1,2,3','1'),('52','文章内容内容内容内容','来源','1,2,3','1'),('53','文章内容内容内容内容','来源','1,2,3','1');

/*Table structure for table `cms_category` */

DROP TABLE IF EXISTS `cms_category`;

CREATE TABLE `cms_category` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `site_id` varchar(64) COLLATE utf8_bin DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属机构',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `module` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '栏目名称',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `target` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '目标',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义内容视图',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  `view_config` text COLLATE utf8_bin COMMENT '视图配置',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_parent_ids` (`parent_ids`(333)),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`),
  KEY `cms_category_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='栏目表';

/*Data for the table `cms_category` */

insert  into `cms_category`(`id`,`site_id`,`office_id`,`parent_id`,`parent_ids`,`module`,`name`,`image`,`href`,`target`,`description`,`keywords`,`sort`,`in_menu`,`in_list`,`show_modes`,`allow_comment`,`is_audit`,`custom_list_view`,`custom_content_view`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`view_config`) values ('1','0','1','0','0,',NULL,'顶级栏目',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('2','1','3','1','0,1,','article','组织机构',NULL,NULL,NULL,NULL,NULL,10,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('3','1','3','2','0,1,2,','article','网站简介',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('4','1','3','2','0,1,2,','article','内部机构',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('5','1','3','2','0,1,2,','article','地方机构',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('6','1','3','1','0,1,','article','质量检验',NULL,NULL,NULL,NULL,NULL,20,'1','1','1','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('7','1','3','6','0,1,6,','article','产品质量',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('8','1','3','6','0,1,6,','article','技术质量',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('9','1','3','6','0,1,6,','article','工程质量',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('10','1','4','1','0,1,','article','软件介绍',NULL,NULL,NULL,NULL,NULL,20,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('11','1','4','10','0,1,10,','article','网络工具',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('12','1','4','10','0,1,10,','article','浏览工具',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('13','1','4','10','0,1,10,','article','浏览辅助',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('14','1','4','10','0,1,10,','article','网络优化',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('15','1','4','10','0,1,10,','article','邮件处理',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('16','1','4','10','0,1,10,','article','下载工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('17','1','4','10','0,1,10,','article','搜索工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('18','1','5','1','0,1,','link','友情链接',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('19','1','5','18','0,1,18,','link','常用网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('20','1','5','18','0,1,18,','link','门户网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('21','1','5','18','0,1,18,','link','购物网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('22','1','5','18','0,1,18,','link','交友社区',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('23','1','5','18','0,1,18,','link','音乐视频',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('24','1','6','1','0,1,',NULL,'百度一下',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('25','1','6','1','0,1,',NULL,'全文检索',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('26','2','6','1','0,1,','article','测试栏目',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('27','1','6','1','0,1,',NULL,'公共留言',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL);

/*Table structure for table `cms_comment` */

DROP TABLE IF EXISTS `cms_comment`;

CREATE TABLE `cms_comment` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `category_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`),
  KEY `cms_comment_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='评论表';

/*Data for the table `cms_comment` */

/*Table structure for table `cms_guestbook` */

DROP TABLE IF EXISTS `cms_guestbook`;

CREATE TABLE `cms_guestbook` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) COLLATE utf8_bin NOT NULL COMMENT '留言分类',
  `content` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '留言内容',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `email` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  `phone` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '电话',
  `workunit` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单位',
  `ip` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`),
  KEY `cms_site_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='留言板';

/*Data for the table `cms_guestbook` */

/*Table structure for table `cms_link` */

DROP TABLE IF EXISTS `cms_link`;

CREATE TABLE `cms_link` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `category_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目编号',
  `title` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '链接名称',
  `color` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`),
  KEY `cms_link_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='友情链接';

/*Data for the table `cms_link` */

insert  into `cms_link`(`id`,`category_id`,`title`,`color`,`image`,`href`,`weight`,`weight_date`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','19','百度一下',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','谷歌搜索',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','新浪网',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','腾讯网',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','淘宝网',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','新华网',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','赶集网',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','22','58同城',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','视频大全',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','凤凰网',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_site` */

DROP TABLE IF EXISTS `cms_site`;

CREATE TABLE `cms_site` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '站点名称',
  `title` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '站点标题',
  `logo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) COLLATE utf8_bin DEFAULT 'default' COMMENT '主题',
  `copyright` text COLLATE utf8_bin COMMENT '版权信息',
  `custom_index_view` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`),
  KEY `cms_site_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='站点表';

/*Data for the table `cms_site` */

insert  into `cms_site`(`id`,`name`,`title`,`logo`,`domain`,`description`,`keywords`,`theme`,`copyright`,`custom_index_view`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','默认站点','JeeSite Web',NULL,NULL,'JeeSite','JeeSite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','计算机网络','计算机网络','',NULL,'计算机网络','计算机网络','basic','<p>\r\n	Copyright &copy; 2015-2015 <a href=\"http://thinkgem.iteye.com\" target=\"_blank\">ThinkGem</a> - Powered By <a href=\"https://github.com/thinkgem/jeesite\" target=\"_blank\">JeeSite</a> V1.0</p>','','1','2013-05-27 08:00:00','1','2016-01-30 12:38:50',NULL,'0'),('1ae6535a09a242dfbe95d35253b7f689','计算机网络','计算机网络','',NULL,'计算机网络','计算机网络','basic','','','1','2016-01-30 12:36:58','1','2016-01-30 12:36:58',NULL,'1');

/*Table structure for table `oa_leave` */

DROP TABLE IF EXISTS `oa_leave`;

CREATE TABLE `oa_leave` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `process_instance_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '流程实例编号',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `leave_type` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '请假类型',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假理由',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `reality_start_time` datetime DEFAULT NULL COMMENT '实际开始时间',
  `reality_end_time` datetime DEFAULT NULL COMMENT '实际结束时间',
  `process_status` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '流程状态',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`),
  KEY `oa_leave_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='请假流程表';

/*Data for the table `oa_leave` */

/*Table structure for table `sys_area` */

DROP TABLE IF EXISTS `sys_area`;

CREATE TABLE `sys_area` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '区域名称',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_parent_ids` (`parent_ids`(333)),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='区域表';

/*Data for the table `sys_area` */

insert  into `sys_area`(`id`,`parent_id`,`parent_ids`,`code`,`name`,`type`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','100000','中国','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','110000','北京市','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','110101','东城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','2','0,1,2,','110102','西城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','2','0,1,2,','110103','朝阳区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','2','0,1,2,','110104','丰台区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','2','0,1,2,','110105','海淀区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','1','0,1,','370000','山东省','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','8','0,1,2,','370531','济南市','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','8','0,1,2,','370532','历城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','8','0,1,2,','370533','历城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','8','0,1,2,','370534','历下区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','8','0,1,2,','370535','天桥区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','8','0,1,2,','370536','槐荫区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `label` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '标签名',
  `value` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '数据值',
  `type` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '描述',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`label`,`value`,`type`,`description`,`sort`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','正常','0','del_flag','删除标记',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','删除','1','del_flag','删除标记',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','显示','1','show_hide','显示/隐藏',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','隐藏','0','show_hide','显示/隐藏',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','是','1','yes_no','是/否',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','否','0','yes_no','是/否',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','红色','red','color','颜色值',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','绿色','green','color','颜色值',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','蓝色','blue','color','颜色值',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','黄色','yellow','color','颜色值',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','橙色','orange','color','颜色值',50,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','默认主题','default','theme','主题方案',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','天蓝主题','cerulean','theme','主题方案',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','橙色主题','readable','theme','主题方案',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','红色主题','united','theme','主题方案',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','Flat主题','flat','theme','主题方案',60,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','国家','1','sys_area_type','区域类型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','省份、直辖市','2','sys_area_type','区域类型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','地市','3','sys_area_type','区域类型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','区县','4','sys_area_type','区域类型',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','公司','1','sys_office_type','机构类型',60,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','部门','2','sys_office_type','机构类型',70,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','一级','1','sys_office_grade','机构等级',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','二级','2','sys_office_grade','机构等级',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','三级','3','sys_office_grade','机构等级',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','四级','4','sys_office_grade','机构等级',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','所有数据','1','sys_data_scope','数据范围',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','所在公司及以下数据','2','sys_data_scope','数据范围',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','所在公司数据','3','sys_data_scope','数据范围',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','所在部门及以下数据','4','sys_data_scope','数据范围',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','所在部门数据','5','sys_data_scope','数据范围',50,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','仅本人数据','8','sys_data_scope','数据范围',90,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','按明细设置','9','sys_data_scope','数据范围',100,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','系统管理','1','sys_user_type','用户类型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','部门经理','2','sys_user_type','用户类型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','普通用户','3','sys_user_type','用户类型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','基础主题','basic','cms_theme','站点主题',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','蓝色主题','blue','cms_theme','站点主题',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('39','红色主题','red','cms_theme','站点主题',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('40','文章模型','article','cms_module','栏目模型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','图片模型','picture','cms_module','栏目模型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('42','下载模型','download','cms_module','栏目模型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('43','链接模型','link','cms_module','栏目模型',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','专题模型','special','cms_module','栏目模型',50,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','默认展现方式','0','cms_show_modes','展现方式',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','首栏目内容列表','1','cms_show_modes','展现方式',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','栏目第一条内容','2','cms_show_modes','展现方式',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','发布','0','cms_del_flag','内容状态',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','删除','1','cms_del_flag','内容状态',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','审核','2','cms_del_flag','内容状态',15,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','首页焦点图','1','cms_posid','推荐位',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','栏目页文章推荐','2','cms_posid','推荐位',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','咨询','1','cms_guestbook','留言板分类',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','建议','2','cms_guestbook','留言板分类',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','投诉','3','cms_guestbook','留言板分类',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','其它','4','cms_guestbook','留言板分类',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','公休','1','oa_leave_type','请假类型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','病假','2','oa_leave_type','请假类型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','事假','3','oa_leave_type','请假类型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','调休','4','oa_leave_type','请假类型',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','婚假','5','oa_leave_type','请假类型',60,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','接入日志','1','sys_log_type','日志类型',30,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('63','异常日志','2','sys_log_type','日志类型',40,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('64','单表增删改查','single','prj_template_type','代码模板',10,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('65','所有entity和dao','entityAndDao','prj_template_type','代码模板',20,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '日志类型',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '操作方式',
  `params` text COLLATE utf8_bin COMMENT '操作提交的数据',
  `exception` text COLLATE utf8_bin COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志表';

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`type`,`create_by`,`create_date`,`remote_addr`,`user_agent`,`request_uri`,`method`,`params`,`exception`) values ('bb93d723870441548109bf2c3776e8d8','1','1','2016-01-29 21:39:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=79&isActiviti=0&icon=&sort=30&parent.id=78&name=查看&target=&permission=prj:project:view&href=&parent.name=项目管理&isShow=1',''),('8bdc09e33cc3421e84219bdfc28b65de','1','1','2016-01-29 21:47:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/delete','GET','id=76',''),('571d1d1c836f4ac4aef1f4bd80e90bd8','1','1','2016-01-29 21:48:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/updateSort','POST','sorts=100&ids=27',''),('78b61243d6274965921b4b2fb0e6343f','2','1','2016-01-29 21:50:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/user/modifyPwd','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('de92460cee1d41e4814a536437c12400','2','1','2016-01-29 21:50:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/user/modifyPwd','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('1e8d2a0de6a14af98e3f37d2419b5edd','2','1','2016-01-29 21:50:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/user/modifyPwd','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('7d1e007053a24957ba79f408a861277f','2','1','2016-01-29 21:50:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/user/modifyPwd','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('d99abc99ef12497a95251d7808d4e343','1','1','2016-01-29 21:58:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=&isActiviti=1&icon=hdd&sort=30&parent.id=67&name=数据库管理&target=&permission=&href=&parent.name=日志查询&isShow=1',''),('552cc89a37934856af87c85a59d2de0d','1','1','2016-01-29 22:02:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=68&isActiviti=0&icon=pencil&sort=30&parent.id=67&name=日志查询&target=&permission=sys:log:view&href=/druid/*&parent.name=日志查询&isShow=1',''),('f594199ecaa341e596e46ee61b04628f','1','1','2016-01-29 22:03:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=68&isActiviti=0&icon=pencil&sort=30&parent.id=67&name=日志查询&target=&permission=sys:log:view&href=sys/log&parent.name=日志查询&isShow=1',''),('c6f7c69d4efa4495b30ae60a380b4258','1','1','2016-01-29 22:04:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=68&isActiviti=0&icon=pencil&sort=30&parent.id=67&name=日志查询&target=&permission=sys:log:view&href=/sys/log&parent.name=日志查询&isShow=1',''),('0d6670afc8e247e485249fa53c980786','1','1','2016-01-29 22:04:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=3f8d7380c8ee4ce988cca482abfb449d&isActiviti=1&icon=hdd&sort=30&parent.id=67&name=数据库管理&target=&permission=&href=/druid/*&parent.name=日志查询&isShow=1',''),('275c92957b014d7b925209964b65af43','2','1','2016-01-29 22:05:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=19','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('7112b8fca3bc4fc18c64f47f565976f8','2','1','2016-01-29 22:05:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=23','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('f0a4964ede1a44e0bc4f4eb8153c4901','2','1','2016-01-29 22:06:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=21','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('f626940e547a476bb947474ffca82fb8','2','1','2016-01-29 22:06:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=22','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('1959450764ea478dbafd21a36185fa07','2','1','2016-01-29 22:06:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=22','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('666910d5081f4fa296a3c7f4a16db6a2','2','1','2016-01-29 22:06:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=20','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('22dd99c1792d4c468155f27309e7bdea','2','1','2016-01-29 22:06:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=18','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('590ecc858f09458e961c4ecdabf69a64','2','1','2016-01-29 22:06:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/link/','GET','category.id=18','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('167fc60aaf3f4671a7b572fd8f214c53','2','1','2016-01-29 22:06:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/category/','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('be3d75c332bf4e70ac7440f2d185af3c','2','1','2016-01-29 22:06:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('e9bb3a7a885c434785f511dc16b4e196','2','1','2016-01-29 22:06:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/select','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('0fa0b2e6003d4ebea8f6ec875fa66548','2','1','2016-01-29 22:06:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/category/','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('17778dfe10f246d5bb4e49ef5590c960','2','1','2016-01-29 22:06:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('e05bf906d6914887a53fa755ae34c179','2','1','2016-01-29 22:06:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/template','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('14e8d63b959349628a987c384a1a97ff','2','1','2016-01-29 22:07:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/template','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('c3ee0afdd6fe41229d64a386220894da','2','1','2016-01-29 22:07:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/category/','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('6dd9f8778d294c28b5c8209f84d96c9c','2','1','2016-01-29 22:07:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('98a20f66a06945959b2668074e8c5aea','2','1','2016-01-29 22:07:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/select','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('5f30852442674b0fabe141952f4d16ec','2','1','2016-01-29 22:07:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/template','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('abb3dfe159534ff08706a8dbba777082','2','1','2016-01-29 22:08:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/select','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('fd695223c24f4551a63fda5ab6a78d82','2','1','2016-01-29 22:08:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/category/','GET','','org.apache.jasper.JasperException: PWC6345: There is an error in invoking javac.  A full JDK (not just JRE) is required'),('b68758d6d11443ad9ef648a2444ee27c','2','1','2016-01-29 22:08:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/category/','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('e27def26fab04512ade47ef6c7fa6220','2','1','2016-01-29 22:08:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('6a386eb6ffb84091834d11dace59571d','2','1','2016-01-29 22:08:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/template','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('e0b3879d16914e4d9ffd3ee61701a9ea','2','1','2016-01-29 22:09:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('ebeda8d953be4e5a9eca1f0ae6e1ae52','2','1','2016-01-29 22:10:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/user/','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('6666c9d78d294e769cd33d296a6d233a','2','1','2016-01-29 22:10:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a','GET','','org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.OutOfMemoryError: PermGen space'),('ad28c453cf7845648bb9fef959902d9a','1','1','2016-01-30 12:25:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=3f8d7380c8ee4ce988cca482abfb449d&isActiviti=1&icon=hdd&sort=30&parent.id=67&name=数据库管理&target=&permission=&href=/druid/1&parent.name=日志查询&isShow=1',''),('c28bd16785c448b68fab29570397bb0e','1','1','2016-01-30 12:28:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=&isActiviti=1&icon=&sort=30&parent.id=2&name=个人信息&target=&permission=&href=&parent.name=系统设置&isShow=1',''),('d9510993c77b4c62a0f9a74c67bd4e2f','1','1','2016-01-30 12:30:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=&isActiviti=0&icon=user&sort=30&parent.id=cbfb48ece6ae49848d110622206fdade&name=个人信息&target=&permission=&href=/sys/user/info&parent.name=个人信息&isShow=1',''),('8aa6a5e081054b649dc2794d66a1efc0','1','1','2016-01-30 12:31:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/save','POST','id=&isActiviti=0&icon=lock&sort=30&parent.id=cbfb48ece6ae49848d110622206fdade&name=修改密码&target=&permission=&href=/sys/user/modifyPwd&parent.name=个人信息&isShow=1',''),('11aaaeb8e4f14456a79e104758b35dac','1','1','2016-01-30 12:32:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/delete','GET','id=27',''),('a8f5293f237d4902a01637434dcb090e','1','1','2016-01-30 12:33:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/sys/menu/updateSort','POST','sorts=200&ids=62',''),('a3d8e9e3e3c64d3881016c102b657102','1','1','2016-01-30 12:36:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/save','POST','id=&logo=&title=计算机网络&keywords=计算机网络&description=计算机网络&customIndexView=&name=计算机网络&theme=basic&copyright=',''),('4a93eb159bb64925bbd3b3f4f0188285','2','1','2016-01-30 12:38:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/f/index-1ae6535a09a242dfbe95d35253b7f689.html','GET','','java.lang.IndexOutOfBoundsException: Index: 0, Size: 0'),('353aa82e89954ac5b7c9a62c10f34147','1','1','2016-01-30 12:38:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/delete','GET','id=1ae6535a09a242dfbe95d35253b7f689',''),('fe8ad192e8bb4472a7cebc4c87439b6e','1','1','2016-01-30 12:38:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36','/a/cms/site/save','POST','id=2&logo=&title=计算机网络&keywords=计算机网络&description=计算机网络&customIndexView=&name=计算机网络&theme=basic&copyright=\r\n	Copyright © 2015-2015 ThinkGem - Powered By JeeSite V1.0\r\n','');

/*Table structure for table `sys_mdict` */

DROP TABLE IF EXISTS `sys_mdict`;

CREATE TABLE `sys_mdict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_parent_ids` (`parent_ids`(333)),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多级字典表';

/*Data for the table `sys_mdict` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `href` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `target` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图标',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `is_show` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否在菜单中显示',
  `is_activiti` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否同步工作流',
  `permission` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_parent_ids` (`parent_ids`(333)),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`parent_id`,`parent_ids`,`name`,`href`,`target`,`icon`,`sort`,`is_show`,`is_activiti`,`permission`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','顶级菜单',NULL,NULL,NULL,0,'1','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','系统设置',NULL,NULL,NULL,100,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('3','2','0,1,2,','系统设置',NULL,NULL,NULL,980,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('4','3','0,1,2,3,','菜单管理','/sys/menu/',NULL,'list-alt',30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('5','4','0,1,2,3,4,','查看',NULL,NULL,NULL,30,'0','0','sys:menu:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('6','4','0,1,2,3,4,','修改',NULL,NULL,NULL,30,'0','0','sys:menu:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('7','3','0,1,2,3,','角色管理','/sys/role/',NULL,'lock',50,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('8','7','0,1,2,3,7,','查看',NULL,NULL,NULL,30,'0','0','sys:role:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('9','7','0,1,2,3,7,','修改',NULL,NULL,NULL,30,'0','0','sys:role:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('10','3','0,1,2,3,','字典管理','/sys/dict/',NULL,'th-list',60,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('11','10','0,1,2,3,10,','查看',NULL,NULL,NULL,30,'0','0','sys:dict:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('12','10','0,1,2,3,10,','修改',NULL,NULL,NULL,30,'0','0','sys:dict:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('13','2','0,1,2,','机构用户',NULL,NULL,NULL,970,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('14','13','0,1,2,13,','区域管理','/sys/area/',NULL,'th',50,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('15','14','0,1,2,13,14,','查看',NULL,NULL,NULL,30,'0','0','sys:area:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('16','14','0,1,2,13,14,','修改',NULL,NULL,NULL,30,'0','0','sys:area:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('17','13','0,1,2,13,','机构管理','/sys/office/',NULL,'th-large',40,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('18','17','0,1,2,13,17,','查看',NULL,NULL,NULL,30,'0','0','sys:office:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('19','17','0,1,2,13,17,','修改',NULL,NULL,NULL,30,'0','0','sys:office:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('20','13','0,1,2,13,','用户管理','/sys/user/',NULL,'user',30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('21','20','0,1,2,13,20,','查看',NULL,NULL,NULL,30,'0','0','sys:user:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('22','20','0,1,2,13,20,','修改',NULL,NULL,NULL,30,'0','0','sys:user:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('23','2','0,1,2,','关于帮助',NULL,NULL,NULL,990,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('24','23','0,1,2,23,','项目首页','http://jeesite.com','_blank',NULL,30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('25','23','0,1,2,23,','项目支持','http://jeesite.com/donation.html','_blank',NULL,50,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('26','23','0,1,2,23,','论坛交流','http://bbs.jeesite.com','_blank',NULL,80,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('27','1','0,1,','我的面板',NULL,NULL,NULL,100,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-29 21:48:23',NULL,'1'),('28','27','0,1,27,','个人信息',NULL,NULL,NULL,990,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-29 21:48:23',NULL,'1'),('29','28','0,1,27,28,','个人信息','/sys/user/info',NULL,'user',30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-29 21:48:23',NULL,'1'),('30','28','0,1,27,28,','修改密码','/sys/user/modifyPwd',NULL,'lock',40,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-29 21:48:23',NULL,'1'),('31','1','0,1,','内容管理',NULL,NULL,NULL,300,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('32','31','0,1,31,','栏目设置',NULL,NULL,NULL,990,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('33','32','0,1,31,32,','栏目管理','/cms/category/',NULL,'align-justify',30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('34','33','0,1,31,32,33,','查看',NULL,NULL,NULL,30,'0','0','cms:category:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('35','33','0,1,31,32,33,','修改',NULL,NULL,NULL,30,'0','0','cms:category:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('36','32','0,1,31,32,','站点设置','/cms/site/',NULL,'certificate',40,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('37','36','0,1,31,32,36,','查看',NULL,NULL,NULL,30,'0','0','cms:site:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('38','36','0,1,31,32,36,','修改',NULL,NULL,NULL,30,'0','0','cms:site:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('39','32','0,1,31,32,','切换站点','/cms/site/select',NULL,'retweet',50,'1','0','cms:site:select','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('40','31','0,1,31,','内容管理',NULL,NULL,NULL,500,'1','0','cms:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('41','40','0,1,31,40,','内容发布','/cms/',NULL,'briefcase',30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('42','41','0,1,31,40,41,','文章模型','/cms/article/',NULL,'file',40,'0','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('43','42','0,1,31,40,41,42,','查看',NULL,NULL,NULL,30,'0','0','cms:article:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('44','42','0,1,31,40,41,42,','修改',NULL,NULL,NULL,30,'0','0','cms:article:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('45','42','0,1,31,40,41,42,','审核',NULL,NULL,NULL,30,'0','0','cms:article:audit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('46','41','0,1,31,40,41,','链接模型','/cms/link/',NULL,'random',60,'0','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('47','46','0,1,31,40,41,46,','查看',NULL,NULL,NULL,30,'0','0','cms:link:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('48','46','0,1,31,40,41,46,','修改',NULL,NULL,NULL,30,'0','0','cms:link:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('49','46','0,1,31,40,41,46,','审核',NULL,NULL,NULL,30,'0','0','cms:link:audit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('50','40','0,1,31,40,','评论管理','/cms/comment/?status=2',NULL,'comment',40,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('51','50','0,1,31,40,50,','查看',NULL,NULL,NULL,30,'0','0','cms:comment:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('52','50','0,1,31,40,50,','审核',NULL,NULL,NULL,30,'0','0','cms:comment:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('53','40','0,1,31,40,','公共留言','/cms/guestbook/?status=2',NULL,'glass',80,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('54','53','0,1,31,40,53,','查看',NULL,NULL,NULL,30,'0','0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('55','53','0,1,31,40,53,','审核',NULL,NULL,NULL,30,'0','0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('56','40','0,1,31,40,','文件管理','/../static/ckfinder/ckfinder.html',NULL,'folder-open',90,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('57','56','0,1,31,40,56,','查看',NULL,NULL,NULL,30,'0','0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('58','56','0,1,31,40,56,','上传',NULL,NULL,NULL,30,'0','0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('59','56','0,1,31,40,56,','修改',NULL,NULL,NULL,30,'0','0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('60','31','0,1,31,','统计分析',NULL,NULL,NULL,600,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('61','60','0,1,31,60,','信息量统计','/cms/stats/article',NULL,'tasks',30,'1','0','cms:stats:article','1','2013-05-27 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('62','1','0,1,','在线办公',NULL,NULL,NULL,200,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('63','62','0,1,62,','个人办公',NULL,NULL,NULL,30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('64','63','0,1,62,63,','请假办理','/oa/leave',NULL,'leaf',30,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('65','64','0,1,62,63,64,','查看',NULL,NULL,NULL,30,'0','0','oa:leave:view','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('66','64','0,1,62,63,64,','修改',NULL,NULL,NULL,40,'0','0','oa:leave:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('67','2','0,1,2,','日志查询',NULL,NULL,NULL,985,'1','0',NULL,'1','2013-06-03 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('68','67','0,1,2,67,','日志查询','/sys/log','','pencil',30,'1','0','sys:log:view','1','2013-06-03 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('69','2','0,1,2,','流程管理',NULL,NULL,NULL,983,'1','0',NULL,'1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('70','69','0,1,2,69,','流程管理','/sys/workflow/processList',NULL,'road',300,'1','0','sys:workflow:edit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:07',NULL,'0'),('71','64','0,1,62,63,64,','部门领导审批',NULL,NULL,NULL,50,'0','1','oa:leave:deptLeaderAudit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('72','64','0,1,62,63,64,','人事审批',NULL,NULL,NULL,60,'0','1','oa:leave:hrAudit','1','2013-05-27 08:00:00','1','2016-01-30 12:33:05',NULL,'0'),('73','32','0,1,31,32,','模板管理','/cms/template',NULL,'pencil',40,'1','0',NULL,'1','2013-12-12 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('74','73','0,1,31,32,73,','查看',NULL,NULL,NULL,30,'0','0','cms:template:view','1','2013-12-12 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('75','73','0,1,31,32,73,','修改',NULL,NULL,NULL,30,'0','0','cms:template:edit','1','2013-12-12 08:00:00','1','2016-01-30 12:33:06',NULL,'0'),('76','1','0,1,','项目管理',NULL,NULL,NULL,1000,'1','0',NULL,'1','2013-12-12 08:00:00','1','2013-12-12 08:00:00',NULL,'1'),('77','76','0,1,76,','项目数据',NULL,NULL,NULL,30,'1','0',NULL,'1','2013-12-12 08:00:00','1','2013-12-12 08:00:00',NULL,'1'),('78','77','0,1,76,77,','项目管理','/prj/project/',NULL,'globe',30,'1','0',NULL,'1','2013-12-12 08:00:00','1','2013-12-12 08:00:00',NULL,'1'),('79','78','0,1,76,77,78,','查看','','','',30,'1','0','prj:project:view','1','2013-12-12 08:00:00','1','2016-01-29 21:39:37',NULL,'1'),('80','78','0,1,76,77,78,','修改',NULL,NULL,NULL,40,'0','0','prj:project:edit','1','2013-12-12 08:00:00','1','2013-12-12 08:00:00',NULL,'1'),('3f8d7380c8ee4ce988cca482abfb449d','67','0,1,2,67,','数据库管理','/druid/1','','hdd',30,'1','1','','1','2016-01-29 21:58:57','1','2016-01-30 12:33:07',NULL,'0'),('cbfb48ece6ae49848d110622206fdade','2','0,1,2,','个人信息','','','',30,'1','1','','1','2016-01-30 12:28:39','1','2016-01-30 12:33:06',NULL,'0'),('7952cd9176e3470d8dee779b2f4eb8eb','cbfb48ece6ae49848d110622206fdade','0,1,2,cbfb48ece6ae49848d110622206fdade,','个人信息','/sys/user/info','','user',30,'1','0','','1','2016-01-30 12:30:32','1','2016-01-30 12:33:06',NULL,'0'),('14f846ffed104d71874bb6636dbd5a4a','cbfb48ece6ae49848d110622206fdade','0,1,2,cbfb48ece6ae49848d110622206fdade,','修改密码','/sys/user/modifyPwd','','lock',30,'1','0','','1','2016-01-30 12:31:38','1','2016-01-30 12:33:06',NULL,'0');

/*Table structure for table `sys_office` */

DROP TABLE IF EXISTS `sys_office`;

CREATE TABLE `sys_office` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `area_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属区域',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '机构名称',
  `type` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构类型',
  `grade` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构等级',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_parent_ids` (`parent_ids`(333)),
  KEY `sys_office_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机构表';

/*Data for the table `sys_office` */

insert  into `sys_office`(`id`,`parent_id`,`parent_ids`,`area_id`,`code`,`name`,`type`,`grade`,`address`,`zip_code`,`master`,`phone`,`fax`,`email`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','2','100000','北京市总公司','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','2','100001','公司领导','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','0,1,','2','100002','人力部','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','0,1,','2','100003','市场部','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','0,1,','2','100004','技术部','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','2','100005','研发部','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','1','0,1,','8','200000','山东省分公司','1','2',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','0,1,7,','8','200001','公司领导','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','0,1,7,','8','200002','综合部','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','7','0,1,7,','8','200003','市场部','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','7','0,1,7,','8','200004','技术部','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','7','0,1,7,','9','201000','济南市分公司','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','12','0,1,7,12,','9','201001','公司领导','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','12','0,1,7,12,','9','201002','综合部','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','12','0,1,7,12,','9','201003','市场部','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','12','0,1,7,12,','9','201004','技术部','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','12','0,1,7,12,','11','201010','济南市历城区分公司','1','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,7,12,17,','11','201011','公司领导','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,7,12,17,','11','201012','综合部','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','17','0,1,7,12,17,','11','201013','市场部','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','17','0,1,7,12,17,','11','201014','技术部','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','12','0,1,7,12,','12','201020','济南市历下区分公司','1','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','22','0,1,7,12,22,','12','201021','公司领导','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','22','0,1,7,12,22,','12','201022','综合部','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','22','0,1,7,12,22,','12','201023','市场部','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','22','0,1,7,12,22,','12','201024','技术部','2','4',NULL,NULL,NULL,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `data_scope` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '数据范围',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`office_id`,`name`,`data_scope`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','1','系统管理员','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','公司管理员','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','本公司管理员','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','部门管理员','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','本部门管理员','5','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','普通用户','8','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','山东省管理员','9','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-菜单';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values ('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),('1','19'),('1','2'),('1','20'),('1','21'),('1','22'),('1','23'),('1','24'),('1','25'),('1','26'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','31'),('1','32'),('1','33'),('1','34'),('1','35'),('1','36'),('1','37'),('1','38'),('1','39'),('1','4'),('1','40'),('1','41'),('1','42'),('1','43'),('1','44'),('1','45'),('1','46'),('1','47'),('1','48'),('1','49'),('1','5'),('1','50'),('1','51'),('1','52'),('1','53'),('1','54'),('1','55'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','60'),('1','61'),('1','62'),('1','63'),('1','64'),('1','65'),('1','66'),('1','67'),('1','68'),('1','69'),('1','7'),('1','70'),('1','71'),('1','72'),('1','8'),('1','9'),('2','1'),('2','10'),('2','11'),('2','12'),('2','13'),('2','14'),('2','15'),('2','16'),('2','17'),('2','18'),('2','19'),('2','2'),('2','20'),('2','21'),('2','22'),('2','23'),('2','24'),('2','25'),('2','26'),('2','27'),('2','28'),('2','29'),('2','3'),('2','30'),('2','31'),('2','32'),('2','33'),('2','34'),('2','35'),('2','36'),('2','37'),('2','38'),('2','39'),('2','4'),('2','40'),('2','41'),('2','42'),('2','43'),('2','44'),('2','45'),('2','46'),('2','47'),('2','48'),('2','49'),('2','5'),('2','50'),('2','51'),('2','52'),('2','53'),('2','54'),('2','55'),('2','56'),('2','57'),('2','58'),('2','59'),('2','6'),('2','60'),('2','61'),('2','62'),('2','63'),('2','64'),('2','65'),('2','66'),('2','67'),('2','68'),('2','69'),('2','7'),('2','70'),('2','8'),('2','9'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','25'),('3','26'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','8'),('3','9'),('4','1'),('4','10'),('4','11'),('4','12'),('4','13'),('4','14'),('4','15'),('4','16'),('4','17'),('4','18'),('4','19'),('4','2'),('4','20'),('4','21'),('4','22'),('4','23'),('4','24'),('4','25'),('4','26'),('4','27'),('4','28'),('4','29'),('4','3'),('4','30'),('4','31'),('4','32'),('4','33'),('4','34'),('4','35'),('4','36'),('4','37'),('4','38'),('4','39'),('4','4'),('4','40'),('4','41'),('4','42'),('4','43'),('4','44'),('4','45'),('4','46'),('4','47'),('4','48'),('4','49'),('4','5'),('4','50'),('4','51'),('4','52'),('4','53'),('4','54'),('4','55'),('4','56'),('4','57'),('4','58'),('4','59'),('4','6'),('4','60'),('4','61'),('4','62'),('4','63'),('4','64'),('4','65'),('4','66'),('4','67'),('4','68'),('4','69'),('4','7'),('4','70'),('4','8'),('4','9'),('5','1'),('5','10'),('5','11'),('5','12'),('5','13'),('5','14'),('5','15'),('5','16'),('5','17'),('5','18'),('5','19'),('5','2'),('5','20'),('5','21'),('5','22'),('5','23'),('5','24'),('5','25'),('5','26'),('5','27'),('5','28'),('5','29'),('5','3'),('5','30'),('5','31'),('5','32'),('5','33'),('5','34'),('5','35'),('5','36'),('5','37'),('5','38'),('5','39'),('5','4'),('5','40'),('5','41'),('5','42'),('5','43'),('5','44'),('5','45'),('5','46'),('5','47'),('5','48'),('5','49'),('5','5'),('5','50'),('5','51'),('5','52'),('5','53'),('5','54'),('5','55'),('5','56'),('5','57'),('5','58'),('5','59'),('5','6'),('5','60'),('5','61'),('5','62'),('5','63'),('5','64'),('5','65'),('5','66'),('5','67'),('5','68'),('5','69'),('5','7'),('5','70'),('5','8'),('5','9'),('6','1'),('6','10'),('6','11'),('6','12'),('6','13'),('6','14'),('6','15'),('6','16'),('6','17'),('6','18'),('6','19'),('6','2'),('6','20'),('6','21'),('6','22'),('6','23'),('6','24'),('6','25'),('6','26'),('6','27'),('6','28'),('6','29'),('6','3'),('6','30'),('6','31'),('6','32'),('6','33'),('6','34'),('6','35'),('6','36'),('6','37'),('6','38'),('6','39'),('6','4'),('6','40'),('6','41'),('6','42'),('6','43'),('6','44'),('6','45'),('6','46'),('6','47'),('6','48'),('6','49'),('6','5'),('6','50'),('6','51'),('6','52'),('6','53'),('6','54'),('6','55'),('6','56'),('6','57'),('6','58'),('6','59'),('6','6'),('6','60'),('6','61'),('6','62'),('6','63'),('6','64'),('6','65'),('6','66'),('6','67'),('6','68'),('6','69'),('6','7'),('6','70'),('6','8'),('6','9'),('7','1'),('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','2'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','27'),('7','28'),('7','29'),('7','3'),('7','30'),('7','31'),('7','32'),('7','33'),('7','34'),('7','35'),('7','36'),('7','37'),('7','38'),('7','39'),('7','4'),('7','40'),('7','41'),('7','42'),('7','43'),('7','44'),('7','45'),('7','46'),('7','47'),('7','48'),('7','49'),('7','5'),('7','50'),('7','51'),('7','52'),('7','53'),('7','54'),('7','55'),('7','56'),('7','57'),('7','58'),('7','59'),('7','6'),('7','60'),('7','61'),('7','62'),('7','63'),('7','64'),('7','65'),('7','66'),('7','67'),('7','68'),('7','69'),('7','7'),('7','70'),('7','8'),('7','9');

/*Table structure for table `sys_role_office` */

DROP TABLE IF EXISTS `sys_role_office`;

CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-机构';

/*Data for the table `sys_role_office` */

insert  into `sys_role_office`(`role_id`,`office_id`) values ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `company_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '登录名',
  `password` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '手机',
  `user_type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户类型',
  `login_ip` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`company_id`,`office_id`,`login_name`,`password`,`no`,`name`,`email`,`phone`,`mobile`,`user_type`,`login_ip`,`login_date`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','1','1','thinkgem','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0001','Thinkgem','thinkgem@163.com','8675','8675',NULL,'0:0:0:0:0:0:0:1','2016-01-30 12:44:35','1','2013-05-27 08:00:00','1','2016-01-29 21:38:57','最高管理员','0'),('2','1','1','admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','管理员','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','管理员','0'),('3','1','3','bj_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','综合部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','综合部','0'),('4','1','4','bj_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','市场部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','市场部','0'),('5','1','5','bj_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','技术部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','技术部','0'),('6','1','6','bj_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','研发部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','研发部','0'),('7','7','8','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','山分领导','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','山东省分公司领导','0'),('8','7','9','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','山分综合部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','山东省分公司综合部','0'),('9','7','10','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','山分市场部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','山东省分公司市场部','0'),('10','7','11','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','山东省分公司技术部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','山东省分公司技术部','0'),('11','12','13','sdjn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','济分公司领导','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','济南分公司领导','0'),('12','12','18','sdjnlc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','济分历城领导','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','济南市历城区分公司领导','0'),('13','22','23','sdjnlx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','济分历下领导','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','济南市历下区分公司领导','0'),('14','22','24','sdjnlx_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0014','济分历下综合部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','济南市历下区分公司综合部','0');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户-角色';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values ('1','1'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('2','1'),('3','2'),('4','3'),('5','4'),('6','5'),('7','2'),('7','7'),('8','2'),('9','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
