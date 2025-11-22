package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public abstract class WNafUtil {
    private static final int[] DEFAULT_WINDOW_SIZE_CUTOFFS = {13, 41, 121, 337, 897, 2305};
    private static final byte[] EMPTY_BYTES = new byte[0];
    private static final int[] EMPTY_INTS = new int[0];
    private static final ECPoint[] EMPTY_POINTS = new ECPoint[0];
    private static final int MAX_WIDTH = 16;
    public static final String PRECOMP_NAME = "bc_wnaf";

    public static void configureBasepoint(ECPoint eCPoint) {
        ECCurve curve = eCPoint.getCurve();
        if (curve == null) {
            return;
        }
        BigInteger order = curve.getOrder();
        final int r12 = Math.min(16, getWindowSize(order == null ? curve.getFieldSize() + 1 : order.bitLength()) + 3);
        curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.1
            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                WNafPreCompInfo wNafPreCompInfo = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                if (wNafPreCompInfo != null && wNafPreCompInfo.getConfWidth() == r12) {
                    wNafPreCompInfo.setPromotionCountdown(0);
                    return wNafPreCompInfo;
                }
                WNafPreCompInfo wNafPreCompInfo2 = new WNafPreCompInfo();
                wNafPreCompInfo2.setPromotionCountdown(0);
                wNafPreCompInfo2.setConfWidth(r12);
                if (wNafPreCompInfo != null) {
                    wNafPreCompInfo2.setPreComp(wNafPreCompInfo.getPreComp());
                    wNafPreCompInfo2.setPreCompNeg(wNafPreCompInfo.getPreCompNeg());
                    wNafPreCompInfo2.setTwice(wNafPreCompInfo.getTwice());
                    wNafPreCompInfo2.setWidth(wNafPreCompInfo.getWidth());
                }
                return wNafPreCompInfo2;
            }
        });
    }

    public static int[] generateCompactNaf(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        }
        if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        }
        BigInteger bigIntegerAdd = bigInteger.shiftLeft(1).add(bigInteger);
        int r22 = bigIntegerAdd.bitLength();
        int r32 = r22 >> 1;
        int[] r42 = new int[r32];
        BigInteger bigIntegerXor = bigIntegerAdd.xor(bigInteger);
        int r23 = r22 - 1;
        int r52 = 0;
        int r6 = 0;
        int r72 = 1;
        while (r72 < r23) {
            if (bigIntegerXor.testBit(r72)) {
                r42[r52] = r6 | ((bigInteger.testBit(r72) ? -1 : 1) << 16);
                r72++;
                r52++;
                r6 = 1;
            } else {
                r6++;
            }
            r72++;
        }
        int r10 = r52 + 1;
        r42[r52] = 65536 | r6;
        return r32 > r10 ? trim(r42, r10) : r42;
    }

    public static int[] generateCompactWindowNaf(int r13, BigInteger bigInteger) {
        if (r13 == 2) {
            return generateCompactNaf(bigInteger);
        }
        if (r13 < 2 || r13 > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        }
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        }
        if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        }
        int r12 = (bigInteger.bitLength() / r13) + 1;
        int[] r32 = new int[r12];
        int r42 = 1 << r13;
        int r52 = r42 - 1;
        int r6 = r42 >>> 1;
        int r82 = 0;
        int r92 = 0;
        boolean z10 = false;
        while (r82 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(r82) == z10) {
                r82++;
            } else {
                bigInteger = bigInteger.shiftRight(r82);
                int r11 = bigInteger.intValue() & r52;
                if (z10) {
                    r11++;
                }
                z10 = (r11 & r6) != 0;
                if (z10) {
                    r11 -= r42;
                }
                if (r92 > 0) {
                    r82--;
                }
                r32[r92] = r82 | (r11 << 16);
                r82 = r13;
                r92++;
            }
        }
        return r12 > r92 ? trim(r32, r92) : r32;
    }

    public static byte[] generateJSF(BigInteger bigInteger, BigInteger bigInteger2) {
        int r02 = Math.max(bigInteger.bitLength(), bigInteger2.bitLength()) + 1;
        byte[] bArr = new byte[r02];
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        int r6 = 0;
        while (true) {
            if ((r32 | r42) == 0 && bigInteger.bitLength() <= r52 && bigInteger2.bitLength() <= r52) {
                break;
            }
            int r72 = ((bigInteger.intValue() >>> r52) + r32) & 7;
            int r82 = ((bigInteger2.intValue() >>> r52) + r42) & 7;
            int r92 = r72 & 1;
            if (r92 != 0) {
                r92 -= r72 & 2;
                if (r72 + r92 == 4 && (r82 & 3) == 2) {
                    r92 = -r92;
                }
            }
            int r12 = r82 & 1;
            if (r12 != 0) {
                r12 -= r82 & 2;
                if (r82 + r12 == 4 && (r72 & 3) == 2) {
                    r12 = -r12;
                }
            }
            if ((r32 << 1) == r92 + 1) {
                r32 ^= 1;
            }
            if ((r42 << 1) == r12 + 1) {
                r42 ^= 1;
            }
            r52++;
            if (r52 == 30) {
                bigInteger = bigInteger.shiftRight(30);
                bigInteger2 = bigInteger2.shiftRight(30);
                r52 = 0;
            }
            bArr[r6] = (byte) ((r92 << 4) | (r12 & 15));
            r6++;
        }
        return r02 > r6 ? trim(bArr, r6) : bArr;
    }

    public static byte[] generateNaf(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        BigInteger bigIntegerAdd = bigInteger.shiftLeft(1).add(bigInteger);
        int r22 = bigIntegerAdd.bitLength() - 1;
        byte[] bArr = new byte[r22];
        BigInteger bigIntegerXor = bigIntegerAdd.xor(bigInteger);
        int r42 = 1;
        while (r42 < r22) {
            if (bigIntegerXor.testBit(r42)) {
                bArr[r42 - 1] = (byte) (bigInteger.testBit(r42) ? -1 : 1);
                r42++;
            }
            r42++;
        }
        bArr[r22 - 1] = 1;
        return bArr;
    }

    public static byte[] generateWindowNaf(int r11, BigInteger bigInteger) {
        if (r11 == 2) {
            return generateNaf(bigInteger);
        }
        if (r11 < 2 || r11 > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        }
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        int r02 = bigInteger.bitLength() + 1;
        byte[] bArr = new byte[r02];
        int r32 = 1 << r11;
        int r42 = r32 - 1;
        int r52 = r32 >>> 1;
        int r72 = 0;
        int r82 = 0;
        boolean z10 = false;
        while (r72 <= bigInteger.bitLength()) {
            if (bigInteger.testBit(r72) == z10) {
                r72++;
            } else {
                bigInteger = bigInteger.shiftRight(r72);
                int r10 = bigInteger.intValue() & r42;
                if (z10) {
                    r10++;
                }
                z10 = (r10 & r52) != 0;
                if (z10) {
                    r10 -= r32;
                }
                if (r82 > 0) {
                    r72--;
                }
                int r83 = r82 + r72;
                bArr[r83] = (byte) r10;
                r82 = r83 + 1;
                r72 = r11;
            }
        }
        return r02 > r82 ? trim(bArr, r82) : bArr;
    }

    public static int getNafWeight(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static WNafPreCompInfo getWNafPreCompInfo(ECPoint eCPoint) {
        return getWNafPreCompInfo(eCPoint.getCurve().getPreCompInfo(eCPoint, PRECOMP_NAME));
    }

    public static WNafPreCompInfo getWNafPreCompInfo(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof WNafPreCompInfo) {
            return (WNafPreCompInfo) preCompInfo;
        }
        return null;
    }

    public static int getWindowSize(int r22) {
        return getWindowSize(r22, DEFAULT_WINDOW_SIZE_CUTOFFS, 16);
    }

    public static int getWindowSize(int r12, int r22) {
        return getWindowSize(r12, DEFAULT_WINDOW_SIZE_CUTOFFS, r22);
    }

    public static int getWindowSize(int r12, int[] r22) {
        return getWindowSize(r12, r22, 16);
    }

    public static int getWindowSize(int r22, int[] r32, int r42) {
        int r02 = 0;
        while (r02 < r32.length && r22 >= r32[r02]) {
            r02++;
        }
        return Math.max(2, Math.min(r42, r02 + 2));
    }

    public static WNafPreCompInfo precompute(final ECPoint eCPoint, final int r32, final boolean z10) {
        final ECCurve curve = eCPoint.getCurve();
        return (WNafPreCompInfo) curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.2
            private boolean checkExisting(WNafPreCompInfo wNafPreCompInfo, int r42, int r52, boolean z11) {
                return wNafPreCompInfo != null && wNafPreCompInfo.getWidth() >= Math.max(wNafPreCompInfo.getConfWidth(), r42) && checkTable(wNafPreCompInfo.getPreComp(), r52) && (!z11 || checkTable(wNafPreCompInfo.getPreCompNeg(), r52));
            }

            private boolean checkTable(ECPoint[] eCPointArr, int r22) {
                return eCPointArr != null && eCPointArr.length >= r22;
            }

            /* JADX WARN: Removed duplicated region for block: B:45:0x00ef A[PHI: r14
              0x00ef: PHI (r14v6 org.bouncycastle.math.ec.ECPoint) = 
              (r14v4 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
              (r14v9 org.bouncycastle.math.ec.ECPoint)
             binds: [B:28:0x0091, B:30:0x009d, B:32:0x00a5, B:34:0x00af, B:40:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:58:0x0117 A[LOOP:1: B:57:0x0115->B:58:0x0117, LOOP_END] */
            @Override // org.bouncycastle.math.ec.PreCompCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.bouncycastle.math.ec.PreCompInfo precompute(org.bouncycastle.math.ec.PreCompInfo r14) {
                /*
                    Method dump skipped, instructions count: 303
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.math.ec.WNafUtil.AnonymousClass2.precompute(org.bouncycastle.math.ec.PreCompInfo):org.bouncycastle.math.ec.PreCompInfo");
            }
        });
    }

    public static WNafPreCompInfo precomputeWithPointMap(ECPoint eCPoint, final ECPointMap eCPointMap, final WNafPreCompInfo wNafPreCompInfo, final boolean z10) {
        return (WNafPreCompInfo) eCPoint.getCurve().precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.WNafUtil.3
            private boolean checkExisting(WNafPreCompInfo wNafPreCompInfo2, int r32, int r42, boolean z11) {
                return wNafPreCompInfo2 != null && wNafPreCompInfo2.getWidth() >= r32 && checkTable(wNafPreCompInfo2.getPreComp(), r42) && (!z11 || checkTable(wNafPreCompInfo2.getPreCompNeg(), r42));
            }

            private boolean checkTable(ECPoint[] eCPointArr, int r22) {
                return eCPointArr != null && eCPointArr.length >= r22;
            }

            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                WNafPreCompInfo wNafPreCompInfo2 = preCompInfo instanceof WNafPreCompInfo ? (WNafPreCompInfo) preCompInfo : null;
                int width = wNafPreCompInfo.getWidth();
                if (checkExisting(wNafPreCompInfo2, width, wNafPreCompInfo.getPreComp().length, z10)) {
                    wNafPreCompInfo2.decrementPromotionCountdown();
                    return wNafPreCompInfo2;
                }
                WNafPreCompInfo wNafPreCompInfo3 = new WNafPreCompInfo();
                wNafPreCompInfo3.setPromotionCountdown(wNafPreCompInfo.getPromotionCountdown());
                ECPoint twice = wNafPreCompInfo.getTwice();
                if (twice != null) {
                    wNafPreCompInfo3.setTwice(eCPointMap.map(twice));
                }
                ECPoint[] preComp = wNafPreCompInfo.getPreComp();
                int length = preComp.length;
                ECPoint[] eCPointArr = new ECPoint[length];
                for (int r52 = 0; r52 < preComp.length; r52++) {
                    eCPointArr[r52] = eCPointMap.map(preComp[r52]);
                }
                wNafPreCompInfo3.setPreComp(eCPointArr);
                wNafPreCompInfo3.setWidth(width);
                if (z10) {
                    ECPoint[] eCPointArr2 = new ECPoint[length];
                    for (int r42 = 0; r42 < length; r42++) {
                        eCPointArr2[r42] = eCPointArr[r42].negate();
                    }
                    wNafPreCompInfo3.setPreCompNeg(eCPointArr2);
                }
                return wNafPreCompInfo3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ECPoint[] resizeTable(ECPoint[] eCPointArr, int r32) {
        ECPoint[] eCPointArr2 = new ECPoint[r32];
        System.arraycopy(eCPointArr, 0, eCPointArr2, 0, eCPointArr.length);
        return eCPointArr2;
    }

    private static byte[] trim(byte[] bArr, int r32) {
        byte[] bArr2 = new byte[r32];
        System.arraycopy(bArr, 0, bArr2, 0, r32);
        return bArr2;
    }

    private static int[] trim(int[] r22, int r32) {
        int[] r02 = new int[r32];
        System.arraycopy(r22, 0, r02, 0, r32);
        return r02;
    }
}
