package org.bouncycastle.math.ec;

import android.R;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.util.Arrays;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
class LongArray implements Cloneable {
    private static final String ZEROES = "0000000000000000000000000000000000000000000000000000000000000000";
    private long[] m_ints;
    private static final short[] INTERLEAVE2_TABLE = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, PassportService.EF_DG1, PassportService.EF_DG4, PassportService.EF_DG5, PassportService.EF_DG16, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};
    private static final int[] INTERLEAVE3_TABLE = {0, 1, 8, 9, 64, 65, 72, 73, 512, InputDeviceCompat.SOURCE_DPAD, 520, 521, 576, 577, 584, 585, 4096, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 4104, 4105, 4160, 4161, 4168, 4169, 4608, 4609, 4616, 4617, 4672, 4673, 4680, 4681, 32768, 32769, 32776, 32777, 32832, 32833, 32840, 32841, 33280, 33281, 33288, 33289, 33344, 33345, 33352, 33353, 36864, 36865, 36872, 36873, 36928, 36929, 36936, 36937, 37376, 37377, 37384, 37385, 37440, 37441, 37448, 37449, 262144, 262145, 262152, 262153, 262208, 262209, 262216, 262217, 262656, 262657, 262664, 262665, 262720, 262721, 262728, 262729, 266240, 266241, 266248, 266249, 266304, 266305, 266312, 266313, 266752, 266753, 266760, 266761, 266816, 266817, 266824, 266825, 294912, 294913, 294920, 294921, 294976, 294977, 294984, 294985, 295424, 295425, 295432, 295433, 295488, 295489, 295496, 295497, 299008, 299009, 299016, 299017, 299072, 299073, 299080, 299081, 299520, 299521, 299528, 299529, 299584, 299585, 299592, 299593};
    private static final int[] INTERLEAVE4_TABLE = {0, 1, 16, 17, 256, 257, 272, 273, 4096, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 4112, 4113, 4352, 4353, 4368, 4369, 65536, 65537, 65552, 65553, 65792, 65793, 65808, 65809, 69632, 69633, 69648, 69649, 69888, 69889, 69904, 69905, 1048576, 1048577, 1048592, 1048593, 1048832, 1048833, 1048848, 1048849, 1052672, 1052673, 1052688, 1052689, 1052928, 1052929, 1052944, 1052945, 1114112, 1114113, 1114128, 1114129, 1114368, 1114369, 1114384, 1114385, 1118208, 1118209, 1118224, 1118225, 1118464, 1118465, 1118480, 1118481, 16777216, 16777217, InputDeviceCompat.SOURCE_JOYSTICK, 16777233, 16777472, 16777473, 16777488, 16777489, 16781312, 16781313, 16781328, 16781329, 16781568, 16781569, 16781584, 16781585, R.attr.theme, R.attr.label, R.attr.exported, R.attr.process, R.attr.transcriptMode, R.attr.cacheColorHint, R.attr.childIndicatorRight, R.attr.childDivider, 16846848, 16846849, 16846864, 16846865, 16847104, 16847105, 16847120, 16847121, R.raw.loaderror, R.raw.nodomain, 17825808, 17825809, 17826048, 17826049, 17826064, 17826065, 17829888, 17829889, 17829904, 17829905, 17830144, 17830145, 17830160, 17830161, R.bool.config_sendPackageName, R.bool.config_showDefaultAssistant, R.bool.allow_test_udfps, R.bool.auto_data_switch_allow_roaming, R.bool.config_cecSetMenuLanguageEnabled_default, R.bool.config_cecSetMenuLanguage_userConfigurable, R.bool.config_cecSystemAudioModeMuting_userConfigurable, R.bool.config_cecTvSendStandbyOnSleepDisabled_allowed, 17895424, 17895425, 17895440, 17895441, 17895680, 17895681, 17895696, 17895697, 268435456, 268435457, 268435472, 268435473, 268435712, 268435713, 268435728, 268435729, 268439552, 268439553, 268439568, 268439569, 268439808, 268439809, 268439824, 268439825, 268500992, 268500993, 268501008, 268501009, 268501248, 268501249, 268501264, 268501265, 268505088, 268505089, 268505104, 268505105, 268505344, 268505345, 268505360, 268505361, 269484032, 269484033, 269484048, 269484049, 269484288, 269484289, 269484304, 269484305, 269488128, 269488129, 269488144, 269488145, 269488384, 269488385, 269488400, 269488401, 269549568, 269549569, 269549584, 269549585, 269549824, 269549825, 269549840, 269549841, 269553664, 269553665, 269553680, 269553681, 269553920, 269553921, 269553936, 269553937, 285212672, 285212673, 285212688, 285212689, 285212928, 285212929, 285212944, 285212945, 285216768, 285216769, 285216784, 285216785, 285217024, 285217025, 285217040, 285217041, 285278208, 285278209, 285278224, 285278225, 285278464, 285278465, 285278480, 285278481, 285282304, 285282305, 285282320, 285282321, 285282560, 285282561, 285282576, 285282577, 286261248, 286261249, 286261264, 286261265, 286261504, 286261505, 286261520, 286261521, 286265344, 286265345, 286265360, 286265361, 286265600, 286265601, 286265616, 286265617, 286326784, 286326785, 286326800, 286326801, 286327040, 286327041, 286327056, 286327057, 286330880, 286330881, 286330896, 286330897, 286331136, 286331137, 286331152, 286331153};
    private static final int[] INTERLEAVE5_TABLE = {0, 1, 32, 33, 1024, InputDeviceCompat.SOURCE_GAMEPAD, 1056, 1057, 32768, 32769, 32800, 32801, 33792, 33793, 33824, 33825, 1048576, 1048577, 1048608, 1048609, 1049600, 1049601, 1049632, 1049633, 1081344, 1081345, 1081376, 1081377, 1082368, 1082369, 1082400, 1082401, 33554432, InputDeviceCompat.SOURCE_HDMI, 33554464, 33554465, 33555456, 33555457, 33555488, 33555489, 33587200, 33587201, 33587232, 33587233, 33588224, 33588225, 33588256, 33588257, 34603008, 34603009, 34603040, 34603041, 34604032, 34604033, 34604064, 34604065, 34635776, 34635777, 34635808, 34635809, 34636800, 34636801, 34636832, 34636833, 1073741824, 1073741825, 1073741856, 1073741857, 1073742848, 1073742849, 1073742880, 1073742881, 1073774592, 1073774593, 1073774624, 1073774625, 1073775616, 1073775617, 1073775648, 1073775649, 1074790400, 1074790401, 1074790432, 1074790433, 1074791424, 1074791425, 1074791456, 1074791457, 1074823168, 1074823169, 1074823200, 1074823201, 1074824192, 1074824193, 1074824224, 1074824225, 1107296256, 1107296257, 1107296288, 1107296289, 1107297280, 1107297281, 1107297312, 1107297313, 1107329024, 1107329025, 1107329056, 1107329057, 1107330048, 1107330049, 1107330080, 1107330081, 1108344832, 1108344833, 1108344864, 1108344865, 1108345856, 1108345857, 1108345888, 1108345889, 1108377600, 1108377601, 1108377632, 1108377633, 1108378624, 1108378625, 1108378656, 1108378657};
    private static final long[] INTERLEAVE7_TABLE = {0, 1, 128, 129, 16384, 16385, 16512, 16513, 2097152, 2097153, 2097280, 2097281, 2113536, 2113537, 2113664, 2113665, 268435456, 268435457, 268435584, 268435585, 268451840, 268451841, 268451968, 268451969, 270532608, 270532609, 270532736, 270532737, 270548992, 270548993, 270549120, 270549121, 34359738368L, 34359738369L, 34359738496L, 34359738497L, 34359754752L, 34359754753L, 34359754880L, 34359754881L, 34361835520L, 34361835521L, 34361835648L, 34361835649L, 34361851904L, 34361851905L, 34361852032L, 34361852033L, 34628173824L, 34628173825L, 34628173952L, 34628173953L, 34628190208L, 34628190209L, 34628190336L, 34628190337L, 34630270976L, 34630270977L, 34630271104L, 34630271105L, 34630287360L, 34630287361L, 34630287488L, 34630287489L, 4398046511104L, 4398046511105L, 4398046511232L, 4398046511233L, 4398046527488L, 4398046527489L, 4398046527616L, 4398046527617L, 4398048608256L, 4398048608257L, 4398048608384L, 4398048608385L, 4398048624640L, 4398048624641L, 4398048624768L, 4398048624769L, 4398314946560L, 4398314946561L, 4398314946688L, 4398314946689L, 4398314962944L, 4398314962945L, 4398314963072L, 4398314963073L, 4398317043712L, 4398317043713L, 4398317043840L, 4398317043841L, 4398317060096L, 4398317060097L, 4398317060224L, 4398317060225L, 4432406249472L, 4432406249473L, 4432406249600L, 4432406249601L, 4432406265856L, 4432406265857L, 4432406265984L, 4432406265985L, 4432408346624L, 4432408346625L, 4432408346752L, 4432408346753L, 4432408363008L, 4432408363009L, 4432408363136L, 4432408363137L, 4432674684928L, 4432674684929L, 4432674685056L, 4432674685057L, 4432674701312L, 4432674701313L, 4432674701440L, 4432674701441L, 4432676782080L, 4432676782081L, 4432676782208L, 4432676782209L, 4432676798464L, 4432676798465L, 4432676798592L, 4432676798593L, 562949953421312L, 562949953421313L, 562949953421440L, 562949953421441L, 562949953437696L, 562949953437697L, 562949953437824L, 562949953437825L, 562949955518464L, 562949955518465L, 562949955518592L, 562949955518593L, 562949955534848L, 562949955534849L, 562949955534976L, 562949955534977L, 562950221856768L, 562950221856769L, 562950221856896L, 562950221856897L, 562950221873152L, 562950221873153L, 562950221873280L, 562950221873281L, 562950223953920L, 562950223953921L, 562950223954048L, 562950223954049L, 562950223970304L, 562950223970305L, 562950223970432L, 562950223970433L, 562984313159680L, 562984313159681L, 562984313159808L, 562984313159809L, 562984313176064L, 562984313176065L, 562984313176192L, 562984313176193L, 562984315256832L, 562984315256833L, 562984315256960L, 562984315256961L, 562984315273216L, 562984315273217L, 562984315273344L, 562984315273345L, 562984581595136L, 562984581595137L, 562984581595264L, 562984581595265L, 562984581611520L, 562984581611521L, 562984581611648L, 562984581611649L, 562984583692288L, 562984583692289L, 562984583692416L, 562984583692417L, 562984583708672L, 562984583708673L, 562984583708800L, 562984583708801L, 567347999932416L, 567347999932417L, 567347999932544L, 567347999932545L, 567347999948800L, 567347999948801L, 567347999948928L, 567347999948929L, 567348002029568L, 567348002029569L, 567348002029696L, 567348002029697L, 567348002045952L, 567348002045953L, 567348002046080L, 567348002046081L, 567348268367872L, 567348268367873L, 567348268368000L, 567348268368001L, 567348268384256L, 567348268384257L, 567348268384384L, 567348268384385L, 567348270465024L, 567348270465025L, 567348270465152L, 567348270465153L, 567348270481408L, 567348270481409L, 567348270481536L, 567348270481537L, 567382359670784L, 567382359670785L, 567382359670912L, 567382359670913L, 567382359687168L, 567382359687169L, 567382359687296L, 567382359687297L, 567382361767936L, 567382361767937L, 567382361768064L, 567382361768065L, 567382361784320L, 567382361784321L, 567382361784448L, 567382361784449L, 567382628106240L, 567382628106241L, 567382628106368L, 567382628106369L, 567382628122624L, 567382628122625L, 567382628122752L, 567382628122753L, 567382630203392L, 567382630203393L, 567382630203520L, 567382630203521L, 567382630219776L, 567382630219777L, 567382630219904L, 567382630219905L, 72057594037927936L, 72057594037927937L, 72057594037928064L, 72057594037928065L, 72057594037944320L, 72057594037944321L, 72057594037944448L, 72057594037944449L, 72057594040025088L, 72057594040025089L, 72057594040025216L, 72057594040025217L, 72057594040041472L, 72057594040041473L, 72057594040041600L, 72057594040041601L, 72057594306363392L, 72057594306363393L, 72057594306363520L, 72057594306363521L, 72057594306379776L, 72057594306379777L, 72057594306379904L, 72057594306379905L, 72057594308460544L, 72057594308460545L, 72057594308460672L, 72057594308460673L, 72057594308476928L, 72057594308476929L, 72057594308477056L, 72057594308477057L, 72057628397666304L, 72057628397666305L, 72057628397666432L, 72057628397666433L, 72057628397682688L, 72057628397682689L, 72057628397682816L, 72057628397682817L, 72057628399763456L, 72057628399763457L, 72057628399763584L, 72057628399763585L, 72057628399779840L, 72057628399779841L, 72057628399779968L, 72057628399779969L, 72057628666101760L, 72057628666101761L, 72057628666101888L, 72057628666101889L, 72057628666118144L, 72057628666118145L, 72057628666118272L, 72057628666118273L, 72057628668198912L, 72057628668198913L, 72057628668199040L, 72057628668199041L, 72057628668215296L, 72057628668215297L, 72057628668215424L, 72057628668215425L, 72061992084439040L, 72061992084439041L, 72061992084439168L, 72061992084439169L, 72061992084455424L, 72061992084455425L, 72061992084455552L, 72061992084455553L, 72061992086536192L, 72061992086536193L, 72061992086536320L, 72061992086536321L, 72061992086552576L, 72061992086552577L, 72061992086552704L, 72061992086552705L, 72061992352874496L, 72061992352874497L, 72061992352874624L, 72061992352874625L, 72061992352890880L, 72061992352890881L, 72061992352891008L, 72061992352891009L, 72061992354971648L, 72061992354971649L, 72061992354971776L, 72061992354971777L, 72061992354988032L, 72061992354988033L, 72061992354988160L, 72061992354988161L, 72062026444177408L, 72062026444177409L, 72062026444177536L, 72062026444177537L, 72062026444193792L, 72062026444193793L, 72062026444193920L, 72062026444193921L, 72062026446274560L, 72062026446274561L, 72062026446274688L, 72062026446274689L, 72062026446290944L, 72062026446290945L, 72062026446291072L, 72062026446291073L, 72062026712612864L, 72062026712612865L, 72062026712612992L, 72062026712612993L, 72062026712629248L, 72062026712629249L, 72062026712629376L, 72062026712629377L, 72062026714710016L, 72062026714710017L, 72062026714710144L, 72062026714710145L, 72062026714726400L, 72062026714726401L, 72062026714726528L, 72062026714726529L, 72620543991349248L, 72620543991349249L, 72620543991349376L, 72620543991349377L, 72620543991365632L, 72620543991365633L, 72620543991365760L, 72620543991365761L, 72620543993446400L, 72620543993446401L, 72620543993446528L, 72620543993446529L, 72620543993462784L, 72620543993462785L, 72620543993462912L, 72620543993462913L, 72620544259784704L, 72620544259784705L, 72620544259784832L, 72620544259784833L, 72620544259801088L, 72620544259801089L, 72620544259801216L, 72620544259801217L, 72620544261881856L, 72620544261881857L, 72620544261881984L, 72620544261881985L, 72620544261898240L, 72620544261898241L, 72620544261898368L, 72620544261898369L, 72620578351087616L, 72620578351087617L, 72620578351087744L, 72620578351087745L, 72620578351104000L, 72620578351104001L, 72620578351104128L, 72620578351104129L, 72620578353184768L, 72620578353184769L, 72620578353184896L, 72620578353184897L, 72620578353201152L, 72620578353201153L, 72620578353201280L, 72620578353201281L, 72620578619523072L, 72620578619523073L, 72620578619523200L, 72620578619523201L, 72620578619539456L, 72620578619539457L, 72620578619539584L, 72620578619539585L, 72620578621620224L, 72620578621620225L, 72620578621620352L, 72620578621620353L, 72620578621636608L, 72620578621636609L, 72620578621636736L, 72620578621636737L, 72624942037860352L, 72624942037860353L, 72624942037860480L, 72624942037860481L, 72624942037876736L, 72624942037876737L, 72624942037876864L, 72624942037876865L, 72624942039957504L, 72624942039957505L, 72624942039957632L, 72624942039957633L, 72624942039973888L, 72624942039973889L, 72624942039974016L, 72624942039974017L, 72624942306295808L, 72624942306295809L, 72624942306295936L, 72624942306295937L, 72624942306312192L, 72624942306312193L, 72624942306312320L, 72624942306312321L, 72624942308392960L, 72624942308392961L, 72624942308393088L, 72624942308393089L, 72624942308409344L, 72624942308409345L, 72624942308409472L, 72624942308409473L, 72624976397598720L, 72624976397598721L, 72624976397598848L, 72624976397598849L, 72624976397615104L, 72624976397615105L, 72624976397615232L, 72624976397615233L, 72624976399695872L, 72624976399695873L, 72624976399696000L, 72624976399696001L, 72624976399712256L, 72624976399712257L, 72624976399712384L, 72624976399712385L, 72624976666034176L, 72624976666034177L, 72624976666034304L, 72624976666034305L, 72624976666050560L, 72624976666050561L, 72624976666050688L, 72624976666050689L, 72624976668131328L, 72624976668131329L, 72624976668131456L, 72624976668131457L, 72624976668147712L, 72624976668147713L, 72624976668147840L, 72624976668147841L};
    static final byte[] bitLengths = {0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};

    public LongArray(int r12) {
        this.m_ints = new long[r12];
    }

    public LongArray(BigInteger bigInteger) {
        int r52;
        if (bigInteger == null || bigInteger.signum() < 0) {
            throw new IllegalArgumentException("invalid F2m field value");
        }
        if (bigInteger.signum() == 0) {
            this.m_ints = new long[]{0};
            return;
        }
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        if (byteArray[0] == 0) {
            length--;
            r52 = 1;
        } else {
            r52 = 0;
        }
        int r6 = (length + 7) / 8;
        this.m_ints = new long[r6];
        int r62 = r6 - 1;
        int r02 = (length % 8) + r52;
        if (r52 < r02) {
            long j10 = 0;
            while (r52 < r02) {
                j10 = (j10 << 8) | (byteArray[r52] & 255);
                r52++;
            }
            this.m_ints[r62] = j10;
            r62--;
        }
        while (r62 >= 0) {
            long j11 = 0;
            int r03 = 0;
            while (r03 < 8) {
                j11 = (j11 << 8) | (byteArray[r52] & 255);
                r03++;
                r52++;
            }
            this.m_ints[r62] = j11;
            r62--;
        }
    }

    public LongArray(long[] jArr) {
        this.m_ints = jArr;
    }

    public LongArray(long[] jArr, int r42, int r52) {
        if (r42 == 0 && r52 == jArr.length) {
            this.m_ints = jArr;
            return;
        }
        long[] jArr2 = new long[r52];
        this.m_ints = jArr2;
        System.arraycopy(jArr, r42, jArr2, 0, r52);
    }

    private static void add(long[] jArr, int r72, long[] jArr2, int r92, int r10) {
        for (int r02 = 0; r02 < r10; r02++) {
            int r12 = r72 + r02;
            jArr[r12] = jArr[r12] ^ jArr2[r92 + r02];
        }
    }

    private static void add(long[] jArr, int r72, long[] jArr2, int r92, long[] jArr3, int r11, int r12) {
        for (int r02 = 0; r02 < r12; r02++) {
            jArr3[r11 + r02] = jArr[r72 + r02] ^ jArr2[r92 + r02];
        }
    }

    private static void addBoth(long[] jArr, int r92, long[] jArr2, int r11, long[] jArr3, int r13, int r14) {
        for (int r02 = 0; r02 < r14; r02++) {
            int r12 = r92 + r02;
            jArr[r12] = jArr[r12] ^ (jArr2[r11 + r02] ^ jArr3[r13 + r02]);
        }
    }

    private void addShiftedByBitsSafe(LongArray longArray, int r92, int r10) {
        int r93 = (r92 + 63) >>> 6;
        int r6 = r10 >>> 6;
        int r52 = r10 & 63;
        if (r52 == 0) {
            add(this.m_ints, r6, longArray.m_ints, 0, r93);
            return;
        }
        long jAddShiftedUp = addShiftedUp(this.m_ints, r6, longArray.m_ints, 0, r93, r52);
        if (jAddShiftedUp != 0) {
            long[] jArr = this.m_ints;
            int r94 = r93 + r6;
            jArr[r94] = jAddShiftedUp ^ jArr[r94];
        }
    }

    private static long addShiftedDown(long[] jArr, int r11, long[] jArr2, int r13, int r14, int r15) {
        int r02 = 64 - r15;
        long j10 = 0;
        while (true) {
            r14--;
            if (r14 < 0) {
                return j10;
            }
            long j11 = jArr2[r13 + r14];
            int r52 = r11 + r14;
            jArr[r52] = (j10 | (j11 >>> r15)) ^ jArr[r52];
            j10 = j11 << r02;
        }
    }

    private static long addShiftedUp(long[] jArr, int r13, long[] jArr2, int r15, int r16, int r17) {
        int r02 = 64 - r17;
        long j10 = 0;
        for (int r32 = 0; r32 < r16; r32++) {
            long j11 = jArr2[r15 + r32];
            int r72 = r13 + r32;
            jArr[r72] = (j10 | (j11 << r17)) ^ jArr[r72];
            j10 = j11 >>> r02;
        }
        return j10;
    }

    private static int bitLength(long j10) {
        int r32;
        int r02 = 32;
        int r22 = (int) (j10 >>> 32);
        if (r22 == 0) {
            r22 = (int) j10;
            r02 = 0;
        }
        int r33 = r22 >>> 16;
        if (r33 == 0) {
            int r34 = r22 >>> 8;
            r32 = r34 == 0 ? bitLengths[r22] : bitLengths[r34] + 8;
        } else {
            int r42 = r33 >>> 8;
            r32 = r42 == 0 ? bitLengths[r33] + 16 : bitLengths[r42] + 24;
        }
        return r02 + r32;
    }

    private int degreeFrom(int r6) {
        int r62 = (r6 + 62) >>> 6;
        while (r62 != 0) {
            r62--;
            long j10 = this.m_ints[r62];
            if (j10 != 0) {
                return (r62 << 6) + bitLength(j10);
            }
        }
        return 0;
    }

    private static void distribute(long[] jArr, int r72, int r82, int r92, int r10) {
        for (int r02 = 0; r02 < r10; r02++) {
            long j10 = jArr[r72 + r02];
            int r32 = r82 + r02;
            jArr[r32] = jArr[r32] ^ j10;
            int r33 = r92 + r02;
            jArr[r33] = j10 ^ jArr[r33];
        }
    }

    private static void flipBit(long[] jArr, int r6, int r72) {
        int r62 = r6 + (r72 >>> 6);
        jArr[r62] = jArr[r62] ^ (1 << (r72 & 63));
    }

    private static void flipVector(long[] jArr, int r72, long[] jArr2, int r92, int r10, int r11) {
        int r73 = r72 + (r11 >>> 6);
        int r112 = r11 & 63;
        if (r112 == 0) {
            add(jArr, r73, jArr2, r92, r10);
        } else {
            jArr[r73] = addShiftedDown(jArr, r73 + 1, jArr2, r92, r10, 64 - r112) ^ jArr[r73];
        }
    }

    private static void flipWord(long[] jArr, int r52, int r6, long j10) {
        int r53 = r52 + (r6 >>> 6);
        int r62 = r6 & 63;
        if (r62 == 0) {
            jArr[r53] = jArr[r53] ^ j10;
            return;
        }
        jArr[r53] = jArr[r53] ^ (j10 << r62);
        long j11 = j10 >>> (64 - r62);
        if (j11 != 0) {
            int r54 = r53 + 1;
            jArr[r54] = j11 ^ jArr[r54];
        }
    }

    private static void interleave(long[] jArr, int r72, long[] jArr2, int r92, int r10, int r11) {
        if (r11 == 3) {
            interleave3(jArr, r72, jArr2, r92, r10);
            return;
        }
        if (r11 == 5) {
            interleave5(jArr, r72, jArr2, r92, r10);
        } else if (r11 != 7) {
            interleave2_n(jArr, r72, jArr2, r92, r10, bitLengths[r11] - 1);
        } else {
            interleave7(jArr, r72, jArr2, r92, r10);
        }
    }

    private static long interleave2_32to64(int r6) {
        short[] sArr = INTERLEAVE2_TABLE;
        return ((sArr[r6 & 255] | (sArr[(r6 >>> 8) & 255] << 16)) & BodyPartID.bodyIdMax) | ((((sArr[r6 >>> 24] << 16) | sArr[(r6 >>> 16) & 255]) & BodyPartID.bodyIdMax) << 32);
    }

    private static long interleave2_n(long j10, int r10) {
        while (r10 > 1) {
            r10 -= 2;
            j10 = (interleave4_16to64(((int) (j10 >>> 48)) & 65535) << 3) | (interleave4_16to64(((int) (j10 >>> 16)) & 65535) << 1) | interleave4_16to64(((int) j10) & 65535) | (interleave4_16to64(((int) (j10 >>> 32)) & 65535) << 2);
        }
        if (r10 <= 0) {
            return j10;
        }
        return (interleave2_32to64((int) (j10 >>> 32)) << 1) | interleave2_32to64((int) j10);
    }

    private static void interleave2_n(long[] jArr, int r52, long[] jArr2, int r72, int r82, int r92) {
        for (int r02 = 0; r02 < r82; r02++) {
            jArr2[r72 + r02] = interleave2_n(jArr[r52 + r02], r92);
        }
    }

    private static long interleave3(long j10) {
        return (interleave3_21to63(((int) (j10 >>> 42)) & 2097151) << 2) | (Long.MIN_VALUE & j10) | interleave3_21to63(((int) j10) & 2097151) | (interleave3_21to63(((int) (j10 >>> 21)) & 2097151) << 1);
    }

    private static void interleave3(long[] jArr, int r52, long[] jArr2, int r72, int r82) {
        for (int r02 = 0; r02 < r82; r02++) {
            jArr2[r72 + r02] = interleave3(jArr[r52 + r02]);
        }
    }

    private static long interleave3_13to65(int r6) {
        return (INTERLEAVE5_TABLE[r6 & CertificateBody.profileType] & BodyPartID.bodyIdMax) | ((r0[r6 >>> 7] & BodyPartID.bodyIdMax) << 35);
    }

    private static long interleave3_21to63(int r92) {
        return (INTERLEAVE3_TABLE[r92 & CertificateBody.profileType] & BodyPartID.bodyIdMax) | ((r0[r92 >>> 14] & BodyPartID.bodyIdMax) << 42) | ((r0[(r92 >>> 7) & CertificateBody.profileType] & BodyPartID.bodyIdMax) << 21);
    }

    private static long interleave4_16to64(int r6) {
        return (INTERLEAVE4_TABLE[r6 & 255] & BodyPartID.bodyIdMax) | ((r0[r6 >>> 8] & BodyPartID.bodyIdMax) << 32);
    }

    private static long interleave5(long j10) {
        return (interleave3_13to65(((int) (j10 >>> 52)) & 8191) << 4) | interleave3_13to65(((int) j10) & 8191) | (interleave3_13to65(((int) (j10 >>> 13)) & 8191) << 1) | (interleave3_13to65(((int) (j10 >>> 26)) & 8191) << 2) | (interleave3_13to65(((int) (j10 >>> 39)) & 8191) << 3);
    }

    private static void interleave5(long[] jArr, int r52, long[] jArr2, int r72, int r82) {
        for (int r02 = 0; r02 < r82; r02++) {
            jArr2[r72 + r02] = interleave5(jArr[r52 + r02]);
        }
    }

    private static long interleave7(long j10) {
        long[] jArr = INTERLEAVE7_TABLE;
        return (jArr[((int) (j10 >>> 54)) & FrameMetricsAggregator.EVERY_DURATION] << 6) | (Long.MIN_VALUE & j10) | jArr[((int) j10) & FrameMetricsAggregator.EVERY_DURATION] | (jArr[((int) (j10 >>> 9)) & FrameMetricsAggregator.EVERY_DURATION] << 1) | (jArr[((int) (j10 >>> 18)) & FrameMetricsAggregator.EVERY_DURATION] << 2) | (jArr[((int) (j10 >>> 27)) & FrameMetricsAggregator.EVERY_DURATION] << 3) | (jArr[((int) (j10 >>> 36)) & FrameMetricsAggregator.EVERY_DURATION] << 4) | (jArr[((int) (j10 >>> 45)) & FrameMetricsAggregator.EVERY_DURATION] << 5);
    }

    private static void interleave7(long[] jArr, int r52, long[] jArr2, int r72, int r82) {
        for (int r02 = 0; r02 < r82; r02++) {
            jArr2[r72 + r02] = interleave7(jArr[r52 + r02]);
        }
    }

    private static void multiplyWord(long j10, long[] jArr, int r21, long[] jArr2, int r23) {
        if ((j10 & 1) != 0) {
            add(jArr2, r23, jArr, 0, r21);
        }
        int r15 = 1;
        long j11 = j10;
        while (true) {
            long j12 = j11 >>> 1;
            if (j12 == 0) {
                return;
            }
            if ((j12 & 1) != 0) {
                long jAddShiftedUp = addShiftedUp(jArr2, r23, jArr, 0, r21, r15);
                if (jAddShiftedUp != 0) {
                    int r22 = r23 + r21;
                    jArr2[r22] = jAddShiftedUp ^ jArr2[r22];
                }
            }
            r15++;
            j11 = j12;
        }
    }

    private static void reduceBit(long[] jArr, int r22, int r32, int r42, int[] r52) {
        flipBit(jArr, r22, r32);
        int r33 = r32 - r42;
        int length = r52.length;
        while (true) {
            length--;
            if (length < 0) {
                flipBit(jArr, r22, r33);
                return;
            }
            flipBit(jArr, r22, r52[length] + r33);
        }
    }

    private static void reduceBitWise(long[] jArr, int r22, int r32, int r42, int[] r52) {
        while (true) {
            r32--;
            if (r32 < r42) {
                return;
            }
            if (testBit(jArr, r22, r32)) {
                reduceBit(jArr, r22, r32, r42, r52);
            }
        }
    }

    private static int reduceInPlace(long[] jArr, int r15, int r16, int r17, int[] r18) {
        int r10 = (r17 + 63) >>> 6;
        if (r16 < r10) {
            return r16;
        }
        int r12 = r16 << 6;
        int r22 = Math.min(r12, (r17 << 1) - 1);
        int r13 = r12 - r22;
        int r11 = r16;
        while (r13 >= 64) {
            r11--;
            r13 -= 64;
        }
        int length = r18.length;
        int r52 = r18[length - 1];
        int r42 = length > 1 ? r18[length - 2] : 0;
        int r122 = Math.max(r17, r52 + 64);
        int r02 = (Math.min(r22 - r122, r17 - r42) + r13) >> 6;
        if (r02 > 1) {
            int r132 = r11 - r02;
            reduceVectorWise(jArr, r15, r11, r132, r17, r18);
            while (r11 > r132) {
                r11--;
                jArr[r15 + r11] = 0;
            }
            r22 = r132 << 6;
        }
        if (r22 > r122) {
            reduceWordWise(jArr, r15, r11, r122, r17, r18);
        } else {
            r122 = r22;
        }
        if (r122 > r17) {
            reduceBitWise(jArr, r15, r122, r17, r18);
        }
        return r10;
    }

    private static LongArray reduceResult(long[] jArr, int r12, int r22, int r32, int[] r42) {
        return new LongArray(jArr, r12, reduceInPlace(jArr, r12, r22, r32, r42));
    }

    private static void reduceVectorWise(long[] jArr, int r82, int r92, int r10, int r11, int[] r12) {
        int r6 = (r10 << 6) - r11;
        int length = r12.length;
        while (true) {
            length--;
            if (length < 0) {
                flipVector(jArr, r82, jArr, r82 + r10, r92 - r10, r6);
                return;
            }
            flipVector(jArr, r82, jArr, r82 + r10, r92 - r10, r6 + r12[length]);
        }
    }

    private static void reduceWord(long[] jArr, int r22, int r32, long j10, int r6, int[] r72) {
        int r33 = r32 - r6;
        int length = r72.length;
        while (true) {
            length--;
            if (length < 0) {
                flipWord(jArr, r22, r33, j10);
                return;
            }
            flipWord(jArr, r22, r72[length] + r33, j10);
        }
    }

    private static void reduceWordWise(long[] jArr, int r10, int r11, int r12, int r13, int[] r14) {
        int r72 = r12 >>> 6;
        int r02 = r11;
        while (true) {
            int r82 = r02 - 1;
            if (r82 <= r72) {
                break;
            }
            int r22 = r10 + r82;
            long j10 = jArr[r22];
            if (j10 != 0) {
                jArr[r22] = 0;
                reduceWord(jArr, r10, r82 << 6, j10, r13, r14);
            }
            r02 = r82;
        }
        int r23 = r12 & 63;
        int r32 = r10 + r72;
        long j11 = jArr[r32];
        long j12 = j11 >>> r23;
        if (j12 != 0) {
            jArr[r32] = (j12 << r23) ^ j11;
            reduceWord(jArr, r10, r12, j12, r13, r14);
        }
    }

    private long[] resizedInts(int r42) {
        long[] jArr = new long[r42];
        long[] jArr2 = this.m_ints;
        System.arraycopy(jArr2, 0, jArr, 0, Math.min(jArr2.length, r42));
        return jArr;
    }

    private static long shiftUp(long[] jArr, int r10, int r11, int r12) {
        int r02 = 64 - r12;
        long j10 = 0;
        for (int r32 = 0; r32 < r11; r32++) {
            int r42 = r10 + r32;
            long j11 = jArr[r42];
            jArr[r42] = j10 | (j11 << r12);
            j10 = j11 >>> r02;
        }
        return j10;
    }

    private static long shiftUp(long[] jArr, int r10, long[] jArr2, int r12, int r13, int r14) {
        int r02 = 64 - r14;
        long j10 = 0;
        for (int r32 = 0; r32 < r13; r32++) {
            long j11 = jArr[r10 + r32];
            jArr2[r12 + r32] = j10 | (j11 << r14);
            j10 = j11 >>> r02;
        }
        return j10;
    }

    private static void squareInPlace(long[] jArr, int r52, int r6, int[] r72) {
        int r62 = r52 << 1;
        while (true) {
            r52--;
            if (r52 < 0) {
                return;
            }
            long j10 = jArr[r52];
            int r63 = r62 - 1;
            jArr[r63] = interleave2_32to64((int) (j10 >>> 32));
            r62 = r63 - 1;
            jArr[r62] = interleave2_32to64((int) j10);
        }
    }

    private static boolean testBit(long[] jArr, int r42, int r52) {
        return (jArr[r42 + (r52 >>> 6)] & (1 << (r52 & 63))) != 0;
    }

    public LongArray addOne() {
        if (this.m_ints.length == 0) {
            return new LongArray(new long[]{1});
        }
        long[] jArrResizedInts = resizedInts(Math.max(1, getUsedLength()));
        jArrResizedInts[0] = 1 ^ jArrResizedInts[0];
        return new LongArray(jArrResizedInts);
    }

    public void addShiftedByWords(LongArray longArray, int r52) {
        int usedLength = longArray.getUsedLength();
        if (usedLength == 0) {
            return;
        }
        int r12 = usedLength + r52;
        if (r12 > this.m_ints.length) {
            this.m_ints = resizedInts(r12);
        }
        add(this.m_ints, r52, longArray.m_ints, 0, usedLength);
    }

    public Object clone() {
        return new LongArray(Arrays.clone(this.m_ints));
    }

    public void copyTo(long[] jArr, int r52) {
        long[] jArr2 = this.m_ints;
        System.arraycopy(jArr2, 0, jArr, r52, jArr2.length);
    }

    public int degree() {
        int length = this.m_ints.length;
        while (length != 0) {
            length--;
            long j10 = this.m_ints[length];
            if (j10 != 0) {
                return (length << 6) + bitLength(j10);
            }
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LongArray)) {
            return false;
        }
        LongArray longArray = (LongArray) obj;
        int usedLength = getUsedLength();
        if (longArray.getUsedLength() != usedLength) {
            return false;
        }
        for (int r22 = 0; r22 < usedLength; r22++) {
            if (this.m_ints[r22] != longArray.m_ints[r22]) {
                return false;
            }
        }
        return true;
    }

    public int getLength() {
        return this.m_ints.length;
    }

    public int getUsedLength() {
        return getUsedLengthFrom(this.m_ints.length);
    }

    public int getUsedLengthFrom(int r92) {
        long[] jArr = this.m_ints;
        int r93 = Math.min(r92, jArr.length);
        if (r93 < 1) {
            return 0;
        }
        if (jArr[0] != 0) {
            do {
                r93--;
            } while (jArr[r93] == 0);
            return r93 + 1;
        }
        do {
            r93--;
            if (jArr[r93] != 0) {
                return r93 + 1;
            }
        } while (r93 > 0);
        return 0;
    }

    public int hashCode() {
        int usedLength = getUsedLength();
        int r12 = 1;
        for (int r22 = 0; r22 < usedLength; r22++) {
            long j10 = this.m_ints[r22];
            r12 = (((r12 * 31) ^ ((int) j10)) * 31) ^ ((int) (j10 >>> 32));
        }
        return r12;
    }

    public boolean isOne() {
        long[] jArr = this.m_ints;
        if (jArr[0] != 1) {
            return false;
        }
        for (int r32 = 1; r32 < jArr.length; r32++) {
            if (jArr[r32] != 0) {
                return false;
            }
        }
        return true;
    }

    public boolean isZero() {
        for (long j10 : this.m_ints) {
            if (j10 != 0) {
                return false;
            }
        }
        return true;
    }

    public LongArray modInverse(int r12, int[] r13) {
        int r02 = degree();
        if (r02 == 0) {
            throw new IllegalStateException();
        }
        int r14 = 1;
        if (r02 == 1) {
            return this;
        }
        LongArray longArray = (LongArray) clone();
        int r32 = (r12 + 63) >>> 6;
        LongArray longArray2 = new LongArray(r32);
        reduceBit(longArray2.m_ints, 0, r12, r12, r13);
        LongArray longArray3 = new LongArray(r32);
        longArray3.m_ints[0] = 1;
        LongArray longArray4 = new LongArray(r32);
        int[] r72 = new int[2];
        r72[0] = r02;
        int r122 = r12 + 1;
        r72[1] = r122;
        LongArray[] longArrayArr = {longArray, longArray2};
        int[] r22 = {1, 0};
        LongArray[] longArrayArr2 = {longArray3, longArray4};
        int r132 = r22[1];
        int r03 = r122 - r02;
        while (true) {
            if (r03 < 0) {
                r03 = -r03;
                r72[r14] = r122;
                r22[r14] = r132;
                int r123 = 1 - r14;
                int r133 = r72[r123];
                int r15 = r22[r123];
                r14 = r123;
                r122 = r133;
                r132 = r15;
            }
            int r52 = 1 - r14;
            longArrayArr[r14].addShiftedByBitsSafe(longArrayArr[r52], r72[r52], r03);
            int r42 = longArrayArr[r14].degreeFrom(r122);
            if (r42 == 0) {
                return longArrayArr2[r52];
            }
            int r6 = r22[r52];
            longArrayArr2[r14].addShiftedByBitsSafe(longArrayArr2[r52], r6, r03);
            int r62 = r6 + r03;
            if (r62 > r132) {
                r132 = r62;
            } else if (r62 == r132) {
                r132 = longArrayArr2[r14].degreeFrom(r132);
            }
            r03 += r42 - r122;
            r122 = r42;
        }
    }

    public LongArray modMultiply(LongArray longArray, int r25, int[] r26) {
        int r42;
        int r52;
        LongArray longArray2;
        LongArray longArray3;
        int r72;
        long[] jArr;
        int r92;
        int r22 = degree();
        if (r22 == 0) {
            return this;
        }
        int r32 = longArray.degree();
        if (r32 == 0) {
            return longArray;
        }
        if (r22 > r32) {
            r52 = r22;
            r42 = r32;
            longArray3 = this;
            longArray2 = longArray;
        } else {
            r42 = r22;
            r52 = r32;
            longArray2 = this;
            longArray3 = longArray;
        }
        int r6 = (r42 + 63) >>> 6;
        int r11 = (r52 + 63) >>> 6;
        int r43 = ((r42 + r52) + 62) >>> 6;
        if (r6 == 1) {
            long j10 = longArray2.m_ints[0];
            if (j10 == 1) {
                return longArray3;
            }
            long[] jArr2 = new long[r43];
            multiplyWord(j10, longArray3.m_ints, r11, jArr2, 0);
            return reduceResult(jArr2, 0, r43, r25, r26);
        }
        int r53 = ((r52 + 7) + 63) >>> 6;
        int[] r10 = new int[16];
        int r15 = r53 << 4;
        long[] jArr3 = new long[r15];
        r10[1] = r53;
        System.arraycopy(longArray3.m_ints, 0, jArr3, r53, r11);
        int r23 = 2;
        int r82 = r53;
        for (int r93 = 16; r23 < r93; r93 = 16) {
            r82 += r53;
            r10[r23] = r82;
            if ((r23 & 1) == 0) {
                jArr = jArr3;
                r92 = r15;
                shiftUp(jArr3, r82 >>> 1, jArr3, r82, r53, 1);
            } else {
                jArr = jArr3;
                r92 = r15;
                add(jArr, r53, jArr3, r82 - r53, jArr, r82, r53);
            }
            r23++;
            r15 = r92;
            jArr3 = jArr;
        }
        long[] jArr4 = jArr3;
        int r94 = r15;
        long[] jArr5 = new long[r94];
        shiftUp(jArr4, 0, jArr5, 0, r94, 4);
        long[] jArr6 = longArray2.m_ints;
        int r83 = r43 << 3;
        long[] jArr7 = new long[r83];
        int r152 = 0;
        while (r152 < r6) {
            long j11 = jArr6[r152];
            int r19 = r152;
            while (true) {
                int r14 = ((int) j11) & 15;
                long j12 = j11 >>> 4;
                r72 = r152;
                addBoth(jArr7, r19, jArr4, r10[r14], jArr5, r10[((int) j12) & 15], r53);
                j11 = j12 >>> 4;
                if (j11 == 0) {
                    break;
                }
                r19 += r43;
                r152 = r72;
            }
            r152 = r72 + 1;
        }
        while (true) {
            r83 -= r43;
            if (r83 == 0) {
                return reduceResult(jArr7, 0, r43, r25, r26);
            }
            addShiftedUp(jArr7, r83 - r43, jArr7, r83, r43, 8);
        }
    }

    public LongArray modMultiplyAlt(LongArray longArray, int r25, int[] r26) {
        int r42;
        int r52;
        LongArray longArray2;
        LongArray longArray3;
        int r22 = degree();
        if (r22 == 0) {
            return this;
        }
        int r32 = longArray.degree();
        if (r32 == 0) {
            return longArray;
        }
        if (r22 > r32) {
            r52 = r22;
            r42 = r32;
            longArray3 = this;
            longArray2 = longArray;
        } else {
            r42 = r22;
            r52 = r32;
            longArray2 = this;
            longArray3 = longArray;
        }
        int r6 = (r42 + 63) >>> 6;
        int r13 = (r52 + 63) >>> 6;
        int r43 = ((r42 + r52) + 62) >>> 6;
        if (r6 == 1) {
            long j10 = longArray2.m_ints[0];
            if (j10 == 1) {
                return longArray3;
            }
            long[] jArr = new long[r43];
            multiplyWord(j10, longArray3.m_ints, r13, jArr, 0);
            return reduceResult(jArr, 0, r43, r25, r26);
        }
        int r16 = 15;
        int r53 = ((r52 + 15) + 63) >>> 6;
        int r11 = r53 * 8;
        int[] r92 = new int[16];
        r92[0] = r6;
        int r82 = r6 + r11;
        r92[1] = r82;
        int r72 = 2;
        while (true) {
            r82 += r43;
            if (r72 >= 16) {
                break;
            }
            r92[r72] = r82;
            r72++;
        }
        long[] jArr2 = new long[r82 + 1];
        int r222 = r11;
        interleave(longArray2.m_ints, 0, jArr2, 0, r6, 4);
        System.arraycopy(longArray3.m_ints, 0, jArr2, r6, r13);
        int r73 = r6;
        int r33 = 1;
        while (r33 < 8) {
            int r132 = r73 + r53;
            shiftUp(jArr2, r6, jArr2, r132, r53, r33);
            r33++;
            r73 = r132;
        }
        int r74 = 0;
        while (true) {
            int r34 = 0;
            do {
                int r12 = r6;
                long j11 = jArr2[r34] >>> r74;
                int r93 = 0;
                while (true) {
                    int r133 = ((int) j11) & r16;
                    if (r133 != 0) {
                        add(jArr2, r92[r133] + r34, jArr2, r12, r53);
                    }
                    r93++;
                    if (r93 == 8) {
                        break;
                    }
                    r12 += r53;
                    j11 >>>= 4;
                }
                r34++;
            } while (r34 < r6);
            r74 += 32;
            if (r74 >= 64) {
                if (r74 >= 64) {
                    break;
                }
                r74 = 60;
                r16 &= r16 << 4;
            }
            int r94 = r222;
            shiftUp(jArr2, r6, r94, 8);
            r222 = r94;
        }
        int r10 = 16;
        while (true) {
            int r35 = r10 - 1;
            if (r35 <= 1) {
                return reduceResult(jArr2, r92[1], r43, r25, r26);
            }
            if ((r35 & 1) == 0) {
                addShiftedUp(jArr2, r92[r35 >>> 1], jArr2, r92[r35], r43, 16);
            } else {
                distribute(jArr2, r92[r35], r92[r35 - 1], r92[1], r43);
            }
            r10 = r35;
        }
    }

    public LongArray modMultiplyLD(LongArray longArray, int r24, int[] r25) {
        int r42;
        int r52;
        LongArray longArray2;
        LongArray longArray3;
        long[] jArr;
        int r82;
        int r22 = degree();
        if (r22 == 0) {
            return this;
        }
        int r32 = longArray.degree();
        if (r32 == 0) {
            return longArray;
        }
        if (r22 > r32) {
            r52 = r22;
            r42 = r32;
            longArray3 = this;
            longArray2 = longArray;
        } else {
            r42 = r22;
            r52 = r32;
            longArray2 = this;
            longArray3 = longArray;
        }
        int r6 = (r42 + 63) >>> 6;
        int r11 = (r52 + 63) >>> 6;
        int r43 = ((r42 + r52) + 62) >>> 6;
        if (r6 == 1) {
            long j10 = longArray2.m_ints[0];
            if (j10 == 1) {
                return longArray3;
            }
            long[] jArr2 = new long[r43];
            multiplyWord(j10, longArray3.m_ints, r11, jArr2, 0);
            return reduceResult(jArr2, 0, r43, r24, r25);
        }
        int r53 = ((r52 + 7) + 63) >>> 6;
        int[] r10 = new int[16];
        int r15 = r53 << 4;
        long[] jArr3 = new long[r15];
        r10[1] = r53;
        System.arraycopy(longArray3.m_ints, 0, jArr3, r53, r11);
        int r23 = 2;
        int r112 = r53;
        while (r23 < 16) {
            r112 += r53;
            r10[r23] = r112;
            if ((r23 & 1) == 0) {
                jArr = jArr3;
                r82 = r15;
                shiftUp(jArr3, r112 >>> 1, jArr3, r112, r53, 1);
            } else {
                jArr = jArr3;
                r82 = r15;
                add(jArr, r53, jArr3, r112 - r53, jArr, r112, r53);
            }
            r23++;
            r15 = r82;
            jArr3 = jArr;
        }
        long[] jArr4 = jArr3;
        int r83 = r15;
        long[] jArr5 = new long[r83];
        shiftUp(jArr4, 0, jArr5, 0, r83, 4);
        long[] jArr6 = longArray2.m_ints;
        long[] jArr7 = new long[r43];
        for (int r113 = 56; r113 >= 0; r113 -= 8) {
            for (int r14 = 1; r14 < r6; r14 += 2) {
                int r13 = (int) (jArr6[r14] >>> r113);
                addBoth(jArr7, r14 - 1, jArr4, r10[r13 & 15], jArr5, r10[(r13 >>> 4) & 15], r53);
            }
            shiftUp(jArr7, 0, r43, 8);
        }
        for (int r21 = 56; r21 >= 0; r21 -= 8) {
            for (int r114 = 0; r114 < r6; r114 += 2) {
                int r132 = (int) (jArr6[r114] >>> r21);
                addBoth(jArr7, r114, jArr4, r10[r132 & 15], jArr5, r10[(r132 >>> 4) & 15], r53);
            }
            if (r21 > 0) {
                shiftUp(jArr7, 0, r43, 8);
            }
        }
        return reduceResult(jArr7, 0, r43, r24, r25);
    }

    public LongArray modReduce(int r42, int[] r52) {
        long[] jArrClone = Arrays.clone(this.m_ints);
        return new LongArray(jArrClone, 0, reduceInPlace(jArrClone, 0, jArrClone.length, r42, r52));
    }

    public LongArray modSquare(int r10, int[] r11) {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return this;
        }
        int r02 = usedLength << 1;
        long[] jArr = new long[r02];
        int r32 = 0;
        while (r32 < r02) {
            long j10 = this.m_ints[r32 >>> 1];
            int r42 = r32 + 1;
            jArr[r32] = interleave2_32to64((int) j10);
            r32 = r42 + 1;
            jArr[r42] = interleave2_32to64((int) (j10 >>> 32));
        }
        return new LongArray(jArr, 0, reduceInPlace(jArr, 0, r02, r10, r11));
    }

    public LongArray modSquareN(int r6, int r72, int[] r82) {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return this;
        }
        int r12 = ((r72 + 63) >>> 6) << 1;
        long[] jArr = new long[r12];
        System.arraycopy(this.m_ints, 0, jArr, 0, usedLength);
        while (true) {
            r6--;
            if (r6 < 0) {
                return new LongArray(jArr, 0, usedLength);
            }
            squareInPlace(jArr, usedLength, r72, r82);
            usedLength = reduceInPlace(jArr, 0, r12, r72, r82);
        }
    }

    public LongArray multiply(LongArray longArray, int r24, int[] r25) {
        int r22;
        int r32;
        LongArray longArray2;
        LongArray longArray3;
        long[] jArr;
        int r72;
        int r02 = degree();
        if (r02 == 0) {
            return this;
        }
        int r12 = longArray.degree();
        if (r12 == 0) {
            return longArray;
        }
        if (r02 > r12) {
            r32 = r02;
            r22 = r12;
            longArray3 = this;
            longArray2 = longArray;
        } else {
            r22 = r02;
            r32 = r12;
            longArray2 = this;
            longArray3 = longArray;
        }
        int r42 = (r22 + 63) >>> 6;
        int r92 = (r32 + 63) >>> 6;
        int r23 = ((r22 + r32) + 62) >>> 6;
        if (r42 == 1) {
            long j10 = longArray2.m_ints[0];
            if (j10 == 1) {
                return longArray3;
            }
            long[] jArr2 = new long[r23];
            multiplyWord(j10, longArray3.m_ints, r92, jArr2, 0);
            return new LongArray(jArr2, 0, r23);
        }
        int r33 = ((r32 + 7) + 63) >>> 6;
        int[] r82 = new int[16];
        int r15 = r33 << 4;
        long[] jArr3 = new long[r15];
        r82[1] = r33;
        System.arraycopy(longArray3.m_ints, 0, jArr3, r33, r92);
        int r03 = 2;
        int r6 = r33;
        for (int r73 = 16; r03 < r73; r73 = 16) {
            r6 += r33;
            r82[r03] = r6;
            if ((r03 & 1) == 0) {
                jArr = jArr3;
                r72 = r15;
                shiftUp(jArr3, r6 >>> 1, jArr3, r6, r33, 1);
            } else {
                jArr = jArr3;
                r72 = r15;
                add(jArr, r33, jArr, r6 - r33, jArr3, r6, r33);
            }
            r03++;
            r15 = r72;
            jArr3 = jArr;
        }
        long[] jArr4 = jArr3;
        int r74 = r15;
        long[] jArr5 = new long[r74];
        shiftUp(jArr4, 0, jArr5, 0, r74, 4);
        long[] jArr6 = longArray2.m_ints;
        int r62 = r23 << 3;
        long[] jArr7 = new long[r62];
        for (int r93 = 0; r93 < r42; r93++) {
            long j11 = jArr6[r93];
            int r18 = r93;
            while (true) {
                long j12 = j11 >>> 4;
                int r11 = r18;
                addBoth(jArr7, r11, jArr4, r82[((int) j11) & 15], jArr5, r82[((int) j12) & 15], r33);
                j11 = j12 >>> 4;
                if (j11 == 0) {
                    break;
                }
                r18 += r23;
            }
        }
        while (true) {
            r62 -= r23;
            if (r62 == 0) {
                return new LongArray(jArr7, 0, r23);
            }
            addShiftedUp(jArr7, r62 - r23, jArr7, r62, r23, 8);
        }
    }

    public void reduce(int r42, int[] r52) {
        long[] jArr = this.m_ints;
        int r43 = reduceInPlace(jArr, 0, jArr.length, r42, r52);
        if (r43 < jArr.length) {
            long[] jArr2 = new long[r43];
            this.m_ints = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, r43);
        }
    }

    public LongArray square(int r82, int[] r92) {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return this;
        }
        int r83 = usedLength << 1;
        long[] jArr = new long[r83];
        int r12 = 0;
        while (r12 < r83) {
            long j10 = this.m_ints[r12 >>> 1];
            int r22 = r12 + 1;
            jArr[r12] = interleave2_32to64((int) j10);
            r12 = r22 + 1;
            jArr[r22] = interleave2_32to64((int) (j10 >>> 32));
        }
        return new LongArray(jArr, 0, r83);
    }

    public boolean testBitZero() {
        long[] jArr = this.m_ints;
        return jArr.length > 0 && (1 & jArr[0]) != 0;
    }

    public BigInteger toBigInteger() {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return ECConstants.ZERO;
        }
        int r22 = usedLength - 1;
        long j10 = this.m_ints[r22];
        byte[] bArr = new byte[8];
        int r92 = 0;
        boolean z10 = false;
        for (int r82 = 7; r82 >= 0; r82--) {
            byte b10 = (byte) (j10 >>> (r82 * 8));
            if (z10 || b10 != 0) {
                bArr[r92] = b10;
                r92++;
                z10 = true;
            }
        }
        byte[] bArr2 = new byte[(r22 * 8) + r92];
        for (int r72 = 0; r72 < r92; r72++) {
            bArr2[r72] = bArr[r72];
        }
        for (int r02 = usedLength - 2; r02 >= 0; r02--) {
            long j11 = this.m_ints[r02];
            int r23 = 7;
            while (r23 >= 0) {
                bArr2[r92] = (byte) (j11 >>> (r23 * 8));
                r23--;
                r92++;
            }
        }
        return new BigInteger(1, bArr2);
    }

    public String toString() {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return "0";
        }
        int r02 = usedLength - 1;
        StringBuffer stringBuffer = new StringBuffer(Long.toBinaryString(this.m_ints[r02]));
        while (true) {
            r02--;
            if (r02 < 0) {
                return stringBuffer.toString();
            }
            String binaryString = Long.toBinaryString(this.m_ints[r02]);
            int length = binaryString.length();
            if (length < 64) {
                stringBuffer.append(ZEROES.substring(length));
            }
            stringBuffer.append(binaryString);
        }
    }
}
