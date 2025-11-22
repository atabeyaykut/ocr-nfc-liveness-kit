package r4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes.dex */
public enum q4 implements c7 {
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN_EVENT(0),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_FACE_DETECT(1),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_FACE_CREATE(2),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_FACE_CLOSE(3),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_FACE_LOAD(4),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_TEXT_DETECT(11),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_TEXT_CREATE(12),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_TEXT_CLOSE(13),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_BARCODE_DETECT(21),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_BARCODE_CREATE(22),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_BARCODE_CLOSE(23),
    /* JADX INFO: Fake field, exist only in values array */
    ON_DEVICE_BARCODE_LOAD(24),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(141),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(142),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(143),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(144),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(ISO7816.TAG_SM_EXPECTED_LENGTH),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(152),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(ISO7816.TAG_SM_STATUS_WORD),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(154),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(161),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(162),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(164),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(163),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(171),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(172),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(173),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(174),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(175),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(241),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(242),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(243),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(244),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(245),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(191),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(192),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(193),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(194),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(311),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(312),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(313),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(314),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(315),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(321),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(322),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(323),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(324),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(331),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(332),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(333),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(334),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(341),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(342),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(343),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(344),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(351),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(352),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(353),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(354),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(31),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(32),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(33),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(41),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(42),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(43),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(51),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(52),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(53),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(61),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(62),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(63),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(71),
    /* JADX INFO: Fake field, exist only in values array */
    CLOUD_LANDMARK_DETECT(72),
    /* JADX INFO: Fake field, exist only in values array */
    CLOUD_IMAGE_LABEL_CLOSE(73),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(81),
    /* JADX INFO: Fake field, exist only in values array */
    CLOUD_LANDMARK_DETECT(82),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(83),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(91),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(92),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(93),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(111),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(112),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(113),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(121),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(122),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(123),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(ISO781611.CREATION_DATE_AND_TIME_TAG),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(132),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(133),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(102),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(103),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(104),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(105),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(181),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(182),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(183),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(184),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(100),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(101),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(251),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(252),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(260),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(200),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(201),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(202),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(203),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(204),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(205),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(206),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(207),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(208),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(209),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(210),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(271),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(272),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(273),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(281),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(291),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(292),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(293),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(301),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(302),
    INPUT_IMAGE_CONSTRUCTION(361),
    /* JADX INFO: Fake field, exist only in values array */
    HANDLE_LEAKED(371),
    /* JADX INFO: Fake field, exist only in values array */
    CAMERA_SOURCE(381),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_IMAGE_LABELING(391),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_LANGUAGE_ID(TypedValues.CycleType.TYPE_CURVE_FIT),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_NLCLASSIFIER(411),
    /* JADX INFO: Fake field, exist only in values array */
    NLCLASSIFIER_CLIENT_LIBRARY(TypedValues.CycleType.TYPE_WAVE_SHAPE),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_FACE_DETECTION(441),
    /* JADX INFO: Fake field, exist only in values array */
    ACCELERATION_ALLOWLIST_GET(431),
    /* JADX INFO: Fake field, exist only in values array */
    ACCELERATION_ALLOWLIST_FETCH(432),
    /* JADX INFO: Fake field, exist only in values array */
    ODML_IMAGE(442);


    /* renamed from: a, reason: collision with root package name */
    public final int f14236a;

    q4(int r32) {
        this.f14236a = r32;
    }

    @Override // r4.c7
    public final int a() {
        return this.f14236a;
    }
}
