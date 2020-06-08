-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 04:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart`
--

CREATE TABLE `chart` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Message` text NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Time` time DEFAULT NULL,
  `Group_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chart`
--

INSERT INTO `chart` (`id`, `Userid`, `Name`, `Message`, `Date`, `Time`, `Group_Name`) VALUES
(1, '1234554321', 'Patrick', 'What do you think about javascrpt and php after seeing this demo?', '31/05/20', '14:58:00', ''),
(2, '1234554321', 'Patrick', 'Malawi is the warm heart of africa with beautiful lake and mountains', '31/05/20', '14:58:00', 'Malawi'),
(3, '1234554321', 'Patrick', 'test 123', '31/05/20', '14:59:00', ''),
(4, '1234554321', 'Patrick', 'aaa', '31/05/20', '15:34:00', ''),
(5, '1234567890', 'Demo', 'test', '08/06/20', '15:11:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `GName` varchar(30) NOT NULL,
  `Members` text NOT NULL,
  `Date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `Userid`, `GName`, `Members`, `Date`) VALUES
(1, '1234554321', 'RT 2 RW 3', '1', '31/05/20'),
(2, '1234567890', 'RT 1 RW 3', '1', '08/06/20');

-- --------------------------------------------------------

--
-- Table structure for table `profilepictures`
--

