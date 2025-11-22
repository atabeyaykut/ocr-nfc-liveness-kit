package s4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes.dex */
public enum z6 implements x0 {
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
    ON_DEVICE_TEXT_DETECT(11),
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
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(141),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(142),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(143),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(144),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(ISO7816.TAG_SM_EXPECTED_LENGTH),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(152),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(ISO7816.TAG_SM_STATUS_WORD),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(154),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(161),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(162),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(164),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(163),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(171),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(172),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(173),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(174),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(175),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(241),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(242),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(243),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(244),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(245),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(191),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(192),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(193),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(194),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(311),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(312),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(313),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(314),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(315),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(321),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(322),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(323),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(324),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(331),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(332),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(333),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(334),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(341),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(342),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(343),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(344),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(351),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(352),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(353),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(354),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(31),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(32),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(33),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(41),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(42),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(43),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(51),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(52),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(53),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(61),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(62),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(63),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(71),
    /* JADX INFO: Fake field, exist only in values array */
    CLOUD_LANDMARK_DETECT(72),
    /* JADX INFO: Fake field, exist only in values array */
    CLOUD_IMAGE_LABEL_CLOSE(73),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(81),
    /* JADX INFO: Fake field, exist only in values array */
    CLOUD_LANDMARK_DETECT(82),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(83),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(91),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(92),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(93),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(111),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(112),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(113),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(121),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(122),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(123),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(ISO781611.CREATION_DATE_AND_TIME_TAG),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(132),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(133),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(102),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(103),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(104),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(105),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(181),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(182),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(183),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(184),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(100),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(101),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(251),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(252),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(260),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(200),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(201),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(202),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(203),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_IMAGE_LABEL_DETECTION(204),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_OBJECT_INFERENCE(205),
    AGGREGATED_ON_DEVICE_TEXT_DETECTION(206),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_POSE_DETECTION(207),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_ON_DEVICE_SEGMENTATION(208),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_CUSTOM_OBJECT_INFERENCE(209),
    /* JADX INFO: Fake field, exist only in values array */
    AGGREGATED_CUSTOM_IMAGE_LABEL_DETECTION(210),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_CONFIG_FETCH(271),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_CONFIG_ACTIVATE(272),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_CONFIG_LOAD(273),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_CONFIG_FRC_FETCH(281),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_INIT(291),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_REGISTER_NEW_ID(292),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_REFRESH_TEMPORARY_TOKEN(293),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_CREATE_INSTALLATION(301),
    /* JADX INFO: Fake field, exist only in values array */
    INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(302),
    /* JADX INFO: Fake field, exist only in values array */
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
    ACCELERATION_ALLOWLIST_FETCH(432);


    /* renamed from: a, reason: collision with root package name */
    public final int f15269a;

    z6(int r32) {
        this.f15269a = r32;
    }

    @Override // s4.x0
    public final int a() {
        return this.f15269a;
    }
}
