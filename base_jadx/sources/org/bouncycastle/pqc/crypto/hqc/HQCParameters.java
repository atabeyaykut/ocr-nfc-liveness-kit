package org.bouncycastle.pqc.crypto.hqc;

import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.pqc.crypto.KEMParameters;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class HQCParameters implements KEMParameters {
    static final int GF_MUL_ORDER = 255;
    static final int PARAM_M = 8;
    public static final HQCParameters hqc128 = new HQCParameters("hqc-128", 17669, 46, KyberEngine.KyberPolyBytes, 16, 31, 15, 66, 75, 75, 16767881, 4, new int[]{89, 69, ISO7816.TAG_SM_STATUS_WORD, 116, 176, 117, 111, 75, 73, 233, 242, 233, 65, 210, 21, 139, 103, 173, 67, 118, 105, 210, 174, 110, 74, 69, 228, 82, 255, 181, 1});
    public static final HQCParameters hqc192 = new HQCParameters("hqc-192", 35851, 56, 640, 24, 33, 16, 100, 114, 114, 16742417, 5, new int[]{45, 216, 239, 24, 253, 104, 27, 40, 107, 50, 163, 210, 227, ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA, BERTags.FLAGS, ISO781611.SMT_DO_DS, 119, 13, ISO781611.SMT_DO_DS, 1, 238, 164, 82, 43, 15, 232, 246, 142, 50, 189, 29, 232, 1});
    public static final HQCParameters hqc256 = new HQCParameters("hqc-256", 57637, 90, 640, 32, 59, 29, ISO781611.CREATION_DATE_AND_TIME_TAG, 149, 149, 16772367, 5, new int[]{49, 167, 49, 39, 200, 121, 124, 91, 240, 63, 148, 71, 150, 123, 87, 101, 32, 215, 159, 71, 201, 115, 97, 210, 186, 183, 141, 217, 123, 12, 31, 243, 180, 219, 152, 239, 99, 141, 4, 246, 191, 144, 8, 232, 47, 27, 141, 178, ISO781611.BIOMETRIC_SUBTYPE_TAG, 64, 124, 47, 39, 188, 216, 48, 199, 187, 1});
    private int delta;
    private int fft;

    /* renamed from: g, reason: collision with root package name */
    private int f11904g;
    private int[] generatorPoly;
    private HQCEngine hqcEngine;

    /* renamed from: k, reason: collision with root package name */
    private int f11905k;

    /* renamed from: n, reason: collision with root package name */
    private int f11906n;

    /* renamed from: n1, reason: collision with root package name */
    private int f11907n1;

    /* renamed from: n2, reason: collision with root package name */
    private int f11908n2;
    private final String name;
    private int utilRejectionThreshold;
    private int w;

    /* renamed from: we, reason: collision with root package name */
    private int f11909we;
    private int wr;

    private HQCParameters(String str, int r17, int r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, int r26, int r27, int[] r28) {
        this.name = str;
        this.f11906n = r17;
        this.f11907n1 = r18;
        this.f11908n2 = r19;
        this.f11905k = r20;
        this.delta = r22;
        this.w = r23;
        this.wr = r24;
        this.f11909we = r25;
        this.generatorPoly = r28;
        this.f11904g = r21;
        this.utilRejectionThreshold = r26;
        this.fft = r27;
        this.hqcEngine = new HQCEngine(r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28);
    }

    public int getDelta() {
        return this.delta;
    }

    public HQCEngine getEngine() {
        return this.hqcEngine;
    }

    public int getK() {
        return this.f11905k;
    }

    public int getN() {
        return this.f11906n;
    }

    public int getN1() {
        return this.f11907n1;
    }

    public int getN1N2_BYTES() {
        return ((this.f11907n1 * this.f11908n2) + 7) / 8;
    }

    public int getN2() {
        return this.f11908n2;
    }

    public int getN_BYTES() {
        return (this.f11906n + 7) / 8;
    }

    public String getName() {
        return this.name;
    }

    public int getSALT_SIZE_BYTES() {
        return 16;
    }

    public int getSHA512_BYTES() {
        return 64;
    }

    public int getSessionKeySize() {
        return this.f11905k * 8;
    }

    public int getW() {
        return this.w;
    }

    public int getWe() {
        return this.f11909we;
    }

    public int getWr() {
        return this.wr;
    }
}