CREATE TABLE `profilepictures` (
  `id` int(11) NOT NULL,
  `ids` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` varchar(30) NOT NULL,
  `Size` decimal(10,0) NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profilepictures`
--

INSERT INTO `profilepictures` (`id`, `ids`, `Category`, `name`, `type`, `Size`, `content`) VALUES
(1, '1', 'User', 'IMG_0458.JPG', 'image/jpeg', '194348', 0x494d475f303435382e4a5047),
(2, '1', 'Group', '339264-Berserker.jpg', 'image/jpeg', '110920', 0x3333393236342d4265727365726b65722e6a7067),
(3, '1', 'Demo', 'demoprofilepict.png', 'image/png', '6000', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d224800000084504c5445000000edededfefefeffffffefefefe6e6e6eaeaeacececef2f2f2313131e3e3e3e8e8e8c2c2c2d1d1d13d3d3de0e0e0434343d7d7d7aeaeaea5a5a57676767f7f7f6767679c9c9cbababadadada5555552020201111115d5d5db3b3b33838381818188c8c8c9595952c2c2c1e1e1e6c6c6c8787874d4d4d5959594f4f4f0b0b0b2d2d2da189cda80000144249444154789ced9d8992b2b816808504888a228be28a5b6bdbcefbbfdf05852c10c80902dd33754fd554cddf11c8474272b62423248a817931fe03a52364f2820c51fe03a5ff27fcf797fe9ff0df5fda3121ceff2b9566631a1625fb535622dc19b77dee708495d27cc826b6e7ae9320085f12246b776391bc90bf56f276fe2e21ce272b273847abedf77c7cdd9df6fb672afbd3eefacf7cb13d44f7d09dbe7f8631fccebf4bf8ae6836f17ade2c891623b51c6f81b3f16ccc43fe61c2379eed84e7d5184057c8f59036e78441fe5d428c0931dce5e3f8d4c0cb65fc13ada784bc28872334754ad326b066c9a1051c939fc0f132dd32bb5f31d07e56abeeda301d2dfc203a7e82f792eb2d9c19087554ab8cb0a4a7977ead51ea458bfdc77c993ce72bc7843f57513afae462fa776cfbf1bc13ba42aee7d9147f58abb78c70e9d7fa9d36fdfcdcb37a5a78eec6f3c5f74f2a8bf978a76eedf132318ab1f59369b999d06cbcd7ab1413ec44d7c6ba2e56f770edfa1bcf9b5853cbb2269eb7f1dd7570bf7d3782ee6e6e3e7f68d70a4c08981e26eea3b686f3471467b31cc9e680525fcafe98fe399d399787c5aeee16f37536b2f6d886b5f7ca95498cd7d1a9a6e19671e2bcfd0b6f4da7ae87a7e2afe3fb4f4d73ae0203ff06e1bb946c96f2b7bf88fd09c1821ed670e7ec87a6e587f2ce70ba390409b3c7508408d97769c7ba05e43da6c194e9b7c1f5bac25c470b99be709b98bf408848b2add6e5eb167ae6fb8deb4fd319a4152c25faec22c40854abee08d3165a9daa7ce70deb50ed1491d494f4e22ae373bb611d7500c274248c2bbd69b7754dfe7b69a96abdbaeb6cf54f05f23e69f5ee5a1122e4afcacfdf2fd75667ca64fa89bbe7ca1cfbede65f63ef84c80c2afa75e44e31d660681ec3b279c870eee56e72bd10fd2f5c9b301b0c0ee527471bf2e1bc5c22345f96e6f45e7e93c74d56d833a1e97e57dacfc69a0cb0d2b41dcf253d609cce44ba84e55fabb4f8b834c72f120b43afd52ec5b65bea30a7a5b66da1f5605c1e628e8909bdb66d69b9cf7c3b9af6a156e771c5497e7fdf7c3e3d284a119a5ec461751e680dda1a84e934253e6aef12fe597d79e691e98b23ce69ada3a6c20991190ac3f769e92164ea1216614cd8c45bbcda72339e09fcb96042842e2761544b6c9d09b088d41a53cb36de710bf0b526c246e96b5c12f0d7012544662c3ce2e112b0d9f6fee26d3fb92c578fedcff6b18ace416e4dc06a99be133faa43ec8610e1a5f0055e6c88df363718cce92659561c55a7d5da236555b3dee78d7120cc5307ef75f78e08d37a086ff018cadc27350691b53e6f85fecdf5f4653156412222642df4d4870d53c46184a660eb2e5c43a5c4bc5a389359b4a8c17bc96ee5e433adda5cc6c64c98fe6f3648118710222cb4e0614a804e3e4b62e95524729d99ef6d2cc1e921bf33c611afc53d3c88220e2044a6f00d2e3d5c3453d3b5187b3124b6f692fd781b5d125f197bc29630a01f482784a92aca57e63cc180482d26b6b613fc6b71730dd2dcfff13410de36519b1a4a42645ef85ac484fb60cc9a6b31b683764efe71bc698eaea5e30ddff32389a951aa959a303cb11bee421be220c4feb9155f26dbd06aecffd81010ef12cdbb4ca8d0d367bcaa16088075260f717e5a0366f3e484345b0f2efff3e4c3d813763985701780cc1673fd015f2663d72cdbe5a2b85c2bee83cf624f3e672e7d8536646a21f1e943c2d135544c8f7c473dba1f783110e20ddeb8ac6acb624008551c486da484585153f96eb2305143ad1a09456dfb0c51b511917afaf5e5d23ca491e08bfd3622a8be56cd842ea7eb2e2700a30e91f683a8285f01692234ec986937fbb0c14c6d224416a7e91e3c80318150d845177d236e1a1388f09453b4ae7e2b4264727aee628a556a5a46f8e928cacb8fd7a8a662c28d11d77a83b88990d38f8e2ea97b127fedecf35c134eceec53949a1afc387f66fd144c8838f7cf3e549a4bd9bd70259af1915c1d52a915ff5c7eaefe72b509115fdd0b2827a2ab6194ca56616a9084fd76ee213d42c1a078d86a63227ba51d038e466ef37331e1469ba826f626237c4ddc361b14c76ee3f750dc69520ed87c2e2b1b377e1dc2a7e8c009b35f7103d52921a5d22a6136d05e2455fc504e89e2eb209c86fa2d776ad41126277ae5d26e1cb58b1bcdbacdfa7a4b64290c621cb21fc7450e4c8950fc77aea7dbacf5f71e2e97cab4f8ce941941ae33dcfc5c6c33ad64ecc96d0bd9c5dca8b877d5e6d2aba40fc05403573d176d583f7d485f87ccc6c73e7bc4121621403d7c8599cc55de34219ae2cabcb81242ccf9b78f9b06b59d530fac7260b82bb155de3484d91775984a946719e19a9914092c7e824259edba9058e92f44acc73d4310219e30ff6fc9b8ac8d6ad8ddcf85b9ac00a90937faebeda66a1e5409897ba25724f5d38340e8f405385a786a42ce8ccdac4a1521c62c4530b2808491ac729dc869ad26e4948d9d5d71445409597b5c5d580c1499bd01be3f4455fcd467e1830040c8da23b2613150d4bdcecd44e6d5aed49935623a9c2a0879a36b038bf2a21e3be9fb4354121af44bdc872a429b695f11308e8decbe26c34c9e3e20098a305bef365110b22ebd77a119136e6d227a17e2020839bdffe42808d9cb584ea1c9783d696cb95c94d1a5f42f98d53b6a244488be8bdd1ab8860ce19bb4665dc90d92aac71b6f44442ad9161efdddd6a2b178856de1e92c34d49779b36d5194b2d16e5db22df82b313755b82ab3a528c55d3a496582412fdaa2bfdf4e8552c1c6e7a6ce2f48aacaeb6ffdd8be9c58a0211d5113e3ea0a4c2261408301e7974baa99308bf260034b1625742ab332a174dd13e76fbff0812b81105bb4937e6d643e0fa9771df70c385a43625ebc89fab3a925645ef91b01136efa260c61bd949bb45c2e6e2510723ee450ea99931226b25a752967a06ab5a621c5732d21b5630b1f3984b06b5f7e4596404242cdbe2bf721f284d8a03e9d1b7ced46cff37d5619609a276283ba5f43c88ca040ee2197291346ed02cbae640525640e9bb88690b9d8089cd00727afb59587015bbc8e10b5000e6c65204788a7b4351635912a19a1dbafce96ca1668889b8836d1c297123a74aeb8681026bd9a4e99fc4c8009e5ccd7f095480999f3d8d720eccd534a65b101a6bd238fb5918cd0a043d162a24118cbabd525a10f6d4342c7f5dba4e062b127ecd190e192349b4b4269df7a773a39cfca2bdd65b57aad0888b96b8a52661f32338f1b6b95b7264b79b5ba24dc408cb8572bb14ca919b30f6913cf8a42ee33552741f53fe18f8e3ec4887b11b2c1927aeb3942aa5fce1d489e734e38ed7dc2d7219c524b6e592c58e208a9e5f43034da70d2fb843f1acfa0849c3b7b4e53331821ad6aa45c15c0117ad545d79d133a704236b29b65c2f48b2c841b68d4849b2f59a57e8d90a9d646859099eaae0ea12fabd3ef11da8ca242c8424e131dc299ac4ebf47884fc5556185906522eaec0cd7636cb40da181e96872af10329d0db6e54a4ed8b7b3549390d0c174854ab3059b2c5644a70d7bf7d268125277d4a3341f7259f9f7e604eb1261ffa6851e217de334cdad2024541b0879425345d86fdca986b0be566cba986f4a842ccab9d66ac3fe4d0bbd91c6d9b3ab0ac2dcb2a0d129c1ebafb42dfa372d6484b5b5c24e11a4df150979a3a2750bdbe9e9ab2c31be7400d322cbe005d887b9503d791fe42d95dbf8784dd9f94c367500bdb764289150f1b1b0228b2e9bcb1716155e0ce6501a7bfced1a09cd5f226ca815977f96abd7943038e505734fa70d7b0fada5727434da902d31a8101663d062a245d867a2491b42a6d45c4a84d495f8636911f691ddfdb7083b5d07f42921ea83b0779ffecb6fa4d1867482be94c6d2b684cd3b97764338fbd55e7a1a8210189969266c3b9676b6a2b289b093366c3b1ff60f088f5b64454c8d2ccf8749e1331beb10f69f6a921382624f66a34ed34e2fe57c5bfd89562f655eefb0207cff08bb856777af635be0e910844e2bdb222c6c8bbc64d3ce3e2443107a9fd987b9256c51379cab61e3a321be434974adb656ccc6ffc7c977a0aafa69144bfd45c2c90084f0d813efa739fa253f8dd9cad73684cbfb157b52ef93f51642fdb7dfd35a7fe94d87b0cf95169450c79b48834f5b629608697ada4287700087f0e8ea6a1052c57b55f1ea53d7ee53236e81facfc4788d8a86d84d1bbe436a912f2b84acbf4d3508077097668bbbc06d8869fe525c216473b7a341d8e77aa0429e013cbac69623676bde5e6b172531e05083b0db9d306a2404672a700befac721b9a88fa239670423280ab2deb70e0366481a24a1c9f5b6b7a80672a78fd67628cb2ad59c08474281d532e464883c05ceaa22af6d4ef9aae4256a59dbfeaf7fa633b25441242da85df2b9e406d18c8abd4b12c2625c2daef90ad7e0a38c24236d4a904ce6b3387982cb26051f306758c9025bb3ab494cb4da4d6313837b1ff0ce8b7c450fb902a20472e3791fe1f3b5385b9db9aac69739020fe4b16c00c5a2e4f81ee5722e40817c54fb639583d6136850e3257643213bfbc3ac209fd0ccface772842c273d04b46165ffeb3ee528204a6a85c4c1f214302c8e7042838b5b10e1fa3418e1e806384987d3928f8e94905b5e593ae25546d8e35e183269d8558f11d24ec8f6ee125794b0fca63580d01fc0ddcdc40510b225bedc0a4481909917c5d6608d8443028e1c00211b1738f3485cbb46c7c62278d114a9db0ca2b1e5b257f7526e9fc7bd5147c894b040dd8643249a50016ce6c429c9cbbaf587cc9d5adcb1712c0d86fb10ff7114b3853879ad79288170429be5eaa90987c8c3c825509f2c876cb630cdaf23e4973ec54ac2f49efd67b1bf641703b436ced17436ea0999f531866cca5f39faa9175924a03da8a9436597084ca53df798dfc501d816a5e318fa91830f4820e42328dfa23959da178379e90fb60ca972eba4df66dcdf1cc08b368405b0a1585adedb848ea6ffb890bd4d10b2c2fe8cc4af689d9d8fa2b958578c1857f6a76156fbdd06ed4f83d0447698650772bafbe0335a0873b21d4aa565c219d55e778e92f07d3878da13ac58ebac78b5ecbe23879d17a94e98f0d9c752de84be4cc86d937dafeeee56f7a4b42a4e70979e92da06ef70766dc4f535759a2bd7849e8290df3411b06d0aad4656a1991bae3ece911a4789e3bdc612c09bcd4b31975e17abf6fa320ca66e2ec16d98bf1d9c1dd2ecc6d16331d63f65fd74fc595d5ceb75feb3de737957f78fa724e4967fe9a43dd2d2d7913fbe1bc6e7e871847166e7e89ce3c099b0e382f4deec867d853160cf3d2e65f40e51262aa5383f618dd81317929cb94f265362882740c39f9badd4e51c46d52f4bb2f72533f59feb3684b4b4748c52ad7c9362cba9168499038afb0a017b5ff2cbd647dbf607e0a6ef12bc927d696bbe3bb194bdc79755a124e4b2f8ca938b463dd251670237916fef63c05ab5219ff172915c2b23e486532117b33ae3d7d603634f6bcdd7736d61d89dcba5885b10b17d79ba4bd74af782e6964d5e344fa97c671e633bd4b43af64b47675520276c7fb25122df0b5a623db0fd2546bb59a5947b92d4f2c004bb2bfdf9f018da8c11602ee5c22d979f4baf95efc9ce5d36e6bb0fe8c1b6dbd2da38b2a39b40aff2d565585ff9ca1ac3849ef7c46d037ed6d98000212ffe6097854360e99dbc8db918ed5dea3dab3b3980f3325dd7756723944f564af99ce8336bf1b9886d591bd63c173b5c1f95ef4f567b8207b7cfdc82451bebdb30d548263ee44047b51c9ce9eb484bd5c08385a9bb2e12517f0a0b375bdf94072fa6e2c437fdd1a546b697ec30fada36a4cfe537a53c689c51f2fe9dc59d7f479706cb556d4226c1ad5b0bf89fc3c54bc7e45a45fcf577c265465e69841140987767e60067feb9ea93d2cee904fd78dc1617c79fe2ba031f31bf1b4daabd23134e98ff900ff12ef2604ec96d95e2ade3a8bf8541cfef65e87ad901d0b2bee3712f36aa3d00b9e9442bc2adbcdb960e007e4d4b248c7e7a5ff774fdbec5b9d621b621e1b306a7ec847038a1c91fff919ff8820a3cbc717b6cbb8a9c56c1664a3d532fe5d9e676023835c44f1b094dcec8789ef3cdafb3b6733af0c7e8cafe715e5ba8d007b0c19f61dda43c379f0ec86fe4b50fb32ddab3c938dc0e8ef796d322ca630d98f0a7871e84ef5487306d2fde671fa45a0bf1878c8b4a6477f1329717bf69cc551c88b408d3298353c2ae099edd870c6dcbe578f6892b54ab515bae39ef8969f109b70fd47139c09a58801c977cd7bad8cd168ff23ce001b6d8f94862e579c02a7fd910fbb37c2051d52054fb69c45f0fb133627b395888aaa96d09d3a9a6f7dd9e5bcbca564717d584c251817f4bde9ec0cf094dd4c3e18d5dc87c06899f4208d3bffef23c2f95ed0635d4598f30fdf3df6bc5f756579d7c87ef8efad7bec5459d51df92f0cf4d1a2b166ee888f08f211eb8c86657841d9e9bfeb944537834454128940d9abbde247163aaa22912c1db30430c06d83449295748aa224f0809b6d05267a075404d8089c25c2adb160aa472a91975e6d96e2707028f4cbd4461e3573a0022c14079b352395d30e490324e145e0cc90a2364fabf68e9bb4c89a98bf9952362ba6d988d37e4f23bde9a7d64eb45175b1266cdd836cafb915c130252b53b204c9bd11b5ec159cdc0c9989f13668cb341b2d8a9ccd7a5b845df8469911d0fb0a3602ebb737632fcc084e9d7e80d65342e7c5327ddb42bc22c7ee8ae065819b44d60e73d754f98a56a6ae73e69cbf7c5d34da8ed9410632fe83312f58c7d03b464a02fc2ec0ec4480ea77ef8b6a14564a96ac31266d90ad320ea5ecb79ae42af55527499b0fc6b2d63aab80b9e38cb8ec79c95ebb1949a56b5ca45d33e6c2835dd43572af9f52720e0e77e1a7b8297664989f1a303ebf1fbb2b63e981eda7ba200a5186fdccb670df97577fd2c81e68f12be52c0f0265c2dda0c3ca7f9219e65a95e86fad489df232c56942417cd34ccf9ed1cccd8a28b0e6bd539614139f1fdf51d46795c26b399272c29f9bbbd94097e6fab4a9cf07c3bfcccc7d7133f9d3c4fbbf1fcfbb1ba87aef14a212b6d05f5d7db9095e61309f6666e10c6f1e52d711c06aeb3318ae2ee9f3b1c615ef26e25410ab63e9f3b1ca1a214693a08ff35844db1877f0b21d70b7fa777f44ef8274affeb84a81a7b1206bcea16e5ffbed2ff01503175314be340d00000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `sampah`
--

CREATE TABLE `sampah` (
  `id` int(11) NOT NULL,
  `namasampah` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `daerah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampah`
--

INSERT INTO `sampah` (`id`, `namasampah`, `asal`, `jenis`, `daerah`) VALUES
(1, 'Daun kering ', '11', 'organik', 'Sawangan'),
(2, 'Pecahan Kaca', '12', 'nonorganik', 'Sawangan'),
(3, 'ampas tahu', '13', 'organik', 'Bogor'),
(4, 'Kulit Kacang', '14', 'organik', 'Bogor'),
(5, 'Kulit Kerang', '15', 'organik', 'Depok'),
(6, 'Bungkus makanan', '16', 'nonorganik', 'Bogor'),
(7, 'Ampas kopi', '17', 'organik', 'Depok'),
(8, 'Ampas teh', '18', 'organik', 'Bogor'),
(9, 'Serbuk Kayu', '19', 'organik', 'Sawangan'),
(10, 'Kapas', '20', 'organik', 'Ciseeng'),
(11, 'Kulit buah', '21', 'organik', 'Ciseeng'),
(12, 'Kulit sayur', '22', 'organik', 'Bogor'),
(13, 'Botol', '23', 'nonorganik', 'Depok'),
(14, 'Kabel bekas', '24', 'nonorganik', 'Bogor'),
(15, 'Lampu', '25', 'nonorganik', 'Bogor'),
(16, 'Ban bekas', '26', 'nonorganik', 'Depok'),
(17, 'Kulit kerang', '27', 'organik', 'Depok'),
(18, 'Kulit kacang tanah', '28', 'orgnanik', 'Bogor'),
(19, 'Sterofom', '29', 'nonorganik', 'Depok'),
(20, 'jerami padi', '30', 'organik', 'Depok');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Surname` varchar(300) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Online` varchar(300) NOT NULL,
  `Time` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Firstname`, `Surname`, `Title`, `Phone`, `Email`, `Password`, `Online`, `Time`) VALUES
(1, 'Nana', '', '', '265999107724', 'nana@gmail.com', 'wwww', 'Offline', 1590932194),
(2, 'Nadhila', 'Fira', 'Miss', '08123456789', 'nadhilafira@gmail.com', '1234567890', 'Online', 1591621356),
(3, 'Amanda', 'Manda', 'Miss', '089876543210', 'amanda@gmail.com', '1234567890', 'Online', 1591621356),
(4, 'Demo', 'Demo', '', '0123456789', 'demo@mail.com', '1234567890', 'Online', 1591621356);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profilepictures`
--
ALTER TABLE `profilepictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampah`
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chart`
--
ALTER TABLE `chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profilepictures`
--
ALTER TABLE `profilepictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sampah`
--
ALTER TABLE `sampah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
