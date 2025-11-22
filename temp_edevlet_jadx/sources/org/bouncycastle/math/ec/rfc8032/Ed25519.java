package org.bouncycastle.math.ec.rfc8032;

import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.math.ec.rfc7748.X25519;
import org.bouncycastle.math.ec.rfc7748.X25519Field;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes2.dex */
public abstract class Ed25519 {
    private static final int COORD_INTS = 8;
    private static final int POINT_BYTES = 32;
    private static final int PRECOMP_BLOCKS = 8;
    private static final int PRECOMP_MASK = 7;
    private static final int PRECOMP_POINTS = 8;
    private static final int PRECOMP_RANGE = 256;
    private static final int PRECOMP_SPACING = 8;
    private static final int PRECOMP_TEETH = 4;
    public static final int PREHASH_SIZE = 64;
    public static final int PUBLIC_KEY_SIZE = 32;
    private static final int SCALAR_BYTES = 32;
    private static final int SCALAR_INTS = 8;
    public static final int SECRET_KEY_SIZE = 32;
    public static final int SIGNATURE_SIZE = 64;
    private static final int WNAF_WIDTH_128 = 4;
    private static final int WNAF_WIDTH_BASE = 6;
    private static final byte[] DOM2_PREFIX = {83, 105, 103, 69, ISOFileInfo.FMD_BYTE, ISO7816.INS_INCREASE, 53, 53, 49, 57, ISO7816.INS_VERIFY, 110, ISOFileInfo.FCI_BYTE, ISO7816.INS_VERIFY, 69, ISOFileInfo.FMD_BYTE, ISO7816.INS_INCREASE, 53, 53, 49, 57, ISO7816.INS_VERIFY, 99, ISOFileInfo.FCI_BYTE, 108, 108, 105, 115, 105, ISOFileInfo.FCI_BYTE, 110, 115};
    private static final int[] P = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] ORDER8_y1 = {1886001095, 1339575613, 1980447930, 258412557, -95215574, -959694548, 2013120334, 2047061138};
    private static final int[] ORDER8_y2 = {-1886001114, -1339575614, -1980447931, -258412558, 95215573, 959694547, -2013120335, 100422509};
    private static final int[] B_x = {52811034, 25909283, 8072341, 50637101, 13785486, 30858332, 20483199, 20966410, 43936626, 4379245};
    private static final int[] B_y = {40265304, 26843545, 6710886, 53687091, 13421772, 40265318, 26843545, 6710886, 53687091, 13421772};
    private static final int[] B128_x = {12052516, 1174424, 4087752, 38672185, 20040971, 21899680, 55468344, 20105554, 66708015, 9981791};
    private static final int[] B128_y = {66430571, 45040722, 4842939, 15895846, 18981244, 46308410, 4697481, 8903007, 53646190, 12474675};
    private static final int[] C_d = {56195235, 47411844, 25868126, 40503822, 57364, 58321048, 30416477, 31930572, 57760639, 10749657};
    private static final int[] C_d2 = {45281625, 27714825, 18181821, 13898781, 114729, 49533232, 60832955, 30306712, 48412415, 4722099};
    private static final int[] C_d4 = {23454386, 55429651, 2809210, 27797563, 229458, 31957600, 54557047, 27058993, 29715967, 9444199};
    private static final Object PRECOMP_LOCK = new Object();
    private static PointPrecomp[] PRECOMP_BASE_WNAF = null;
    private static PointPrecomp[] PRECOMP_BASE128_WNAF = null;
    private static int[] PRECOMP_BASE_COMB = null;

    public static final class Algorithm {
        public static final int Ed25519 = 0;
        public static final int Ed25519ctx = 1;
        public static final int Ed25519ph = 2;
    }

    public static class F extends X25519Field {
        private F() {
        }
    }

    public static class PointAccum {

        /* renamed from: u, reason: collision with root package name */
        int[] f11770u;

        /* renamed from: v, reason: collision with root package name */
        int[] f11771v;

        /* renamed from: x, reason: collision with root package name */
        int[] f11772x;

        /* renamed from: y, reason: collision with root package name */
        int[] f11773y;

        /* renamed from: z, reason: collision with root package name */
        int[] f11774z;

        private PointAccum() {
            this.f11772x = X25519Field.create();
            this.f11773y = X25519Field.create();
            this.f11774z = X25519Field.create();
            this.f11770u = X25519Field.create();
            this.f11771v = X25519Field.create();
        }
    }

    public static class PointAffine {

        /* renamed from: x, reason: collision with root package name */
        int[] f11775x;

        /* renamed from: y, reason: collision with root package name */
        int[] f11776y;

        private PointAffine() {
            this.f11775x = X25519Field.create();
            this.f11776y = X25519Field.create();
        }
    }

    public static class PointExtended {

        /* renamed from: t, reason: collision with root package name */
        int[] f11777t;

        /* renamed from: x, reason: collision with root package name */
        int[] f11778x;

        /* renamed from: y, reason: collision with root package name */
        int[] f11779y;

        /* renamed from: z, reason: collision with root package name */
        int[] f11780z;

        private PointExtended() {
            this.f11778x = X25519Field.create();
            this.f11779y = X25519Field.create();
            this.f11780z = X25519Field.create();
            this.f11777t = X25519Field.create();
        }
    }

    public static class PointPrecomp {
        int[] xyd;
        int[] ymx_h;
        int[] ypx_h;

        private PointPrecomp() {
            this.ymx_h = X25519Field.create();
            this.ypx_h = X25519Field.create();
            this.xyd = X25519Field.create();
        }
    }

    public static class PointPrecompZ {
        int[] xyd;
        int[] ymx_h;
        int[] ypx_h;

        /* renamed from: z, reason: collision with root package name */
        int[] f11781z;

        private PointPrecompZ() {
            this.ymx_h = X25519Field.create();
            this.ypx_h = X25519Field.create();
            this.xyd = X25519Field.create();
            this.f11781z = X25519Field.create();
        }
    }

    public static class PointTemp {

        /* renamed from: r0, reason: collision with root package name */
        int[] f11782r0;

        /* renamed from: r1, reason: collision with root package name */
        int[] f11783r1;

        private PointTemp() {
            this.f11782r0 = X25519Field.create();
            this.f11783r1 = X25519Field.create();
        }
    }

    public static final class PublicPoint {
        final int[] data;

        public PublicPoint(int[] r12) {
            this.data = r12;
        }
    }

    private static byte[] calculateS(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] r12 = new int[16];
        Scalar25519.decode(bArr, r12);
        int[] r22 = new int[8];
        Scalar25519.decode(bArr2, r22);
        int[] r32 = new int[8];
        Scalar25519.decode(bArr3, r32);
        Nat256.mulAddTo(r22, r32, r12);
        byte[] bArr4 = new byte[64];
        Codec.encode32(r12, 0, 16, bArr4, 0);
        return Scalar25519.reduce512(bArr4);
    }

    private static boolean checkContextVar(byte[] bArr, byte b10) {
        return (bArr == null && b10 == 0) || (bArr != null && bArr.length < 256);
    }

    private static int checkPoint(PointAccum pointAccum) {
        int[] r02 = X25519Field.create();
        int[] r12 = X25519Field.create();
        int[] r22 = X25519Field.create();
        int[] r32 = X25519Field.create();
        X25519Field.sqr(pointAccum.f11772x, r12);
        X25519Field.sqr(pointAccum.f11773y, r22);
        X25519Field.sqr(pointAccum.f11774z, r32);
        X25519Field.mul(r12, r22, r02);
        X25519Field.sub(r12, r22, r12);
        X25519Field.mul(r12, r32, r12);
        X25519Field.sqr(r32, r32);
        X25519Field.mul(r02, C_d, r02);
        X25519Field.add(r02, r32, r02);
        X25519Field.add(r02, r12, r02);
        X25519Field.normalize(r02);
        X25519Field.normalize(r22);
        X25519Field.normalize(r32);
        return X25519Field.isZero(r02) & (~X25519Field.isZero(r22)) & (~X25519Field.isZero(r32));
    }

    private static int checkPoint(PointAffine pointAffine) {
        int[] r02 = X25519Field.create();
        int[] r12 = X25519Field.create();
        int[] r22 = X25519Field.create();
        X25519Field.sqr(pointAffine.f11775x, r12);
        X25519Field.sqr(pointAffine.f11776y, r22);
        X25519Field.mul(r12, r22, r02);
        X25519Field.sub(r12, r22, r12);
        X25519Field.mul(r02, C_d, r02);
        X25519Field.addOne(r02);
        X25519Field.add(r02, r12, r02);
        X25519Field.normalize(r02);
        X25519Field.normalize(r22);
        return X25519Field.isZero(r02) & (~X25519Field.isZero(r22));
    }

    private static boolean checkPointFullVar(byte[] bArr) {
        int r02 = Codec.decode32(bArr, 28) & Integer.MAX_VALUE;
        int r12 = P[7] ^ r02;
        int r32 = ORDER8_y1[7] ^ r02;
        int r22 = ORDER8_y2[7] ^ r02;
        for (int r42 = 6; r42 > 0; r42--) {
            int r52 = Codec.decode32(bArr, r42 * 4);
            r02 |= r52;
            r12 |= P[r42] ^ r52;
            r32 |= ORDER8_y1[r42] ^ r52;
            r22 |= r52 ^ ORDER8_y2[r42];
        }
        int r72 = Codec.decode32(bArr, 0);
        if (r02 == 0 && r72 - Integer.MIN_VALUE <= -2147483647) {
            return false;
        }
        if (r12 == 0 && r72 - Integer.MIN_VALUE >= (P[0] - 1) - Integer.MIN_VALUE) {
            return false;
        }
        return (((ORDER8_y1[0] ^ r72) | r32) != 0) & (((r72 ^ ORDER8_y2[0]) | r22) != 0);
    }

    private static boolean checkPointOrderVar(PointAffine pointAffine) {
        PointAccum pointAccum = new PointAccum();
        scalarMultOrderVar(pointAffine, pointAccum);
        return normalizeToNeutralElementVar(pointAccum);
    }

    private static boolean checkPointVar(byte[] bArr) {
        if ((Codec.decode32(bArr, 28) & Integer.MAX_VALUE) < P[7]) {
            return true;
        }
        int[] r42 = new int[8];
        Codec.decode32(bArr, 0, r42, 0, 8);
        r42[7] = r42[7] & Integer.MAX_VALUE;
        return !Nat256.gte(r42, r2);
    }

    private static byte[] copy(byte[] bArr, int r32, int r42) {
        byte[] bArr2 = new byte[r42];
        System.arraycopy(bArr, r32, bArr2, 0, r42);
        return bArr2;
    }

    private static Digest createDigest() {
        SHA512Digest sHA512Digest = new SHA512Digest();
        if (sHA512Digest.getDigestSize() == 64) {
            return sHA512Digest;
        }
        throw new IllegalStateException();
    }

    public static Digest createPrehash() {
        return createDigest();
    }

    private static boolean decodePointVar(byte[] bArr, boolean z10, PointAffine pointAffine) {
        int r02 = (bArr[31] & ISOFileInfo.DATA_BYTES1) >>> 7;
        X25519Field.decode(bArr, pointAffine.f11776y);
        int[] r42 = X25519Field.create();
        int[] r12 = X25519Field.create();
        X25519Field.sqr(pointAffine.f11776y, r42);
        X25519Field.mul(C_d, r42, r12);
        X25519Field.subOne(r42);
        X25519Field.addOne(r12);
        if (!X25519Field.sqrtRatioVar(r42, r12, pointAffine.f11775x)) {
            return false;
        }
        X25519Field.normalize(pointAffine.f11775x);
        if (r02 == 1 && X25519Field.isZeroVar(pointAffine.f11775x)) {
            return false;
        }
        int[] r22 = pointAffine.f11775x;
        if (z10 ^ (r02 != (r22[0] & 1))) {
            X25519Field.negate(r22, r22);
            X25519Field.normalize(pointAffine.f11775x);
        }
        return true;
    }

    private static void dom2(Digest digest, byte b10, byte[] bArr) {
        byte[] bArr2 = DOM2_PREFIX;
        int length = bArr2.length;
        int r22 = length + 2;
        int length2 = bArr.length + r22;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length);
        bArr3[length] = b10;
        bArr3[length + 1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr3, r22, bArr.length);
        digest.update(bArr3, 0, length2);
    }

    private static void encodePoint(PointAffine pointAffine, byte[] bArr, int r42) {
        X25519Field.encode(pointAffine.f11776y, bArr, r42);
        int r43 = (r42 + 32) - 1;
        bArr[r43] = (byte) (((pointAffine.f11775x[0] & 1) << 7) | bArr[r43]);
    }

    public static void encodePublicPoint(PublicPoint publicPoint, byte[] bArr, int r42) {
        X25519Field.encode(publicPoint.data, 10, bArr, r42);
        int r43 = (r42 + 32) - 1;
        bArr[r43] = (byte) (((publicPoint.data[0] & 1) << 7) | bArr[r43]);
    }

    private static int encodeResult(PointAccum pointAccum, byte[] bArr, int r42) {
        PointAffine pointAffine = new PointAffine();
        normalizeToAffine(pointAccum, pointAffine);
        int r22 = checkPoint(pointAffine);
        encodePoint(pointAffine, bArr, r42);
        return r22;
    }

    private static PublicPoint exportPoint(PointAffine pointAffine) {
        int[] r02 = new int[20];
        X25519Field.copy(pointAffine.f11775x, 0, r02, 0);
        X25519Field.copy(pointAffine.f11776y, 0, r02, 10);
        return new PublicPoint(r02);
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
    }

    public static PublicPoint generatePublicKey(byte[] bArr, int r42) {
        Digest digestCreateDigest = createDigest();
        byte[] bArr2 = new byte[64];
        digestCreateDigest.update(bArr, r42, 32);
        digestCreateDigest.doFinal(bArr2, 0);
        byte[] bArr3 = new byte[32];
        pruneScalar(bArr2, 0, bArr3);
        PointAccum pointAccum = new PointAccum();
        scalarMultBase(bArr3, pointAccum);
        PointAffine pointAffine = new PointAffine();
        normalizeToAffine(pointAccum, pointAffine);
        if (checkPoint(pointAffine) != 0) {
            return exportPoint(pointAffine);
        }
        throw new IllegalStateException();
    }

    public static void generatePublicKey(byte[] bArr, int r42, byte[] bArr2, int r6) {
        Digest digestCreateDigest = createDigest();
        byte[] bArr3 = new byte[64];
        digestCreateDigest.update(bArr, r42, 32);
        digestCreateDigest.doFinal(bArr3, 0);
        byte[] bArr4 = new byte[32];
        pruneScalar(bArr3, 0, bArr4);
        scalarMultBaseEncoded(bArr4, bArr2, r6);
    }

    private static int getWindow4(int[] r12, int r22) {
        return (r12[r22 >>> 3] >>> ((r22 & 7) << 2)) & 15;
    }

    private static void groupCombBits(int[] r22) {
        for (int r02 = 0; r02 < r22.length; r02++) {
            r22[r02] = Interleave.shuffle2(r22[r02]);
        }
    }

    private static void implSign(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3, int r82, byte[] bArr4, byte b10, byte[] bArr5, int r12, int r13, byte[] bArr6, int r15) {
        if (bArr4 != null) {
            dom2(digest, b10, bArr4);
        }
        digest.update(bArr, 32, 32);
        digest.update(bArr5, r12, r13);
        digest.doFinal(bArr, 0);
        byte[] bArrReduce512 = Scalar25519.reduce512(bArr);
        byte[] bArr7 = new byte[32];
        scalarMultBaseEncoded(bArrReduce512, bArr7, 0);
        if (bArr4 != null) {
            dom2(digest, b10, bArr4);
        }
        digest.update(bArr7, 0, 32);
        digest.update(bArr3, r82, 32);
        digest.update(bArr5, r12, r13);
        digest.doFinal(bArr, 0);
        byte[] bArrCalculateS = calculateS(bArrReduce512, Scalar25519.reduce512(bArr), bArr2);
        System.arraycopy(bArr7, 0, bArr6, r15, 32);
        System.arraycopy(bArrCalculateS, 0, bArr6, r15 + 32, 32);
    }

    private static void implSign(byte[] bArr, int r14, byte[] bArr2, byte b10, byte[] bArr3, int r18, int r19, byte[] bArr4, int r21) {
        if (!checkContextVar(bArr2, b10)) {
            throw new IllegalArgumentException("ctx");
        }
        Digest digestCreateDigest = createDigest();
        byte[] bArr5 = new byte[64];
        digestCreateDigest.update(bArr, r14, 32);
        digestCreateDigest.doFinal(bArr5, 0);
        byte[] bArr6 = new byte[32];
        pruneScalar(bArr5, 0, bArr6);
        byte[] bArr7 = new byte[32];
        scalarMultBaseEncoded(bArr6, bArr7, 0);
        implSign(digestCreateDigest, bArr5, bArr6, bArr7, 0, bArr2, b10, bArr3, r18, r19, bArr4, r21);
    }

    private static void implSign(byte[] bArr, int r14, byte[] bArr2, int r16, byte[] bArr3, byte b10, byte[] bArr4, int r20, int r21, byte[] bArr5, int r23) {
        if (!checkContextVar(bArr3, b10)) {
            throw new IllegalArgumentException("ctx");
        }
        Digest digestCreateDigest = createDigest();
        byte[] bArr6 = new byte[64];
        digestCreateDigest.update(bArr, r14, 32);
        digestCreateDigest.doFinal(bArr6, 0);
        byte[] bArr7 = new byte[32];
        pruneScalar(bArr6, 0, bArr7);
        implSign(digestCreateDigest, bArr6, bArr7, bArr2, r16, bArr3, b10, bArr4, r20, r21, bArr5, r23);
    }

    private static boolean implVerify(byte[] bArr, int r14, PublicPoint publicPoint, byte[] bArr2, byte b10, byte[] bArr3, int r19, int r20) {
        if (!checkContextVar(bArr2, b10)) {
            throw new IllegalArgumentException("ctx");
        }
        byte[] bArrCopy = copy(bArr, r14, 32);
        byte[] bArrCopy2 = copy(bArr, r14 + 32, 32);
        if (!checkPointVar(bArrCopy)) {
            return false;
        }
        int[] r72 = new int[8];
        if (!Scalar25519.checkVar(bArrCopy2, r72)) {
            return false;
        }
        PointAffine pointAffine = new PointAffine();
        if (!decodePointVar(bArrCopy, true, pointAffine)) {
            return false;
        }
        PointAffine pointAffine2 = new PointAffine();
        X25519Field.negate(publicPoint.data, pointAffine2.f11775x);
        X25519Field.copy(publicPoint.data, 10, pointAffine2.f11776y, 0);
        byte[] bArr4 = new byte[32];
        encodePublicPoint(publicPoint, bArr4, 0);
        Digest digestCreateDigest = createDigest();
        byte[] bArr5 = new byte[64];
        if (bArr2 != null) {
            dom2(digestCreateDigest, b10, bArr2);
        }
        digestCreateDigest.update(bArrCopy, 0, 32);
        digestCreateDigest.update(bArr4, 0, 32);
        digestCreateDigest.update(bArr3, r19, r20);
        digestCreateDigest.doFinal(bArr5, 0);
        int[] r12 = new int[8];
        Scalar25519.decode(Scalar25519.reduce512(bArr5), r12);
        int[] r32 = new int[4];
        int[] r22 = new int[4];
        if (!Scalar25519.reduceBasisVar(r12, r32, r22)) {
            throw new IllegalStateException();
        }
        Scalar25519.multiply128Var(r72, r22, r72);
        PointAccum pointAccum = new PointAccum();
        scalarMultStraus128Var(r72, r32, pointAffine2, r22, pointAffine, pointAccum);
        return normalizeToNeutralElementVar(pointAccum);
    }

    private static boolean implVerify(byte[] bArr, int r14, byte[] bArr2, int r16, byte[] bArr3, byte b10, byte[] bArr4, int r20, int r21) {
        if (!checkContextVar(bArr3, b10)) {
            throw new IllegalArgumentException("ctx");
        }
        byte[] bArrCopy = copy(bArr, r14, 32);
        byte[] bArrCopy2 = copy(bArr, r14 + 32, 32);
        byte[] bArrCopy3 = copy(bArr2, r16, 32);
        if (!checkPointVar(bArrCopy)) {
            return false;
        }
        int[] r72 = new int[8];
        if (!Scalar25519.checkVar(bArrCopy2, r72) || !checkPointFullVar(bArrCopy3)) {
            return false;
        }
        PointAffine pointAffine = new PointAffine();
        if (!decodePointVar(bArrCopy, true, pointAffine)) {
            return false;
        }
        PointAffine pointAffine2 = new PointAffine();
        if (!decodePointVar(bArrCopy3, true, pointAffine2)) {
            return false;
        }
        Digest digestCreateDigest = createDigest();
        byte[] bArr5 = new byte[64];
        if (bArr3 != null) {
            dom2(digestCreateDigest, b10, bArr3);
        }
        digestCreateDigest.update(bArrCopy, 0, 32);
        digestCreateDigest.update(bArrCopy3, 0, 32);
        digestCreateDigest.update(bArr4, r20, r21);
        digestCreateDigest.doFinal(bArr5, 0);
        int[] r22 = new int[8];
        Scalar25519.decode(Scalar25519.reduce512(bArr5), r22);
        int[] r32 = new int[4];
        int[] r12 = new int[4];
        if (!Scalar25519.reduceBasisVar(r22, r32, r12)) {
            throw new IllegalStateException();
        }
        Scalar25519.multiply128Var(r72, r12, r72);
        PointAccum pointAccum = new PointAccum();
        scalarMultStraus128Var(r72, r32, pointAffine2, r12, pointAffine, pointAccum);
        return normalizeToNeutralElementVar(pointAccum);
    }

    private static void invertDoubleZs(PointExtended[] pointExtendedArr) {
        int length = pointExtendedArr.length;
        int[] r12 = X25519Field.createTable(length);
        int[] r22 = X25519Field.create();
        X25519Field.copy(pointExtendedArr[0].f11780z, 0, r22, 0);
        X25519Field.copy(r22, 0, r12, 0);
        int r42 = 0;
        while (true) {
            r42++;
            if (r42 >= length) {
                break;
            }
            X25519Field.mul(r22, pointExtendedArr[r42].f11780z, r22);
            X25519Field.copy(r22, 0, r12, r42 * 10);
        }
        X25519Field.add(r22, r22, r22);
        X25519Field.invVar(r22, r22);
        int r43 = r42 - 1;
        int[] r02 = X25519Field.create();
        while (r43 > 0) {
            int r52 = r43 - 1;
            X25519Field.copy(r12, r52 * 10, r02, 0);
            X25519Field.mul(r02, r22, r02);
            X25519Field.mul(r22, pointExtendedArr[r43].f11780z, r22);
            X25519Field.copy(r02, 0, pointExtendedArr[r43].f11780z, 0);
            r43 = r52;
        }
        X25519Field.copy(r22, 0, pointExtendedArr[0].f11780z, 0);
    }

    private static void normalizeToAffine(PointAccum pointAccum, PointAffine pointAffine) {
        X25519Field.inv(pointAccum.f11774z, pointAffine.f11776y);
        X25519Field.mul(pointAffine.f11776y, pointAccum.f11772x, pointAffine.f11775x);
        int[] r02 = pointAffine.f11776y;
        X25519Field.mul(r02, pointAccum.f11773y, r02);
        X25519Field.normalize(pointAffine.f11775x);
        X25519Field.normalize(pointAffine.f11776y);
    }

    private static boolean normalizeToNeutralElementVar(PointAccum pointAccum) {
        X25519Field.normalize(pointAccum.f11772x);
        X25519Field.normalize(pointAccum.f11773y);
        X25519Field.normalize(pointAccum.f11774z);
        return X25519Field.isZeroVar(pointAccum.f11772x) && !X25519Field.isZeroVar(pointAccum.f11773y) && X25519Field.areEqualVar(pointAccum.f11773y, pointAccum.f11774z);
    }

    private static void pointAdd(PointExtended pointExtended, PointExtended pointExtended2, PointExtended pointExtended3, PointTemp pointTemp) {
        int[] r02 = pointExtended3.f11778x;
        int[] r12 = pointExtended3.f11779y;
        int[] r22 = pointTemp.f11782r0;
        int[] r82 = pointTemp.f11783r1;
        X25519Field.apm(pointExtended.f11779y, pointExtended.f11778x, r12, r02);
        X25519Field.apm(pointExtended2.f11779y, pointExtended2.f11778x, r82, r22);
        X25519Field.mul(r02, r22, r02);
        X25519Field.mul(r12, r82, r12);
        X25519Field.mul(pointExtended.f11777t, pointExtended2.f11777t, r22);
        X25519Field.mul(r22, C_d2, r22);
        int[] r52 = pointExtended.f11780z;
        X25519Field.add(r52, r52, r82);
        X25519Field.mul(r82, pointExtended2.f11780z, r82);
        X25519Field.apm(r12, r02, r12, r02);
        X25519Field.apm(r82, r22, r82, r22);
        X25519Field.mul(r02, r12, pointExtended3.f11777t);
        X25519Field.mul(r22, r82, pointExtended3.f11780z);
        X25519Field.mul(r02, r22, pointExtended3.f11778x);
        X25519Field.mul(r12, r82, pointExtended3.f11779y);
    }

    private static void pointAdd(PointPrecomp pointPrecomp, PointAccum pointAccum, PointTemp pointTemp) {
        int[] r02 = pointAccum.f11772x;
        int[] r12 = pointAccum.f11773y;
        int[] r82 = pointTemp.f11782r0;
        int[] r22 = pointAccum.f11770u;
        int[] r32 = pointAccum.f11771v;
        X25519Field.apm(r12, r02, r12, r02);
        X25519Field.mul(r02, pointPrecomp.ymx_h, r02);
        X25519Field.mul(r12, pointPrecomp.ypx_h, r12);
        X25519Field.mul(pointAccum.f11770u, pointAccum.f11771v, r82);
        X25519Field.mul(r82, pointPrecomp.xyd, r82);
        X25519Field.apm(r12, r02, r32, r22);
        X25519Field.apm(pointAccum.f11774z, r82, r12, r02);
        X25519Field.mul(r02, r12, pointAccum.f11774z);
        X25519Field.mul(r02, r22, pointAccum.f11772x);
        X25519Field.mul(r12, r32, pointAccum.f11773y);
    }

    private static void pointAdd(PointPrecompZ pointPrecompZ, PointAccum pointAccum, PointTemp pointTemp) {
        int[] r02 = pointAccum.f11772x;
        int[] r12 = pointAccum.f11773y;
        int[] r92 = pointTemp.f11782r0;
        int[] r22 = pointAccum.f11774z;
        int[] r32 = pointAccum.f11770u;
        int[] r42 = pointAccum.f11771v;
        X25519Field.apm(r12, r02, r12, r02);
        X25519Field.mul(r02, pointPrecompZ.ymx_h, r02);
        X25519Field.mul(r12, pointPrecompZ.ypx_h, r12);
        X25519Field.mul(pointAccum.f11770u, pointAccum.f11771v, r92);
        X25519Field.mul(r92, pointPrecompZ.xyd, r92);
        X25519Field.mul(pointAccum.f11774z, pointPrecompZ.f11781z, r22);
        X25519Field.apm(r12, r02, r42, r32);
        X25519Field.apm(r22, r92, r12, r02);
        X25519Field.mul(r02, r12, pointAccum.f11774z);
        X25519Field.mul(r02, r32, pointAccum.f11772x);
        X25519Field.mul(r12, r42, pointAccum.f11773y);
    }

    private static void pointAddVar(boolean z10, PointPrecomp pointPrecomp, PointAccum pointAccum, PointTemp pointTemp) {
        int[] r72;
        int[] r42;
        int[] r02 = pointAccum.f11772x;
        int[] r12 = pointAccum.f11773y;
        int[] r10 = pointTemp.f11782r0;
        int[] r22 = pointAccum.f11770u;
        int[] r32 = pointAccum.f11771v;
        if (z10) {
            r42 = r02;
            r72 = r12;
        } else {
            r72 = r02;
            r42 = r12;
        }
        X25519Field.apm(r12, r02, r12, r02);
        X25519Field.mul(r72, pointPrecomp.ymx_h, r72);
        X25519Field.mul(r42, pointPrecomp.ypx_h, r42);
        X25519Field.mul(pointAccum.f11770u, pointAccum.f11771v, r10);
        X25519Field.mul(r10, pointPrecomp.xyd, r10);
        X25519Field.apm(r12, r02, r32, r22);
        X25519Field.apm(pointAccum.f11774z, r10, r42, r72);
        X25519Field.mul(r02, r12, pointAccum.f11774z);
        X25519Field.mul(r02, r22, pointAccum.f11772x);
        X25519Field.mul(r12, r32, pointAccum.f11773y);
    }

    private static void pointAddVar(boolean z10, PointPrecompZ pointPrecompZ, PointAccum pointAccum, PointTemp pointTemp) {
        int[] r82;
        int[] r52;
        int[] r02 = pointAccum.f11772x;
        int[] r12 = pointAccum.f11773y;
        int[] r11 = pointTemp.f11782r0;
        int[] r22 = pointAccum.f11774z;
        int[] r32 = pointAccum.f11770u;
        int[] r42 = pointAccum.f11771v;
        if (z10) {
            r52 = r02;
            r82 = r12;
        } else {
            r82 = r02;
            r52 = r12;
        }
        X25519Field.apm(r12, r02, r12, r02);
        X25519Field.mul(r82, pointPrecompZ.ymx_h, r82);
        X25519Field.mul(r52, pointPrecompZ.ypx_h, r52);
        X25519Field.mul(pointAccum.f11770u, pointAccum.f11771v, r11);
        X25519Field.mul(r11, pointPrecompZ.xyd, r11);
        X25519Field.mul(pointAccum.f11774z, pointPrecompZ.f11781z, r22);
        X25519Field.apm(r12, r02, r42, r32);
        X25519Field.apm(r22, r11, r52, r82);
        X25519Field.mul(r02, r12, pointAccum.f11774z);
        X25519Field.mul(r02, r32, pointAccum.f11772x);
        X25519Field.mul(r12, r42, pointAccum.f11773y);
    }

    private static void pointCopy(PointAccum pointAccum, PointExtended pointExtended) {
        X25519Field.copy(pointAccum.f11772x, 0, pointExtended.f11778x, 0);
        X25519Field.copy(pointAccum.f11773y, 0, pointExtended.f11779y, 0);
        X25519Field.copy(pointAccum.f11774z, 0, pointExtended.f11780z, 0);
        X25519Field.mul(pointAccum.f11770u, pointAccum.f11771v, pointExtended.f11777t);
    }

    private static void pointCopy(PointAffine pointAffine, PointExtended pointExtended) {
        X25519Field.copy(pointAffine.f11775x, 0, pointExtended.f11778x, 0);
        X25519Field.copy(pointAffine.f11776y, 0, pointExtended.f11779y, 0);
        X25519Field.one(pointExtended.f11780z);
        X25519Field.mul(pointAffine.f11775x, pointAffine.f11776y, pointExtended.f11777t);
    }

    private static void pointCopy(PointExtended pointExtended, PointPrecompZ pointPrecompZ) {
        X25519Field.apm(pointExtended.f11779y, pointExtended.f11778x, pointPrecompZ.ypx_h, pointPrecompZ.ymx_h);
        X25519Field.mul(pointExtended.f11777t, C_d2, pointPrecompZ.xyd);
        int[] r42 = pointExtended.f11780z;
        X25519Field.add(r42, r42, pointPrecompZ.f11781z);
    }

    private static void pointDouble(PointAccum pointAccum) {
        int[] r02 = pointAccum.f11772x;
        int[] r12 = pointAccum.f11773y;
        int[] r22 = pointAccum.f11774z;
        int[] r32 = pointAccum.f11770u;
        int[] r42 = pointAccum.f11771v;
        X25519Field.add(r02, r12, r32);
        X25519Field.sqr(pointAccum.f11772x, r02);
        X25519Field.sqr(pointAccum.f11773y, r12);
        X25519Field.sqr(pointAccum.f11774z, r22);
        X25519Field.add(r22, r22, r22);
        X25519Field.apm(r02, r12, r42, r12);
        X25519Field.sqr(r32, r32);
        X25519Field.sub(r42, r32, r32);
        X25519Field.add(r22, r12, r02);
        X25519Field.carry(r02);
        X25519Field.mul(r02, r12, pointAccum.f11774z);
        X25519Field.mul(r02, r32, pointAccum.f11772x);
        X25519Field.mul(r12, r42, pointAccum.f11773y);
    }

    private static void pointLookup(int r6, int r72, PointPrecomp pointPrecomp) {
        int r62 = r6 * 8 * 3 * 10;
        for (int r22 = 0; r22 < 8; r22++) {
            int r32 = ((r22 ^ r72) - 1) >> 31;
            X25519Field.cmov(r32, PRECOMP_BASE_COMB, r62, pointPrecomp.ymx_h, 0);
            int r63 = r62 + 10;
            X25519Field.cmov(r32, PRECOMP_BASE_COMB, r63, pointPrecomp.ypx_h, 0);
            int r64 = r63 + 10;
            X25519Field.cmov(r32, PRECOMP_BASE_COMB, r64, pointPrecomp.xyd, 0);
            r62 = r64 + 10;
        }
    }

    private static void pointLookupZ(int[] r52, int r6, int[] r72, PointPrecompZ pointPrecompZ) {
        int window4 = getWindow4(r52, r6);
        int r62 = (window4 >>> 3) ^ 1;
        int r53 = (window4 ^ (-r62)) & 7;
        int r22 = 0;
        for (int r12 = 0; r12 < 8; r12++) {
            int r32 = ((r12 ^ r53) - 1) >> 31;
            X25519Field.cmov(r32, r72, r22, pointPrecompZ.ymx_h, 0);
            int r23 = r22 + 10;
            X25519Field.cmov(r32, r72, r23, pointPrecompZ.ypx_h, 0);
            int r24 = r23 + 10;
            X25519Field.cmov(r32, r72, r24, pointPrecompZ.xyd, 0);
            int r25 = r24 + 10;
            X25519Field.cmov(r32, r72, r25, pointPrecompZ.f11781z, 0);
            r22 = r25 + 10;
        }
        X25519Field.cswap(r62, pointPrecompZ.ymx_h, pointPrecompZ.ypx_h);
        X25519Field.cnegate(r62, pointPrecompZ.xyd);
    }

    private static void pointPrecompute(PointAffine pointAffine, PointExtended[] pointExtendedArr, int r72, int r82, PointTemp pointTemp) {
        PointExtended pointExtended = new PointExtended();
        pointExtendedArr[r72] = pointExtended;
        pointCopy(pointAffine, pointExtended);
        PointExtended pointExtended2 = new PointExtended();
        PointExtended pointExtended3 = pointExtendedArr[r72];
        pointAdd(pointExtended3, pointExtended3, pointExtended2, pointTemp);
        for (int r02 = 1; r02 < r82; r02++) {
            int r22 = r72 + r02;
            PointExtended pointExtended4 = pointExtendedArr[r22 - 1];
            PointExtended pointExtended5 = new PointExtended();
            pointExtendedArr[r22] = pointExtended5;
            pointAdd(pointExtended4, pointExtended2, pointExtended5, pointTemp);
        }
    }

    private static void pointPrecomputeZ(PointAffine pointAffine, PointPrecompZ[] pointPrecompZArr, int r6, PointTemp pointTemp) {
        PointExtended pointExtended = new PointExtended();
        pointCopy(pointAffine, pointExtended);
        PointExtended pointExtended2 = new PointExtended();
        pointAdd(pointExtended, pointExtended, pointExtended2, pointTemp);
        int r22 = 0;
        while (true) {
            PointPrecompZ pointPrecompZ = new PointPrecompZ();
            pointPrecompZArr[r22] = pointPrecompZ;
            pointCopy(pointExtended, pointPrecompZ);
            r22++;
            if (r22 == r6) {
                return;
            } else {
                pointAdd(pointExtended, pointExtended2, pointExtended, pointTemp);
            }
        }
    }

    private static int[] pointPrecomputeZ(PointAffine pointAffine, int r82, PointTemp pointTemp) {
        PointExtended pointExtended = new PointExtended();
        pointCopy(pointAffine, pointExtended);
        PointExtended pointExtended2 = new PointExtended();
        pointAdd(pointExtended, pointExtended, pointExtended2, pointTemp);
        PointPrecompZ pointPrecompZ = new PointPrecompZ();
        int[] r12 = X25519Field.createTable(r82 * 4);
        int r42 = 0;
        int r52 = 0;
        while (true) {
            pointCopy(pointExtended, pointPrecompZ);
            X25519Field.copy(pointPrecompZ.ymx_h, 0, r12, r42);
            int r43 = r42 + 10;
            X25519Field.copy(pointPrecompZ.ypx_h, 0, r12, r43);
            int r44 = r43 + 10;
            X25519Field.copy(pointPrecompZ.xyd, 0, r12, r44);
            int r45 = r44 + 10;
            X25519Field.copy(pointPrecompZ.f11781z, 0, r12, r45);
            r42 = r45 + 10;
            r52++;
            if (r52 == r82) {
                return r12;
            }
            pointAdd(pointExtended, pointExtended2, pointExtended, pointTemp);
        }
    }

    private static void pointSetNeutral(PointAccum pointAccum) {
        X25519Field.zero(pointAccum.f11772x);
        X25519Field.one(pointAccum.f11773y);
        X25519Field.one(pointAccum.f11774z);
        X25519Field.zero(pointAccum.f11770u);
        X25519Field.one(pointAccum.f11771v);
    }

    public static void precompute() {
        synchronized (PRECOMP_LOCK) {
            if (PRECOMP_BASE_COMB != null) {
                return;
            }
            PointExtended[] pointExtendedArr = new PointExtended[96];
            PointTemp pointTemp = new PointTemp();
            PointAffine pointAffine = new PointAffine();
            int[] r6 = B_x;
            X25519Field.copy(r6, 0, pointAffine.f11775x, 0);
            int[] r72 = B_y;
            X25519Field.copy(r72, 0, pointAffine.f11776y, 0);
            pointPrecompute(pointAffine, pointExtendedArr, 0, 16, pointTemp);
            PointAffine pointAffine2 = new PointAffine();
            X25519Field.copy(B128_x, 0, pointAffine2.f11775x, 0);
            X25519Field.copy(B128_y, 0, pointAffine2.f11776y, 0);
            pointPrecompute(pointAffine2, pointExtendedArr, 16, 16, pointTemp);
            PointAccum pointAccum = new PointAccum();
            X25519Field.copy(r6, 0, pointAccum.f11772x, 0);
            X25519Field.copy(r72, 0, pointAccum.f11773y, 0);
            X25519Field.one(pointAccum.f11774z);
            X25519Field.copy(pointAccum.f11772x, 0, pointAccum.f11770u, 0);
            X25519Field.copy(pointAccum.f11773y, 0, pointAccum.f11771v, 0);
            int r62 = 4;
            PointExtended[] pointExtendedArr2 = new PointExtended[4];
            for (int r10 = 0; r10 < 4; r10++) {
                pointExtendedArr2[r10] = new PointExtended();
            }
            PointExtended pointExtended = new PointExtended();
            int r12 = 0;
            int r13 = 32;
            while (r12 < 8) {
                int r15 = r13 + 1;
                PointExtended pointExtended2 = new PointExtended();
                pointExtendedArr[r13] = pointExtended2;
                int r132 = 0;
                while (r132 < r62) {
                    if (r132 == 0) {
                        pointCopy(pointAccum, pointExtended2);
                    } else {
                        pointCopy(pointAccum, pointExtended);
                        pointAdd(pointExtended2, pointExtended, pointExtended2, pointTemp);
                    }
                    pointDouble(pointAccum);
                    pointCopy(pointAccum, pointExtendedArr2[r132]);
                    if (r12 + r132 != 10) {
                        for (int r63 = 1; r63 < 8; r63++) {
                            pointDouble(pointAccum);
                        }
                    }
                    r132++;
                    r62 = 4;
                }
                int[] r64 = pointExtended2.f11778x;
                X25519Field.negate(r64, r64);
                int[] r65 = pointExtended2.f11777t;
                X25519Field.negate(r65, r65);
                r13 = r15;
                for (int r66 = 0; r66 < 3; r66++) {
                    int r82 = 1 << r66;
                    int r11 = 0;
                    while (r11 < r82) {
                        PointExtended pointExtended3 = new PointExtended();
                        pointExtendedArr[r13] = pointExtended3;
                        pointAdd(pointExtendedArr[r13 - r82], pointExtendedArr2[r66], pointExtended3, pointTemp);
                        r11++;
                        r13++;
                    }
                }
                r12++;
                r62 = 4;
            }
            invertDoubleZs(pointExtendedArr);
            PRECOMP_BASE_WNAF = new PointPrecomp[16];
            for (int r02 = 0; r02 < 16; r02++) {
                PointExtended pointExtended4 = pointExtendedArr[r02];
                PointPrecomp[] pointPrecompArr = PRECOMP_BASE_WNAF;
                PointPrecomp pointPrecomp = new PointPrecomp();
                pointPrecompArr[r02] = pointPrecomp;
                int[] r52 = pointExtended4.f11778x;
                X25519Field.mul(r52, pointExtended4.f11780z, r52);
                int[] r53 = pointExtended4.f11779y;
                X25519Field.mul(r53, pointExtended4.f11780z, r53);
                X25519Field.apm(pointExtended4.f11779y, pointExtended4.f11778x, pointPrecomp.ypx_h, pointPrecomp.ymx_h);
                X25519Field.mul(pointExtended4.f11778x, pointExtended4.f11779y, pointPrecomp.xyd);
                int[] r32 = pointPrecomp.xyd;
                X25519Field.mul(r32, C_d4, r32);
                X25519Field.normalize(pointPrecomp.ymx_h);
                X25519Field.normalize(pointPrecomp.ypx_h);
                X25519Field.normalize(pointPrecomp.xyd);
            }
            PRECOMP_BASE128_WNAF = new PointPrecomp[16];
            for (int r03 = 0; r03 < 16; r03++) {
                PointExtended pointExtended5 = pointExtendedArr[16 + r03];
                PointPrecomp[] pointPrecompArr2 = PRECOMP_BASE128_WNAF;
                PointPrecomp pointPrecomp2 = new PointPrecomp();
                pointPrecompArr2[r03] = pointPrecomp2;
                int[] r54 = pointExtended5.f11778x;
                X25519Field.mul(r54, pointExtended5.f11780z, r54);
                int[] r55 = pointExtended5.f11779y;
                X25519Field.mul(r55, pointExtended5.f11780z, r55);
                X25519Field.apm(pointExtended5.f11779y, pointExtended5.f11778x, pointPrecomp2.ypx_h, pointPrecomp2.ymx_h);
                X25519Field.mul(pointExtended5.f11778x, pointExtended5.f11779y, pointPrecomp2.xyd);
                int[] r33 = pointPrecomp2.xyd;
                X25519Field.mul(r33, C_d4, r33);
                X25519Field.normalize(pointPrecomp2.ymx_h);
                X25519Field.normalize(pointPrecomp2.ypx_h);
                X25519Field.normalize(pointPrecomp2.xyd);
            }
            PRECOMP_BASE_COMB = X25519Field.createTable(192);
            PointPrecomp pointPrecomp3 = new PointPrecomp();
            int r34 = 0;
            for (int r112 = 32; r112 < 96; r112++) {
                PointExtended pointExtended6 = pointExtendedArr[r112];
                int[] r67 = pointExtended6.f11778x;
                X25519Field.mul(r67, pointExtended6.f11780z, r67);
                int[] r68 = pointExtended6.f11779y;
                X25519Field.mul(r68, pointExtended6.f11780z, r68);
                X25519Field.apm(pointExtended6.f11779y, pointExtended6.f11778x, pointPrecomp3.ypx_h, pointPrecomp3.ymx_h);
                X25519Field.mul(pointExtended6.f11778x, pointExtended6.f11779y, pointPrecomp3.xyd);
                int[] r56 = pointPrecomp3.xyd;
                X25519Field.mul(r56, C_d4, r56);
                X25519Field.normalize(pointPrecomp3.ymx_h);
                X25519Field.normalize(pointPrecomp3.ypx_h);
                X25519Field.normalize(pointPrecomp3.xyd);
                X25519Field.copy(pointPrecomp3.ymx_h, 0, PRECOMP_BASE_COMB, r34);
                int r35 = r34 + 10;
                X25519Field.copy(pointPrecomp3.ypx_h, 0, PRECOMP_BASE_COMB, r35);
                int r36 = r35 + 10;
                X25519Field.copy(pointPrecomp3.xyd, 0, PRECOMP_BASE_COMB, r36);
                r34 = r36 + 10;
            }
        }
    }

    private static void pruneScalar(byte[] bArr, int r32, byte[] bArr2) {
        System.arraycopy(bArr, r32, bArr2, 0, 32);
        bArr2[0] = (byte) (bArr2[0] & 248);
        byte b10 = (byte) (bArr2[31] & 127);
        bArr2[31] = b10;
        bArr2[31] = (byte) (b10 | 64);
    }

    private static void scalarMult(byte[] bArr, PointAffine pointAffine, PointAccum pointAccum) {
        int[] r12 = new int[8];
        Scalar25519.decode(bArr, r12);
        Scalar25519.toSignedDigits(256, r12);
        PointPrecompZ pointPrecompZ = new PointPrecompZ();
        PointTemp pointTemp = new PointTemp();
        int[] r6 = pointPrecomputeZ(pointAffine, 8, pointTemp);
        pointSetNeutral(pointAccum);
        int r02 = 63;
        while (true) {
            pointLookupZ(r12, r02, r6, pointPrecompZ);
            pointAdd(pointPrecompZ, pointAccum, pointTemp);
            r02--;
            if (r02 < 0) {
                return;
            }
            for (int r22 = 0; r22 < 4; r22++) {
                pointDouble(pointAccum);
            }
        }
    }

    private static void scalarMultBase(byte[] bArr, PointAccum pointAccum) {
        precompute();
        int[] r12 = new int[8];
        Scalar25519.decode(bArr, r12);
        Scalar25519.toSignedDigits(256, r12);
        groupCombBits(r12);
        PointPrecomp pointPrecomp = new PointPrecomp();
        PointTemp pointTemp = new PointTemp();
        pointSetNeutral(pointAccum);
        int r42 = 28;
        int r52 = 0;
        while (true) {
            int r6 = 0;
            while (r6 < 8) {
                int r72 = r12[r6] >>> r42;
                int r82 = (r72 >>> 3) & 1;
                pointLookup(r6, (r72 ^ (-r82)) & 7, pointPrecomp);
                int r53 = r52 ^ r82;
                X25519Field.cnegate(r53, pointAccum.f11772x);
                X25519Field.cnegate(r53, pointAccum.f11770u);
                pointAdd(pointPrecomp, pointAccum, pointTemp);
                r6++;
                r52 = r82;
            }
            r42 -= 4;
            if (r42 < 0) {
                X25519Field.cnegate(r52, pointAccum.f11772x);
                X25519Field.cnegate(r52, pointAccum.f11770u);
                return;
            }
            pointDouble(pointAccum);
        }
    }

    private static void scalarMultBaseEncoded(byte[] bArr, byte[] bArr2, int r42) {
        PointAccum pointAccum = new PointAccum();
        scalarMultBase(bArr, pointAccum);
        if (encodeResult(pointAccum, bArr2, r42) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void scalarMultBaseYZ(X25519.Friend friend, byte[] bArr, int r22, int[] r32, int[] r42) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by X25519");
        }
        byte[] bArr2 = new byte[32];
        pruneScalar(bArr, r22, bArr2);
        PointAccum pointAccum = new PointAccum();
        scalarMultBase(bArr2, pointAccum);
        if (checkPoint(pointAccum) == 0) {
            throw new IllegalStateException();
        }
        X25519Field.copy(pointAccum.f11773y, 0, r32, 0);
        X25519Field.copy(pointAccum.f11774z, 0, r42, 0);
    }

    private static void scalarMultOrderVar(PointAffine pointAffine, PointAccum pointAccum) {
        byte[] bArr = new byte[253];
        Scalar25519.getOrderWnafVar(4, bArr);
        PointPrecompZ[] pointPrecompZArr = new PointPrecompZ[4];
        PointTemp pointTemp = new PointTemp();
        pointPrecomputeZ(pointAffine, pointPrecompZArr, 4, pointTemp);
        pointSetNeutral(pointAccum);
        int r6 = 252;
        while (true) {
            byte b10 = bArr[r6];
            if (b10 != 0) {
                pointAddVar(b10 < 0, pointPrecompZArr[(b10 >> 1) ^ (b10 >> 31)], pointAccum, pointTemp);
            }
            r6--;
            if (r6 < 0) {
                return;
            } else {
                pointDouble(pointAccum);
            }
        }
    }

    private static void scalarMultStraus128Var(int[] r72, int[] r82, PointAffine pointAffine, int[] r10, PointAffine pointAffine2, PointAccum pointAccum) {
        precompute();
        byte[] bArr = new byte[256];
        int r12 = 128;
        byte[] bArr2 = new byte[128];
        byte[] bArr3 = new byte[128];
        Wnaf.getSignedVar(r72, 6, bArr);
        Wnaf.getSignedVar(r82, 4, bArr2);
        Wnaf.getSignedVar(r10, 4, bArr3);
        PointPrecompZ[] pointPrecompZArr = new PointPrecompZ[4];
        PointPrecompZ[] pointPrecompZArr2 = new PointPrecompZ[4];
        PointTemp pointTemp = new PointTemp();
        pointPrecomputeZ(pointAffine, pointPrecompZArr, 4, pointTemp);
        pointPrecomputeZ(pointAffine2, pointPrecompZArr2, 4, pointTemp);
        pointSetNeutral(pointAccum);
        do {
            r12--;
            if (r12 < 0) {
                break;
            }
        } while ((bArr[r12] | bArr[r12 + 128] | bArr2[r12] | bArr3[r12]) == 0);
        while (r12 >= 0) {
            byte b10 = bArr[r12];
            if (b10 != 0) {
                pointAddVar(b10 < 0, PRECOMP_BASE_WNAF[(b10 >> 1) ^ (b10 >> 31)], pointAccum, pointTemp);
            }
            byte b11 = bArr[r12 + 128];
            if (b11 != 0) {
                pointAddVar(b11 < 0, PRECOMP_BASE128_WNAF[(b11 >> 1) ^ (b11 >> 31)], pointAccum, pointTemp);
            }
            byte b12 = bArr2[r12];
            if (b12 != 0) {
                pointAddVar(b12 < 0, pointPrecompZArr[(b12 >> 1) ^ (b12 >> 31)], pointAccum, pointTemp);
            }
            byte b13 = bArr3[r12];
            if (b13 != 0) {
                pointAddVar(b13 < 0, pointPrecompZArr2[(b13 >> 1) ^ (b13 >> 31)], pointAccum, pointTemp);
            }
            pointDouble(pointAccum);
            r12--;
        }
        pointDouble(pointAccum);
        pointDouble(pointAccum);
    }

    public static void sign(byte[] bArr, int r10, byte[] bArr2, int r12, int r13, byte[] bArr3, int r15) {
        implSign(bArr, r10, null, (byte) 0, bArr2, r12, r13, bArr3, r15);
    }

    public static void sign(byte[] bArr, int r12, byte[] bArr2, int r14, byte[] bArr3, int r16, int r17, byte[] bArr4, int r19) {
        implSign(bArr, r12, bArr2, r14, null, (byte) 0, bArr3, r16, r17, bArr4, r19);
    }

    public static void sign(byte[] bArr, int r12, byte[] bArr2, int r14, byte[] bArr3, byte[] bArr4, int r17, int r18, byte[] bArr5, int r20) {
        implSign(bArr, r12, bArr2, r14, bArr3, (byte) 0, bArr4, r17, r18, bArr5, r20);
    }

    public static void sign(byte[] bArr, int r10, byte[] bArr2, byte[] bArr3, int r13, int r14, byte[] bArr4, int r16) {
        implSign(bArr, r10, bArr2, (byte) 0, bArr3, r13, r14, bArr4, r16);
    }

    public static void signPrehash(byte[] bArr, int r13, byte[] bArr2, int r15, byte[] bArr3, Digest digest, byte[] bArr4, int r19) {
        byte[] bArr5 = new byte[64];
        if (64 != digest.doFinal(bArr5, 0)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, r13, bArr2, r15, bArr3, (byte) 1, bArr5, 0, 64, bArr4, r19);
    }

    public static void signPrehash(byte[] bArr, int r12, byte[] bArr2, int r14, byte[] bArr3, byte[] bArr4, int r17, byte[] bArr5, int r19) {
        implSign(bArr, r12, bArr2, r14, bArr3, (byte) 1, bArr4, r17, 64, bArr5, r19);
    }

    public static void signPrehash(byte[] bArr, int r11, byte[] bArr2, Digest digest, byte[] bArr3, int r15) {
        byte[] bArr4 = new byte[64];
        if (64 != digest.doFinal(bArr4, 0)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, r11, bArr2, (byte) 1, bArr4, 0, 64, bArr3, r15);
    }

    public static void signPrehash(byte[] bArr, int r10, byte[] bArr2, byte[] bArr3, int r13, byte[] bArr4, int r15) {
        implSign(bArr, r10, bArr2, (byte) 1, bArr3, r13, 64, bArr4, r15);
    }

    public static boolean validatePublicKeyFull(byte[] bArr, int r32) {
        byte[] bArrCopy = copy(bArr, r32, 32);
        if (!checkPointFullVar(bArrCopy)) {
            return false;
        }
        PointAffine pointAffine = new PointAffine();
        if (decodePointVar(bArrCopy, false, pointAffine)) {
            return checkPointOrderVar(pointAffine);
        }
        return false;
    }

    public static PublicPoint validatePublicKeyFullExport(byte[] bArr, int r32) {
        byte[] bArrCopy = copy(bArr, r32, 32);
        if (!checkPointFullVar(bArrCopy)) {
            return null;
        }
        PointAffine pointAffine = new PointAffine();
        if (decodePointVar(bArrCopy, false, pointAffine) && checkPointOrderVar(pointAffine)) {
            return exportPoint(pointAffine);
        }
        return null;
    }

    public static boolean validatePublicKeyPartial(byte[] bArr, int r32) {
        byte[] bArrCopy = copy(bArr, r32, 32);
        if (checkPointFullVar(bArrCopy)) {
            return decodePointVar(bArrCopy, false, new PointAffine());
        }
        return false;
    }

    public static PublicPoint validatePublicKeyPartialExport(byte[] bArr, int r32) {
        byte[] bArrCopy = copy(bArr, r32, 32);
        if (!checkPointFullVar(bArrCopy)) {
            return null;
        }
        PointAffine pointAffine = new PointAffine();
        if (decodePointVar(bArrCopy, false, pointAffine)) {
            return exportPoint(pointAffine);
        }
        return null;
    }

    public static boolean verify(byte[] bArr, int r92, PublicPoint publicPoint, byte[] bArr2, int r12, int r13) {
        return implVerify(bArr, r92, publicPoint, null, (byte) 0, bArr2, r12, r13);
    }

    public static boolean verify(byte[] bArr, int r92, PublicPoint publicPoint, byte[] bArr2, byte[] bArr3, int r13, int r14) {
        return implVerify(bArr, r92, publicPoint, bArr2, (byte) 0, bArr3, r13, r14);
    }

    public static boolean verify(byte[] bArr, int r10, byte[] bArr2, int r12, byte[] bArr3, int r14, int r15) {
        return implVerify(bArr, r10, bArr2, r12, null, (byte) 0, bArr3, r14, r15);
    }

    public static boolean verify(byte[] bArr, int r10, byte[] bArr2, int r12, byte[] bArr3, byte[] bArr4, int r15, int r16) {
        return implVerify(bArr, r10, bArr2, r12, bArr3, (byte) 0, bArr4, r15, r16);
    }

    public static boolean verifyPrehash(byte[] bArr, int r10, PublicPoint publicPoint, byte[] bArr2, Digest digest) {
        byte[] bArr3 = new byte[64];
        if (64 == digest.doFinal(bArr3, 0)) {
            return implVerify(bArr, r10, publicPoint, bArr2, (byte) 1, bArr3, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean verifyPrehash(byte[] bArr, int r92, PublicPoint publicPoint, byte[] bArr2, byte[] bArr3, int r13) {
        return implVerify(bArr, r92, publicPoint, bArr2, (byte) 1, bArr3, r13, 64);
    }

    public static boolean verifyPrehash(byte[] bArr, int r11, byte[] bArr2, int r13, byte[] bArr3, Digest digest) {
        byte[] bArr4 = new byte[64];
        if (64 == digest.doFinal(bArr4, 0)) {
            return implVerify(bArr, r11, bArr2, r13, bArr3, (byte) 1, bArr4, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean verifyPrehash(byte[] bArr, int r10, byte[] bArr2, int r12, byte[] bArr3, byte[] bArr4, int r15) {
        return implVerify(bArr, r10, bArr2, r12, bArr3, (byte) 1, bArr4, r15, 64);
    }
}
