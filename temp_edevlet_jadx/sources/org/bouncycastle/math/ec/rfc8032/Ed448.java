package org.bouncycastle.math.ec.rfc8032;

import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.math.ec.rfc7748.X448;
import org.bouncycastle.math.ec.rfc7748.X448Field;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes2.dex */
public abstract class Ed448 {
    private static final int COORD_INTS = 14;
    private static final int C_d = 39081;
    private static final int POINT_BYTES = 57;
    private static final int PRECOMP_BLOCKS = 5;
    private static final int PRECOMP_MASK = 15;
    private static final int PRECOMP_POINTS = 16;
    private static final int PRECOMP_RANGE = 450;
    private static final int PRECOMP_SPACING = 18;
    private static final int PRECOMP_TEETH = 5;
    public static final int PREHASH_SIZE = 64;
    public static final int PUBLIC_KEY_SIZE = 57;
    private static final int SCALAR_BYTES = 57;
    private static final int SCALAR_INTS = 14;
    public static final int SECRET_KEY_SIZE = 57;
    public static final int SIGNATURE_SIZE = 114;
    private static final int WNAF_WIDTH_225 = 5;
    private static final int WNAF_WIDTH_BASE = 7;
    private static final byte[] DOM4_PREFIX = {83, 105, 103, 69, ISOFileInfo.FMD_BYTE, ISO7816.INS_DECREASE_STAMPED, ISO7816.INS_DECREASE_STAMPED, 56};
    private static final int[] P = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    private static final int[] B_x = {118276190, 40534716, 9670182, 135141552, 85017403, 259173222, 68333082, 171784774, 174973732, 15824510, 73756743, 57518561, 94773951, 248652241, 107736333, 82941708};
    private static final int[] B_y = {36764180, 8885695, 130592152, 20104429, 163904957, 30304195, 121295871, 5901357, 125344798, 171541512, 175338348, 209069246, 3626697, 38307682, 24032956, 110359655};
    private static final int[] B225_x = {110141154, 30892124, 160820362, 264558960, 217232225, 47722141, 19029845, 8326902, 183409749, 170134547, 90340180, 222600478, 61097333, 7431335, 198491505, 102372861};
    private static final int[] B225_y = {221945828, 50763449, 132637478, 109250759, 216053960, 61612587, 50649998, 138339097, 98949899, 248139835, 186410297, 126520782, 47339196, 78164062, 198835543, 169622712};
    private static final Object PRECOMP_LOCK = new Object();
    private static PointAffine[] PRECOMP_BASE_WNAF = null;
    private static PointAffine[] PRECOMP_BASE225_WNAF = null;
    private static int[] PRECOMP_BASE_COMB = null;

    public static final class Algorithm {
        public static final int Ed448 = 0;
        public static final int Ed448ph = 1;
    }

    public static class F extends X448Field {
        private F() {
        }
    }

    public static class PointAffine {

        /* renamed from: x, reason: collision with root package name */
        int[] f11784x;

        /* renamed from: y, reason: collision with root package name */
        int[] f11785y;

        private PointAffine() {
            this.f11784x = X448Field.create();
            this.f11785y = X448Field.create();
        }
    }

    public static class PointProjective {

        /* renamed from: x, reason: collision with root package name */
        int[] f11786x;

        /* renamed from: y, reason: collision with root package name */
        int[] f11787y;

        /* renamed from: z, reason: collision with root package name */
        int[] f11788z;

        private PointProjective() {
            this.f11786x = X448Field.create();
            this.f11787y = X448Field.create();
            this.f11788z = X448Field.create();
        }
    }

    public static class PointTemp {

        /* renamed from: r0, reason: collision with root package name */
        int[] f11789r0;

        /* renamed from: r1, reason: collision with root package name */
        int[] f11790r1;

        /* renamed from: r2, reason: collision with root package name */
        int[] f11791r2;

        /* renamed from: r3, reason: collision with root package name */
        int[] f11792r3;

        /* renamed from: r4, reason: collision with root package name */
        int[] f11793r4;

        /* renamed from: r5, reason: collision with root package name */
        int[] f11794r5;
        int[] r6;

        /* renamed from: r7, reason: collision with root package name */
        int[] f11795r7;

        private PointTemp() {
            this.f11789r0 = X448Field.create();
            this.f11790r1 = X448Field.create();
            this.f11791r2 = X448Field.create();
            this.f11792r3 = X448Field.create();
            this.f11793r4 = X448Field.create();
            this.f11794r5 = X448Field.create();
            this.r6 = X448Field.create();
            this.f11795r7 = X448Field.create();
        }
    }

    public static final class PublicPoint {
        final int[] data;

        public PublicPoint(int[] r12) {
            this.data = r12;
        }
    }

    private static byte[] calculateS(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] r12 = new int[28];
        Scalar448.decode(bArr, r12);
        int[] r22 = new int[14];
        Scalar448.decode(bArr2, r22);
        int[] r42 = new int[14];
        Scalar448.decode(bArr3, r42);
        Nat.mulAddTo(14, r22, r42, r12);
        byte[] bArr4 = new byte[114];
        Codec.encode32(r12, 0, 28, bArr4, 0);
        return Scalar448.reduce912(bArr4);
    }

    private static boolean checkContextVar(byte[] bArr) {
        return bArr != null && bArr.length < 256;
    }

    private static int checkPoint(PointAffine pointAffine) {
        int[] r02 = X448Field.create();
        int[] r12 = X448Field.create();
        int[] r22 = X448Field.create();
        X448Field.sqr(pointAffine.f11784x, r12);
        X448Field.sqr(pointAffine.f11785y, r22);
        X448Field.mul(r12, r22, r02);
        X448Field.add(r12, r22, r12);
        X448Field.mul(r02, C_d, r02);
        X448Field.subOne(r02);
        X448Field.add(r02, r12, r02);
        X448Field.normalize(r02);
        X448Field.normalize(r22);
        return X448Field.isZero(r02) & (~X448Field.isZero(r22));
    }

    private static int checkPoint(PointProjective pointProjective) {
        int[] r02 = X448Field.create();
        int[] r12 = X448Field.create();
        int[] r22 = X448Field.create();
        int[] r32 = X448Field.create();
        X448Field.sqr(pointProjective.f11786x, r12);
        X448Field.sqr(pointProjective.f11787y, r22);
        X448Field.sqr(pointProjective.f11788z, r32);
        X448Field.mul(r12, r22, r02);
        X448Field.add(r12, r22, r12);
        X448Field.mul(r12, r32, r12);
        X448Field.sqr(r32, r32);
        X448Field.mul(r02, C_d, r02);
        X448Field.sub(r02, r32, r02);
        X448Field.add(r02, r12, r02);
        X448Field.normalize(r02);
        X448Field.normalize(r22);
        X448Field.normalize(r32);
        return X448Field.isZero(r02) & (~X448Field.isZero(r22)) & (~X448Field.isZero(r32));
    }

    private static boolean checkPointFullVar(byte[] bArr) {
        if ((bArr[56] & 127) != 0) {
            return false;
        }
        int r02 = Codec.decode32(bArr, 52);
        int r22 = P[13] ^ r02;
        for (int r32 = 12; r32 > 0; r32--) {
            int r52 = Codec.decode32(bArr, r32 * 4);
            if (r22 == 0 && r52 - Integer.MIN_VALUE > P[r32] - Integer.MIN_VALUE) {
                return false;
            }
            r02 |= r52;
            r22 |= P[r32] ^ r52;
        }
        int r82 = Codec.decode32(bArr, 0);
        if (r02 != 0 || r82 - Integer.MIN_VALUE > -2147483647) {
            return r22 != 0 || r82 + Integer.MIN_VALUE < (P[0] - 1) + Integer.MIN_VALUE;
        }
        return false;
    }

    private static boolean checkPointOrderVar(PointAffine pointAffine) {
        PointProjective pointProjective = new PointProjective();
        scalarMultOrderVar(pointAffine, pointProjective);
        return normalizeToNeutralElementVar(pointProjective);
    }

    private static boolean checkPointVar(byte[] bArr) {
        if ((bArr[56] & 127) != 0) {
            return false;
        }
        if (Codec.decode32(bArr, 52) != P[13]) {
            return true;
        }
        Codec.decode32(bArr, 0, new int[14], 0, 14);
        return !Nat.gte(14, r3, r2);
    }

    private static byte[] copy(byte[] bArr, int r32, int r42) {
        byte[] bArr2 = new byte[r42];
        System.arraycopy(bArr, r32, bArr2, 0, r42);
        return bArr2;
    }

    public static Xof createPrehash() {
        return createXof();
    }

    private static Xof createXof() {
        return new SHAKEDigest(256);
    }

    private static boolean decodePointVar(byte[] bArr, boolean z10, PointAffine pointAffine) {
        int r02 = (bArr[56] & ISOFileInfo.DATA_BYTES1) >>> 7;
        X448Field.decode(bArr, pointAffine.f11785y);
        int[] r42 = X448Field.create();
        int[] r12 = X448Field.create();
        X448Field.sqr(pointAffine.f11785y, r42);
        X448Field.mul(r42, C_d, r12);
        X448Field.negate(r42, r42);
        X448Field.addOne(r42);
        X448Field.addOne(r12);
        if (!X448Field.sqrtRatioVar(r42, r12, pointAffine.f11784x)) {
            return false;
        }
        X448Field.normalize(pointAffine.f11784x);
        if (r02 == 1 && X448Field.isZeroVar(pointAffine.f11784x)) {
            return false;
        }
        int[] r22 = pointAffine.f11784x;
        if (z10 ^ (r02 != (r22[0] & 1))) {
            X448Field.negate(r22, r22);
            X448Field.normalize(pointAffine.f11784x);
        }
        return true;
    }

    private static void dom4(Xof xof, byte b10, byte[] bArr) {
        byte[] bArr2 = DOM4_PREFIX;
        int length = bArr2.length;
        int r22 = length + 2;
        int length2 = bArr.length + r22;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length);
        bArr3[length] = b10;
        bArr3[length + 1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr3, r22, bArr.length);
        xof.update(bArr3, 0, length2);
    }

    private static void encodePoint(PointAffine pointAffine, byte[] bArr, int r32) {
        X448Field.encode(pointAffine.f11785y, bArr, r32);
        bArr[(r32 + 57) - 1] = (byte) ((pointAffine.f11784x[0] & 1) << 7);
    }

    public static void encodePublicPoint(PublicPoint publicPoint, byte[] bArr, int r42) {
        X448Field.encode(publicPoint.data, 16, bArr, r42);
        bArr[(r42 + 57) - 1] = (byte) ((publicPoint.data[0] & 1) << 7);
    }

    private static int encodeResult(PointProjective pointProjective, byte[] bArr, int r42) {
        PointAffine pointAffine = new PointAffine();
        normalizeToAffine(pointProjective, pointAffine);
        int r22 = checkPoint(pointAffine);
        encodePoint(pointAffine, bArr, r42);
        return r22;
    }

    private static PublicPoint exportPoint(PointAffine pointAffine) {
        int[] r02 = new int[32];
        X448Field.copy(pointAffine.f11784x, 0, r02, 0);
        X448Field.copy(pointAffine.f11785y, 0, r02, 16);
        return new PublicPoint(r02);
    }

    public static void generatePrivateKey(SecureRandom secureRandom, byte[] bArr) {
        if (bArr.length != 57) {
            throw new IllegalArgumentException("k");
        }
        secureRandom.nextBytes(bArr);
    }

    public static PublicPoint generatePublicKey(byte[] bArr, int r52) {
        Xof xofCreateXof = createXof();
        byte[] bArr2 = new byte[114];
        xofCreateXof.update(bArr, r52, 57);
        xofCreateXof.doFinal(bArr2, 0, 114);
        byte[] bArr3 = new byte[57];
        pruneScalar(bArr2, 0, bArr3);
        PointProjective pointProjective = new PointProjective();
        scalarMultBase(bArr3, pointProjective);
        PointAffine pointAffine = new PointAffine();
        normalizeToAffine(pointProjective, pointAffine);
        if (checkPoint(pointAffine) != 0) {
            return exportPoint(pointAffine);
        }
        throw new IllegalStateException();
    }

    public static void generatePublicKey(byte[] bArr, int r52, byte[] bArr2, int r72) {
        Xof xofCreateXof = createXof();
        byte[] bArr3 = new byte[114];
        xofCreateXof.update(bArr, r52, 57);
        xofCreateXof.doFinal(bArr3, 0, 114);
        byte[] bArr4 = new byte[57];
        pruneScalar(bArr3, 0, bArr4);
        scalarMultBaseEncoded(bArr4, bArr2, r72);
    }

    private static int getWindow4(int[] r12, int r22) {
        return (r12[r22 >>> 3] >>> ((r22 & 7) << 2)) & 15;
    }

    private static void implSign(Xof xof, byte[] bArr, byte[] bArr2, byte[] bArr3, int r82, byte[] bArr4, byte b10, byte[] bArr5, int r12, int r13, byte[] bArr6, int r15) {
        dom4(xof, b10, bArr4);
        xof.update(bArr, 57, 57);
        xof.update(bArr5, r12, r13);
        xof.doFinal(bArr, 0, bArr.length);
        byte[] bArrReduce912 = Scalar448.reduce912(bArr);
        byte[] bArr7 = new byte[57];
        scalarMultBaseEncoded(bArrReduce912, bArr7, 0);
        dom4(xof, b10, bArr4);
        xof.update(bArr7, 0, 57);
        xof.update(bArr3, r82, 57);
        xof.update(bArr5, r12, r13);
        xof.doFinal(bArr, 0, bArr.length);
        byte[] bArrCalculateS = calculateS(bArrReduce912, Scalar448.reduce912(bArr), bArr2);
        System.arraycopy(bArr7, 0, bArr6, r15, 57);
        System.arraycopy(bArrCalculateS, 0, bArr6, r15 + 57, 57);
    }

    private static void implSign(byte[] bArr, int r14, byte[] bArr2, byte b10, byte[] bArr3, int r18, int r19, byte[] bArr4, int r21) {
        if (!checkContextVar(bArr2)) {
            throw new IllegalArgumentException("ctx");
        }
        Xof xofCreateXof = createXof();
        byte[] bArr5 = new byte[114];
        xofCreateXof.update(bArr, r14, 57);
        xofCreateXof.doFinal(bArr5, 0, 114);
        byte[] bArr6 = new byte[57];
        pruneScalar(bArr5, 0, bArr6);
        byte[] bArr7 = new byte[57];
        scalarMultBaseEncoded(bArr6, bArr7, 0);
        implSign(xofCreateXof, bArr5, bArr6, bArr7, 0, bArr2, b10, bArr3, r18, r19, bArr4, r21);
    }

    private static void implSign(byte[] bArr, int r14, byte[] bArr2, int r16, byte[] bArr3, byte b10, byte[] bArr4, int r20, int r21, byte[] bArr5, int r23) {
        if (!checkContextVar(bArr3)) {
            throw new IllegalArgumentException("ctx");
        }
        Xof xofCreateXof = createXof();
        byte[] bArr6 = new byte[114];
        xofCreateXof.update(bArr, r14, 57);
        xofCreateXof.doFinal(bArr6, 0, 114);
        byte[] bArr7 = new byte[57];
        pruneScalar(bArr6, 0, bArr7);
        implSign(xofCreateXof, bArr6, bArr7, bArr2, r16, bArr3, b10, bArr4, r20, r21, bArr5, r23);
    }

    private static boolean implVerify(byte[] bArr, int r15, PublicPoint publicPoint, byte[] bArr2, byte b10, byte[] bArr3, int r20, int r21) {
        if (!checkContextVar(bArr2)) {
            throw new IllegalArgumentException("ctx");
        }
        byte[] bArrCopy = copy(bArr, r15, 57);
        byte[] bArrCopy2 = copy(bArr, r15 + 57, 57);
        if (!checkPointVar(bArrCopy)) {
            return false;
        }
        int[] r6 = new int[14];
        if (!Scalar448.checkVar(bArrCopy2, r6)) {
            return false;
        }
        PointAffine pointAffine = new PointAffine();
        if (!decodePointVar(bArrCopy, true, pointAffine)) {
            return false;
        }
        PointAffine pointAffine2 = new PointAffine();
        X448Field.negate(publicPoint.data, pointAffine2.f11784x);
        X448Field.copy(publicPoint.data, 16, pointAffine2.f11785y, 0);
        byte[] bArr4 = new byte[57];
        encodePublicPoint(publicPoint, bArr4, 0);
        Xof xofCreateXof = createXof();
        byte[] bArr5 = new byte[114];
        dom4(xofCreateXof, b10, bArr2);
        xofCreateXof.update(bArrCopy, 0, 57);
        xofCreateXof.update(bArr4, 0, 57);
        xofCreateXof.update(bArr3, r20, r21);
        xofCreateXof.doFinal(bArr5, 0, 114);
        int[] r12 = new int[14];
        Scalar448.decode(Scalar448.reduce912(bArr5), r12);
        int[] r32 = new int[8];
        int[] r22 = new int[8];
        if (!Scalar448.reduceBasisVar(r12, r32, r22)) {
            throw new IllegalStateException();
        }
        Scalar448.multiply225Var(r6, r22, r6);
        PointProjective pointProjective = new PointProjective();
        scalarMultStraus225Var(r6, r32, pointAffine2, r22, pointAffine, pointProjective);
        return normalizeToNeutralElementVar(pointProjective);
    }

    private static boolean implVerify(byte[] bArr, int r15, byte[] bArr2, int r17, byte[] bArr3, byte b10, byte[] bArr4, int r21, int r22) {
        if (!checkContextVar(bArr3)) {
            throw new IllegalArgumentException("ctx");
        }
        byte[] bArrCopy = copy(bArr, r15, 57);
        byte[] bArrCopy2 = copy(bArr, r15 + 57, 57);
        byte[] bArrCopy3 = copy(bArr2, r17, 57);
        if (!checkPointVar(bArrCopy)) {
            return false;
        }
        int[] r6 = new int[14];
        if (!Scalar448.checkVar(bArrCopy2, r6) || !checkPointFullVar(bArrCopy3)) {
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
        Xof xofCreateXof = createXof();
        byte[] bArr5 = new byte[114];
        dom4(xofCreateXof, b10, bArr3);
        xofCreateXof.update(bArrCopy, 0, 57);
        xofCreateXof.update(bArrCopy3, 0, 57);
        xofCreateXof.update(bArr4, r21, r22);
        xofCreateXof.doFinal(bArr5, 0, 114);
        int[] r23 = new int[14];
        Scalar448.decode(Scalar448.reduce912(bArr5), r23);
        int[] r32 = new int[8];
        int[] r12 = new int[8];
        if (!Scalar448.reduceBasisVar(r23, r32, r12)) {
            throw new IllegalStateException();
        }
        Scalar448.multiply225Var(r6, r12, r6);
        PointProjective pointProjective = new PointProjective();
        scalarMultStraus225Var(r6, r32, pointAffine2, r12, pointAffine, pointProjective);
        return normalizeToNeutralElementVar(pointProjective);
    }

    private static void invertZs(PointProjective[] pointProjectiveArr) {
        int length = pointProjectiveArr.length;
        int[] r12 = X448Field.createTable(length);
        int[] r22 = X448Field.create();
        X448Field.copy(pointProjectiveArr[0].f11788z, 0, r22, 0);
        X448Field.copy(r22, 0, r12, 0);
        int r42 = 0;
        while (true) {
            r42++;
            if (r42 >= length) {
                break;
            }
            X448Field.mul(r22, pointProjectiveArr[r42].f11788z, r22);
            X448Field.copy(r22, 0, r12, r42 * 16);
        }
        X448Field.invVar(r22, r22);
        int r43 = r42 - 1;
        int[] r02 = X448Field.create();
        while (r43 > 0) {
            int r52 = r43 - 1;
            X448Field.copy(r12, r52 * 16, r02, 0);
            X448Field.mul(r02, r22, r02);
            X448Field.mul(r22, pointProjectiveArr[r43].f11788z, r22);
            X448Field.copy(r02, 0, pointProjectiveArr[r43].f11788z, 0);
            r43 = r52;
        }
        X448Field.copy(r22, 0, pointProjectiveArr[0].f11788z, 0);
    }

    private static void normalizeToAffine(PointProjective pointProjective, PointAffine pointAffine) {
        X448Field.inv(pointProjective.f11788z, pointAffine.f11785y);
        X448Field.mul(pointAffine.f11785y, pointProjective.f11786x, pointAffine.f11784x);
        int[] r02 = pointAffine.f11785y;
        X448Field.mul(r02, pointProjective.f11787y, r02);
        X448Field.normalize(pointAffine.f11784x);
        X448Field.normalize(pointAffine.f11785y);
    }

    private static boolean normalizeToNeutralElementVar(PointProjective pointProjective) {
        X448Field.normalize(pointProjective.f11786x);
        X448Field.normalize(pointProjective.f11787y);
        X448Field.normalize(pointProjective.f11788z);
        return X448Field.isZeroVar(pointProjective.f11786x) && !X448Field.isZeroVar(pointProjective.f11787y) && X448Field.areEqualVar(pointProjective.f11787y, pointProjective.f11788z);
    }

    private static void pointAdd(PointAffine pointAffine, PointProjective pointProjective, PointTemp pointTemp) {
        int[] r02 = pointTemp.f11790r1;
        int[] r12 = pointTemp.f11791r2;
        int[] r22 = pointTemp.f11792r3;
        int[] r32 = pointTemp.f11793r4;
        int[] r42 = pointTemp.f11794r5;
        int[] r52 = pointTemp.r6;
        int[] r10 = pointTemp.f11795r7;
        X448Field.sqr(pointProjective.f11788z, r02);
        X448Field.mul(pointAffine.f11784x, pointProjective.f11786x, r12);
        X448Field.mul(pointAffine.f11785y, pointProjective.f11787y, r22);
        X448Field.mul(r12, r22, r32);
        X448Field.mul(r32, C_d, r32);
        X448Field.add(r02, r32, r42);
        X448Field.sub(r02, r32, r52);
        X448Field.add(pointAffine.f11785y, pointAffine.f11784x, r10);
        X448Field.add(pointProjective.f11787y, pointProjective.f11786x, r32);
        X448Field.mul(r10, r32, r10);
        X448Field.add(r22, r12, r02);
        X448Field.sub(r22, r12, r32);
        X448Field.carry(r02);
        X448Field.sub(r10, r02, r10);
        X448Field.mul(r10, pointProjective.f11788z, r10);
        X448Field.mul(r32, pointProjective.f11788z, r32);
        X448Field.mul(r42, r10, pointProjective.f11786x);
        X448Field.mul(r32, r52, pointProjective.f11787y);
        X448Field.mul(r42, r52, pointProjective.f11788z);
    }

    private static void pointAdd(PointProjective pointProjective, PointProjective pointProjective2, PointTemp pointTemp) {
        int[] r02 = pointTemp.f11789r0;
        int[] r12 = pointTemp.f11790r1;
        int[] r22 = pointTemp.f11791r2;
        int[] r32 = pointTemp.f11792r3;
        int[] r42 = pointTemp.f11793r4;
        int[] r52 = pointTemp.f11794r5;
        int[] r6 = pointTemp.r6;
        int[] r11 = pointTemp.f11795r7;
        X448Field.mul(pointProjective.f11788z, pointProjective2.f11788z, r02);
        X448Field.sqr(r02, r12);
        X448Field.mul(pointProjective.f11786x, pointProjective2.f11786x, r22);
        X448Field.mul(pointProjective.f11787y, pointProjective2.f11787y, r32);
        X448Field.mul(r22, r32, r42);
        X448Field.mul(r42, C_d, r42);
        X448Field.add(r12, r42, r52);
        X448Field.sub(r12, r42, r6);
        X448Field.add(pointProjective.f11787y, pointProjective.f11786x, r11);
        X448Field.add(pointProjective2.f11787y, pointProjective2.f11786x, r42);
        X448Field.mul(r11, r42, r11);
        X448Field.add(r32, r22, r12);
        X448Field.sub(r32, r22, r42);
        X448Field.carry(r12);
        X448Field.sub(r11, r12, r11);
        X448Field.mul(r11, r02, r11);
        X448Field.mul(r42, r02, r42);
        X448Field.mul(r52, r11, pointProjective2.f11786x);
        X448Field.mul(r42, r6, pointProjective2.f11787y);
        X448Field.mul(r52, r6, pointProjective2.f11788z);
    }

    private static void pointAddVar(boolean z10, PointAffine pointAffine, PointProjective pointProjective, PointTemp pointTemp) {
        int[] r72;
        int[] r82;
        int[] r11;
        int[] r6;
        int[] r02 = pointTemp.f11790r1;
        int[] r12 = pointTemp.f11791r2;
        int[] r22 = pointTemp.f11792r3;
        int[] r32 = pointTemp.f11793r4;
        int[] r42 = pointTemp.f11794r5;
        int[] r52 = pointTemp.r6;
        int[] r14 = pointTemp.f11795r7;
        if (z10) {
            X448Field.sub(pointAffine.f11785y, pointAffine.f11784x, r14);
            r82 = r02;
            r72 = r32;
            r6 = r42;
            r11 = r52;
        } else {
            X448Field.add(pointAffine.f11785y, pointAffine.f11784x, r14);
            r72 = r02;
            r82 = r32;
            r11 = r42;
            r6 = r52;
        }
        X448Field.sqr(pointProjective.f11788z, r02);
        X448Field.mul(pointAffine.f11784x, pointProjective.f11786x, r12);
        X448Field.mul(pointAffine.f11785y, pointProjective.f11787y, r22);
        X448Field.mul(r12, r22, r32);
        X448Field.mul(r32, C_d, r32);
        X448Field.add(r02, r32, r11);
        X448Field.sub(r02, r32, r6);
        X448Field.add(pointProjective.f11787y, pointProjective.f11786x, r32);
        X448Field.mul(r14, r32, r14);
        X448Field.add(r22, r12, r72);
        X448Field.sub(r22, r12, r82);
        X448Field.carry(r72);
        X448Field.sub(r14, r02, r14);
        X448Field.mul(r14, pointProjective.f11788z, r14);
        X448Field.mul(r32, pointProjective.f11788z, r32);
        X448Field.mul(r42, r14, pointProjective.f11786x);
        X448Field.mul(r32, r52, pointProjective.f11787y);
        X448Field.mul(r42, r52, pointProjective.f11788z);
    }

    private static void pointAddVar(boolean z10, PointProjective pointProjective, PointProjective pointProjective2, PointTemp pointTemp) {
        int[] r82;
        int[] r92;
        int[] r12;
        int[] r72;
        int[] r02 = pointTemp.f11789r0;
        int[] r13 = pointTemp.f11790r1;
        int[] r22 = pointTemp.f11791r2;
        int[] r32 = pointTemp.f11792r3;
        int[] r42 = pointTemp.f11793r4;
        int[] r52 = pointTemp.f11794r5;
        int[] r6 = pointTemp.r6;
        int[] r15 = pointTemp.f11795r7;
        if (z10) {
            X448Field.sub(pointProjective.f11787y, pointProjective.f11786x, r15);
            r92 = r13;
            r82 = r42;
            r72 = r52;
            r12 = r6;
        } else {
            X448Field.add(pointProjective.f11787y, pointProjective.f11786x, r15);
            r82 = r13;
            r92 = r42;
            r12 = r52;
            r72 = r6;
        }
        X448Field.mul(pointProjective.f11788z, pointProjective2.f11788z, r02);
        X448Field.sqr(r02, r13);
        X448Field.mul(pointProjective.f11786x, pointProjective2.f11786x, r22);
        X448Field.mul(pointProjective.f11787y, pointProjective2.f11787y, r32);
        X448Field.mul(r22, r32, r42);
        X448Field.mul(r42, C_d, r42);
        X448Field.add(r13, r42, r12);
        X448Field.sub(r13, r42, r72);
        X448Field.add(pointProjective2.f11787y, pointProjective2.f11786x, r42);
        X448Field.mul(r15, r42, r15);
        X448Field.add(r32, r22, r82);
        X448Field.sub(r32, r22, r92);
        X448Field.carry(r82);
        X448Field.sub(r15, r13, r15);
        X448Field.mul(r15, r02, r15);
        X448Field.mul(r42, r02, r42);
        X448Field.mul(r52, r15, pointProjective2.f11786x);
        X448Field.mul(r42, r6, pointProjective2.f11787y);
        X448Field.mul(r52, r6, pointProjective2.f11788z);
    }

    private static void pointCopy(PointAffine pointAffine, PointProjective pointProjective) {
        X448Field.copy(pointAffine.f11784x, 0, pointProjective.f11786x, 0);
        X448Field.copy(pointAffine.f11785y, 0, pointProjective.f11787y, 0);
        X448Field.one(pointProjective.f11788z);
    }

    private static void pointCopy(PointProjective pointProjective, PointProjective pointProjective2) {
        X448Field.copy(pointProjective.f11786x, 0, pointProjective2.f11786x, 0);
        X448Field.copy(pointProjective.f11787y, 0, pointProjective2.f11787y, 0);
        X448Field.copy(pointProjective.f11788z, 0, pointProjective2.f11788z, 0);
    }

    private static void pointDouble(PointProjective pointProjective, PointTemp pointTemp) {
        int[] r02 = pointTemp.f11790r1;
        int[] r12 = pointTemp.f11791r2;
        int[] r22 = pointTemp.f11792r3;
        int[] r32 = pointTemp.f11793r4;
        int[] r42 = pointTemp.f11795r7;
        int[] r82 = pointTemp.f11789r0;
        X448Field.add(pointProjective.f11786x, pointProjective.f11787y, r02);
        X448Field.sqr(r02, r02);
        X448Field.sqr(pointProjective.f11786x, r12);
        X448Field.sqr(pointProjective.f11787y, r22);
        X448Field.add(r12, r22, r32);
        X448Field.carry(r32);
        X448Field.sqr(pointProjective.f11788z, r42);
        X448Field.add(r42, r42, r42);
        X448Field.carry(r42);
        X448Field.sub(r32, r42, r82);
        X448Field.sub(r02, r32, r02);
        X448Field.sub(r12, r22, r12);
        X448Field.mul(r02, r82, pointProjective.f11786x);
        X448Field.mul(r32, r12, pointProjective.f11787y);
        X448Field.mul(r32, r82, pointProjective.f11788z);
    }

    private static void pointLookup(int r6, int r72, PointAffine pointAffine) {
        int r62 = r6 * 16 * 2 * 16;
        for (int r22 = 0; r22 < 16; r22++) {
            int r32 = ((r22 ^ r72) - 1) >> 31;
            X448Field.cmov(r32, PRECOMP_BASE_COMB, r62, pointAffine.f11784x, 0);
            int r63 = r62 + 16;
            X448Field.cmov(r32, PRECOMP_BASE_COMB, r63, pointAffine.f11785y, 0);
            r62 = r63 + 16;
        }
    }

    private static void pointLookup(int[] r52, int r6, int[] r72, PointProjective pointProjective) {
        int window4 = getWindow4(r52, r6);
        int r62 = (window4 >>> 3) ^ 1;
        int r53 = (window4 ^ (-r62)) & 7;
        int r22 = 0;
        for (int r12 = 0; r12 < 8; r12++) {
            int r32 = ((r12 ^ r53) - 1) >> 31;
            X448Field.cmov(r32, r72, r22, pointProjective.f11786x, 0);
            int r23 = r22 + 16;
            X448Field.cmov(r32, r72, r23, pointProjective.f11787y, 0);
            int r24 = r23 + 16;
            X448Field.cmov(r32, r72, r24, pointProjective.f11788z, 0);
            r22 = r24 + 16;
        }
        X448Field.cnegate(r62, pointProjective.f11786x);
    }

    private static void pointLookup15(int[] r32, PointProjective pointProjective) {
        X448Field.copy(r32, 336, pointProjective.f11786x, 0);
        X448Field.copy(r32, 352, pointProjective.f11787y, 0);
        X448Field.copy(r32, 368, pointProjective.f11788z, 0);
    }

    private static void pointPrecompute(PointAffine pointAffine, PointProjective[] pointProjectiveArr, int r72, int r82, PointTemp pointTemp) {
        PointProjective pointProjective = new PointProjective();
        pointCopy(pointAffine, pointProjective);
        pointDouble(pointProjective, pointTemp);
        PointProjective pointProjective2 = new PointProjective();
        pointProjectiveArr[r72] = pointProjective2;
        pointCopy(pointAffine, pointProjective2);
        for (int r52 = 1; r52 < r82; r52++) {
            int r22 = r72 + r52;
            PointProjective pointProjective3 = new PointProjective();
            pointProjectiveArr[r22] = pointProjective3;
            pointCopy(pointProjectiveArr[r22 - 1], pointProjective3);
            pointAdd(pointProjective, pointProjectiveArr[r22], pointTemp);
        }
    }

    private static int[] pointPrecompute(PointProjective pointProjective, int r72, PointTemp pointTemp) {
        PointProjective pointProjective2 = new PointProjective();
        pointCopy(pointProjective, pointProjective2);
        PointProjective pointProjective3 = new PointProjective();
        pointCopy(pointProjective, pointProjective3);
        pointDouble(pointProjective3, pointTemp);
        int[] r6 = X448Field.createTable(r72 * 3);
        int r32 = 0;
        int r42 = 0;
        while (true) {
            X448Field.copy(pointProjective2.f11786x, 0, r6, r32);
            int r33 = r32 + 16;
            X448Field.copy(pointProjective2.f11787y, 0, r6, r33);
            int r34 = r33 + 16;
            X448Field.copy(pointProjective2.f11788z, 0, r6, r34);
            r32 = r34 + 16;
            r42++;
            if (r42 == r72) {
                return r6;
            }
            pointAdd(pointProjective3, pointProjective2, pointTemp);
        }
    }

    private static void pointSetNeutral(PointProjective pointProjective) {
        X448Field.zero(pointProjective.f11786x);
        X448Field.one(pointProjective.f11787y);
        X448Field.one(pointProjective.f11788z);
    }

    public static void precompute() {
        int r15;
        synchronized (PRECOMP_LOCK) {
            if (PRECOMP_BASE_COMB != null) {
                return;
            }
            PointProjective[] pointProjectiveArr = new PointProjective[144];
            PointTemp pointTemp = new PointTemp();
            PointAffine pointAffine = new PointAffine();
            X448Field.copy(B_x, 0, pointAffine.f11784x, 0);
            X448Field.copy(B_y, 0, pointAffine.f11785y, 0);
            pointPrecompute(pointAffine, pointProjectiveArr, 0, 32, pointTemp);
            PointAffine pointAffine2 = new PointAffine();
            X448Field.copy(B225_x, 0, pointAffine2.f11784x, 0);
            X448Field.copy(B225_y, 0, pointAffine2.f11785y, 0);
            pointPrecompute(pointAffine2, pointProjectiveArr, 32, 32, pointTemp);
            PointProjective pointProjective = new PointProjective();
            pointCopy(pointAffine, pointProjective);
            int r52 = 5;
            PointProjective[] pointProjectiveArr2 = new PointProjective[5];
            for (int r10 = 0; r10 < 5; r10++) {
                pointProjectiveArr2[r10] = new PointProjective();
            }
            int r11 = 0;
            int r12 = 64;
            while (r11 < r52) {
                int r13 = r12 + 1;
                PointProjective pointProjective2 = new PointProjective();
                pointProjectiveArr[r12] = pointProjective2;
                int r122 = 0;
                while (true) {
                    r15 = 1;
                    if (r122 >= r52) {
                        break;
                    }
                    if (r122 == 0) {
                        pointCopy(pointProjective, pointProjective2);
                    } else {
                        pointAdd(pointProjective, pointProjective2, pointTemp);
                    }
                    pointDouble(pointProjective, pointTemp);
                    pointCopy(pointProjective, pointProjectiveArr2[r122]);
                    if (r11 + r122 != 8) {
                        while (r15 < 18) {
                            pointDouble(pointProjective, pointTemp);
                            r15++;
                        }
                    }
                    r122++;
                    r52 = 5;
                }
                int[] r53 = pointProjective2.f11786x;
                X448Field.negate(r53, r53);
                r12 = r13;
                int r54 = 0;
                while (r54 < 4) {
                    int r102 = r15 << r54;
                    int r132 = 0;
                    while (r132 < r102) {
                        PointProjective pointProjective3 = new PointProjective();
                        pointProjectiveArr[r12] = pointProjective3;
                        pointCopy(pointProjectiveArr[r12 - r102], pointProjective3);
                        pointAdd(pointProjectiveArr2[r54], pointProjectiveArr[r12], pointTemp);
                        r132++;
                        r12++;
                    }
                    r54++;
                    r15 = 1;
                }
                r11++;
                r52 = 5;
            }
            invertZs(pointProjectiveArr);
            PRECOMP_BASE_WNAF = new PointAffine[32];
            for (int r32 = 0; r32 < 32; r32++) {
                PointProjective pointProjective4 = pointProjectiveArr[r32];
                PointAffine[] pointAffineArr = PRECOMP_BASE_WNAF;
                PointAffine pointAffine3 = new PointAffine();
                pointAffineArr[r32] = pointAffine3;
                X448Field.mul(pointProjective4.f11786x, pointProjective4.f11788z, pointAffine3.f11784x);
                X448Field.normalize(pointAffine3.f11784x);
                X448Field.mul(pointProjective4.f11787y, pointProjective4.f11788z, pointAffine3.f11785y);
                X448Field.normalize(pointAffine3.f11785y);
            }
            PRECOMP_BASE225_WNAF = new PointAffine[32];
            for (int r33 = 0; r33 < 32; r33++) {
                PointProjective pointProjective5 = pointProjectiveArr[32 + r33];
                PointAffine[] pointAffineArr2 = PRECOMP_BASE225_WNAF;
                PointAffine pointAffine4 = new PointAffine();
                pointAffineArr2[r33] = pointAffine4;
                X448Field.mul(pointProjective5.f11786x, pointProjective5.f11788z, pointAffine4.f11784x);
                X448Field.normalize(pointAffine4.f11784x);
                X448Field.mul(pointProjective5.f11787y, pointProjective5.f11788z, pointAffine4.f11785y);
                X448Field.normalize(pointAffine4.f11785y);
            }
            PRECOMP_BASE_COMB = X448Field.createTable(160);
            int r34 = 0;
            for (int r103 = 64; r103 < 144; r103++) {
                PointProjective pointProjective6 = pointProjectiveArr[r103];
                int[] r55 = pointProjective6.f11786x;
                X448Field.mul(r55, pointProjective6.f11788z, r55);
                X448Field.normalize(pointProjective6.f11786x);
                int[] r56 = pointProjective6.f11787y;
                X448Field.mul(r56, pointProjective6.f11788z, r56);
                X448Field.normalize(pointProjective6.f11787y);
                X448Field.copy(pointProjective6.f11786x, 0, PRECOMP_BASE_COMB, r34);
                int r35 = r34 + 16;
                X448Field.copy(pointProjective6.f11787y, 0, PRECOMP_BASE_COMB, r35);
                r34 = r35 + 16;
            }
        }
    }

    private static void pruneScalar(byte[] bArr, int r32, byte[] bArr2) {
        System.arraycopy(bArr, r32, bArr2, 0, 56);
        bArr2[0] = (byte) (bArr2[0] & 252);
        bArr2[55] = (byte) (bArr2[55] | ISOFileInfo.DATA_BYTES1);
        bArr2[56] = 0;
    }

    private static void scalarMult(byte[] bArr, PointProjective pointProjective, PointProjective pointProjective2) {
        int[] r02 = new int[15];
        Scalar448.decode(bArr, r02);
        Scalar448.toSignedDigits(449, r02, r02);
        PointProjective pointProjective3 = new PointProjective();
        PointTemp pointTemp = new PointTemp();
        int[] r12 = pointPrecompute(pointProjective, 8, pointTemp);
        pointLookup15(r12, pointProjective2);
        pointAdd(pointProjective, pointProjective2, pointTemp);
        int r6 = 111;
        while (true) {
            pointLookup(r02, r6, r12, pointProjective3);
            pointAdd(pointProjective3, pointProjective2, pointTemp);
            r6--;
            if (r6 < 0) {
                return;
            }
            for (int r32 = 0; r32 < 4; r32++) {
                pointDouble(pointProjective2, pointTemp);
            }
        }
    }

    private static void scalarMultBase(byte[] bArr, PointProjective pointProjective) {
        precompute();
        int[] r12 = new int[15];
        Scalar448.decode(bArr, r12);
        Scalar448.toSignedDigits(PRECOMP_RANGE, r12, r12);
        PointAffine pointAffine = new PointAffine();
        PointTemp pointTemp = new PointTemp();
        pointSetNeutral(pointProjective);
        int r22 = 17;
        while (true) {
            int r6 = r22;
            for (int r52 = 0; r52 < 5; r52++) {
                int r92 = 0;
                for (int r82 = 0; r82 < 5; r82++) {
                    r92 = (r92 & (~(1 << r82))) ^ ((r12[r6 >>> 5] >>> (r6 & 31)) << r82);
                    r6 += 18;
                }
                int r72 = (r92 >>> 4) & 1;
                pointLookup(r52, ((-r72) ^ r92) & 15, pointAffine);
                X448Field.cnegate(r72, pointAffine.f11784x);
                pointAdd(pointAffine, pointProjective, pointTemp);
            }
            r22--;
            if (r22 < 0) {
                return;
            } else {
                pointDouble(pointProjective, pointTemp);
            }
        }
    }

    private static void scalarMultBaseEncoded(byte[] bArr, byte[] bArr2, int r42) {
        PointProjective pointProjective = new PointProjective();
        scalarMultBase(bArr, pointProjective);
        if (encodeResult(pointProjective, bArr2, r42) == 0) {
            throw new IllegalStateException();
        }
    }

    public static void scalarMultBaseXY(X448.Friend friend, byte[] bArr, int r22, int[] r32, int[] r42) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by X448");
        }
        byte[] bArr2 = new byte[57];
        pruneScalar(bArr, r22, bArr2);
        PointProjective pointProjective = new PointProjective();
        scalarMultBase(bArr2, pointProjective);
        if (checkPoint(pointProjective) == 0) {
            throw new IllegalStateException();
        }
        X448Field.copy(pointProjective.f11786x, 0, r32, 0);
        X448Field.copy(pointProjective.f11787y, 0, r42, 0);
    }

    private static void scalarMultOrderVar(PointAffine pointAffine, PointProjective pointProjective) {
        byte[] bArr = new byte[447];
        Scalar448.getOrderWnafVar(5, bArr);
        PointProjective[] pointProjectiveArr = new PointProjective[8];
        PointTemp pointTemp = new PointTemp();
        pointPrecompute(pointAffine, pointProjectiveArr, 0, 8, pointTemp);
        pointSetNeutral(pointProjective);
        int r72 = 446;
        while (true) {
            byte b10 = bArr[r72];
            if (b10 != 0) {
                pointAddVar(b10 < 0, pointProjectiveArr[(b10 >> 1) ^ (b10 >> 31)], pointProjective, pointTemp);
            }
            r72--;
            if (r72 < 0) {
                return;
            } else {
                pointDouble(pointProjective, pointTemp);
            }
        }
    }

    private static void scalarMultStraus225Var(int[] r72, int[] r82, PointAffine pointAffine, int[] r10, PointAffine pointAffine2, PointProjective pointProjective) {
        precompute();
        byte[] bArr = new byte[PRECOMP_RANGE];
        int r12 = 225;
        byte[] bArr2 = new byte[225];
        byte[] bArr3 = new byte[225];
        Wnaf.getSignedVar(r72, 7, bArr);
        Wnaf.getSignedVar(r82, 5, bArr2);
        Wnaf.getSignedVar(r10, 5, bArr3);
        PointProjective[] pointProjectiveArr = new PointProjective[8];
        PointProjective[] pointProjectiveArr2 = new PointProjective[8];
        PointTemp pointTemp = new PointTemp();
        pointPrecompute(pointAffine, pointProjectiveArr, 0, 8, pointTemp);
        pointPrecompute(pointAffine2, pointProjectiveArr2, 0, 8, pointTemp);
        pointSetNeutral(pointProjective);
        do {
            r12--;
            if (r12 < 0) {
                break;
            }
        } while ((bArr[r12] | bArr[r12 + 225] | bArr2[r12] | bArr3[r12]) == 0);
        while (r12 >= 0) {
            byte b10 = bArr[r12];
            if (b10 != 0) {
                pointAddVar(b10 < 0, PRECOMP_BASE_WNAF[(b10 >> 1) ^ (b10 >> 31)], pointProjective, pointTemp);
            }
            byte b11 = bArr[r12 + 225];
            if (b11 != 0) {
                pointAddVar(b11 < 0, PRECOMP_BASE225_WNAF[(b11 >> 1) ^ (b11 >> 31)], pointProjective, pointTemp);
            }
            byte b12 = bArr2[r12];
            if (b12 != 0) {
                pointAddVar(b12 < 0, pointProjectiveArr[(b12 >> 1) ^ (b12 >> 31)], pointProjective, pointTemp);
            }
            byte b13 = bArr3[r12];
            if (b13 != 0) {
                pointAddVar(b13 < 0, pointProjectiveArr2[(b13 >> 1) ^ (b13 >> 31)], pointProjective, pointTemp);
            }
            pointDouble(pointProjective, pointTemp);
            r12--;
        }
        pointDouble(pointProjective, pointTemp);
    }

    public static void sign(byte[] bArr, int r12, byte[] bArr2, int r14, byte[] bArr3, byte[] bArr4, int r17, int r18, byte[] bArr5, int r20) {
        implSign(bArr, r12, bArr2, r14, bArr3, (byte) 0, bArr4, r17, r18, bArr5, r20);
    }

    public static void sign(byte[] bArr, int r10, byte[] bArr2, byte[] bArr3, int r13, int r14, byte[] bArr4, int r16) {
        implSign(bArr, r10, bArr2, (byte) 0, bArr3, r13, r14, bArr4, r16);
    }

    public static void signPrehash(byte[] bArr, int r13, byte[] bArr2, int r15, byte[] bArr3, Xof xof, byte[] bArr4, int r19) {
        byte[] bArr5 = new byte[64];
        if (64 != xof.doFinal(bArr5, 0, 64)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, r13, bArr2, r15, bArr3, (byte) 1, bArr5, 0, 64, bArr4, r19);
    }

    public static void signPrehash(byte[] bArr, int r12, byte[] bArr2, int r14, byte[] bArr3, byte[] bArr4, int r17, byte[] bArr5, int r19) {
        implSign(bArr, r12, bArr2, r14, bArr3, (byte) 1, bArr4, r17, 64, bArr5, r19);
    }

    public static void signPrehash(byte[] bArr, int r11, byte[] bArr2, Xof xof, byte[] bArr3, int r15) {
        byte[] bArr4 = new byte[64];
        if (64 != xof.doFinal(bArr4, 0, 64)) {
            throw new IllegalArgumentException("ph");
        }
        implSign(bArr, r11, bArr2, (byte) 1, bArr4, 0, 64, bArr3, r15);
    }

    public static void signPrehash(byte[] bArr, int r10, byte[] bArr2, byte[] bArr3, int r13, byte[] bArr4, int r15) {
        implSign(bArr, r10, bArr2, (byte) 1, bArr3, r13, 64, bArr4, r15);
    }

    public static boolean validatePublicKeyFull(byte[] bArr, int r32) {
        byte[] bArrCopy = copy(bArr, r32, 57);
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
        byte[] bArrCopy = copy(bArr, r32, 57);
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
        byte[] bArrCopy = copy(bArr, r32, 57);
        if (checkPointFullVar(bArrCopy)) {
            return decodePointVar(bArrCopy, false, new PointAffine());
        }
        return false;
    }

    public static PublicPoint validatePublicKeyPartialExport(byte[] bArr, int r32) {
        byte[] bArrCopy = copy(bArr, r32, 57);
        if (!checkPointFullVar(bArrCopy)) {
            return null;
        }
        PointAffine pointAffine = new PointAffine();
        if (decodePointVar(bArrCopy, false, pointAffine)) {
            return exportPoint(pointAffine);
        }
        return null;
    }

    public static boolean verify(byte[] bArr, int r92, PublicPoint publicPoint, byte[] bArr2, byte[] bArr3, int r13, int r14) {
        return implVerify(bArr, r92, publicPoint, bArr2, (byte) 0, bArr3, r13, r14);
    }

    public static boolean verify(byte[] bArr, int r10, byte[] bArr2, int r12, byte[] bArr3, byte[] bArr4, int r15, int r16) {
        return implVerify(bArr, r10, bArr2, r12, bArr3, (byte) 0, bArr4, r15, r16);
    }

    public static boolean verifyPrehash(byte[] bArr, int r10, PublicPoint publicPoint, byte[] bArr2, Xof xof) {
        byte[] bArr3 = new byte[64];
        if (64 == xof.doFinal(bArr3, 0, 64)) {
            return implVerify(bArr, r10, publicPoint, bArr2, (byte) 1, bArr3, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean verifyPrehash(byte[] bArr, int r92, PublicPoint publicPoint, byte[] bArr2, byte[] bArr3, int r13) {
        return implVerify(bArr, r92, publicPoint, bArr2, (byte) 1, bArr3, r13, 64);
    }

    public static boolean verifyPrehash(byte[] bArr, int r11, byte[] bArr2, int r13, byte[] bArr3, Xof xof) {
        byte[] bArr4 = new byte[64];
        if (64 == xof.doFinal(bArr4, 0, 64)) {
            return implVerify(bArr, r11, bArr2, r13, bArr3, (byte) 1, bArr4, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    public static boolean verifyPrehash(byte[] bArr, int r10, byte[] bArr2, int r12, byte[] bArr3, byte[] bArr4, int r15) {
        return implVerify(bArr, r10, bArr2, r12, bArr3, (byte) 1, bArr4, r15, 64);
    }
}
