package org.bouncycastle.pqc.crypto.gemss;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.pqc.crypto.gemss.SecretKeyHFE;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class GeMSSEngine {
    final int ACCESS_last_equations8;
    Pointer Buffer_NB_WORD_GFqn;
    Pointer Buffer_NB_WORD_MUL;
    final boolean ENABLED_REMOVE_ODD_DEGREE;
    final int HFEDELTA;
    final int HFEDeg;
    final int HFEDegI;
    final int HFEDegJ;
    final int HFENr8;
    final int HFENr8c;
    int HFE_odd_degree;
    final int HFEm;
    final int HFEmq;
    final int HFEmq8;
    final int HFEmr;
    final int HFEmr8;
    final int HFEn;
    int HFEn1h_rightmost;
    int HFEn_1rightmost;
    final int HFEnq;
    final int HFEnr;
    final int HFEnv;
    final int HFEnvq;
    final int HFEnvr;
    final int HFEnvr8;
    final int HFEv;
    final int HFEvq;
    final int HFEvr;
    int II;
    int KP;
    int KX;
    final int LOST_BITS;
    int LTRIANGULAR_NV_SIZE;
    final int LTRIANGULAR_N_SIZE;
    final long MASK_GF2m;
    final long MASK_GF2n;
    final int MATRIXn_SIZE;
    final int MATRIXnv_SIZE;
    final int MLv_GFqn_SIZE;
    int MQv_GFqn_SIZE;
    final int NB_BYTES_EQUATION;
    final int NB_BYTES_GFqm;
    final int NB_BYTES_GFqn;
    final int NB_BYTES_GFqnv;
    int NB_COEFS_HFEPOLY;
    final int NB_ITE;
    int NB_MONOMIAL_PK;
    int NB_MONOMIAL_VINEGAR;
    int NB_UINT_HFEVPOLY;
    int NB_WORD_GF2m;
    int NB_WORD_GF2nv;
    final int NB_WORD_GF2nvm;
    int NB_WORD_GFqn;
    final int NB_WORD_GFqv;
    int NB_WORD_MMUL;
    final int NB_WORD_MUL;
    final int NB_WORD_UNCOMP_EQ;
    int POW_II;
    final int SIZE_DIGEST;
    final int SIZE_DIGEST_UINT;
    final int SIZE_ROW;
    final int SIZE_SEED_SK;
    final int SIZE_SIGN_UNCOMPRESSED;
    final int Sha3BitStrength;
    final int ShakeBitStrength;
    final int VAL_BITS_M;
    private int buffer;
    Mul_GF2x mul;
    private SecureRandom random;
    Rem_GF2n rem;
    SHA3Digest sha3Digest;
    final int NB_BITS_UINT = 64;
    final int LEN_UNROLLED_64 = 4;

    /* renamed from: org.bouncycastle.pqc.crypto.gemss.GeMSSEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams;

        static {
            int[] r02 = new int[FunctionParams.values().length];
            $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams = r02;
            try {
                r02[FunctionParams.N.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.NV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.V.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.M.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum FunctionParams {
        NV,
        V,
        N,
        M
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03b5 A[LOOP:0: B:172:0x03af->B:174:0x03b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03c6 A[LOOP:1: B:176:0x03be->B:178:0x03c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03ba A[EDGE_INSN: B:181:0x03ba->B:175:0x03ba BREAK  A[LOOP:0: B:172:0x03af->B:174:0x03b5], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GeMSSEngine(int r25, int r26, int r27, int r28, int r29, int r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.<init>(int, int, int, int, int, int, int, int):void");
    }

    private void CMP_AND_SWAP_CST_TIME(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        long jCMP_LT_UINT = 0;
        long jORBITS_UINT = 0;
        long j10 = 0;
        for (int r12 = this.NB_WORD_GFqn - 1; r12 > 0; r12--) {
            jORBITS_UINT |= GeMSSUtils.ORBITS_UINT(pointer2.get(r12) ^ pointer.get(r12));
            j10 += jORBITS_UINT;
        }
        int r13 = 0;
        while (true) {
            int r6 = this.NB_WORD_GFqn;
            if (r13 >= r6) {
                pointer3.setRangeFromXorAndMask_xor(pointer, pointer2, -jCMP_LT_UINT, r6);
                return;
            } else {
                jCMP_LT_UINT |= (-GeMSSUtils.NORBITS_UINT(r13 ^ j10)) & GeMSSUtils.CMP_LT_UINT(pointer2.get(r13), pointer.get(r13));
                r13++;
            }
        }
    }

    private void LOOPIR(Pointer pointer, Pointer pointer2, Pointer pointer3, int r17, int r18, int r19, int r20, boolean z10) {
        for (int r02 = 0; r02 < r17; r02++) {
            Pointer pointer4 = new Pointer(pointer3);
            int r11 = 1;
            while (r11 <= r18) {
                LOOPJR(pointer, pointer2, pointer4, 64, r20, r11);
                r11++;
            }
            if (z10) {
                LOOPJR(pointer, pointer2, pointer4, r19, r20, r11);
            }
            pointer2.move(r20);
        }
    }

    private void LOOPIR_INIT(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, int r13, int r14) {
        while (r13 < r14) {
            pointer.setRangeClear(0, this.NB_WORD_GFqn);
            pointer2.changeIndex(pointer3);
            LOOPK_COMPLETE(pointer, pointer4, pointer2, 0, this.HFEnvq);
            pointer4.move(this.NB_WORD_GF2nv);
            r13++;
        }
    }

    private void LOOPIR_LOOPK_COMPLETE(Pointer pointer, Pointer pointer2, Pointer pointer3, int r10, int r11) {
        while (r10 < r11) {
            LOOPK_COMPLETE(pointer, pointer2, pointer3, 0, this.HFEnvq);
            r10++;
        }
    }

    private void LOOPJR(Pointer pointer, Pointer pointer2, Pointer pointer3, int r82, int r92, int r10) {
        int r93 = Math.min(r92, r10);
        pointer.set(0L);
        for (int r12 = 0; r12 < r82; r12++) {
            pointer.setXor(GeMSSUtils.XORBITS_UINT(pointer2.getDotProduct(0, pointer3, 0, r93)) << r12);
            pointer3.move(r10);
        }
        pointer.moveIncremental();
    }

    private long LOOPJR_NOCST_64(Pointer pointer, PointerUnion pointerUnion, int r82, int r92, long j10, int r12, int r13) {
        while (r82 < r92) {
            if ((1 & j10) != 0) {
                pointer.setXorRange(0, pointerUnion, 0, r13);
            }
            pointerUnion.moveNextBytes(r12);
            j10 >>>= 1;
            r82++;
        }
        return j10;
    }

    private void LOOPJR_UNROLLED_64(Pointer pointer, PointerUnion pointerUnion, int r16, int r17, long j10, int r20, int r21) {
        int r32 = r16;
        long jLOOPJR_NOCST_64 = j10;
        while (r32 < (r17 - 4) + 1) {
            jLOOPJR_NOCST_64 = LOOPJR_NOCST_64(pointer, pointerUnion, 0, 4, jLOOPJR_NOCST_64, r20, r21);
            r32 += 4;
        }
        LOOPJR_NOCST_64(pointer, pointerUnion, r32, r17, jLOOPJR_NOCST_64, r20, r21);
    }

    private void LOOPKR(Pointer pointer, Pointer pointer2, long j10, int r82, int r92) {
        while (r82 < r92) {
            pointer2.setXorRangeAndMaskMove(pointer, this.NB_WORD_GFqn, -(1 & j10));
            j10 >>>= 1;
            r82++;
        }
    }

    private void LOOPK_COMPLETE(Pointer pointer, Pointer pointer2, Pointer pointer3, int r11, int r12) {
        while (r11 < r12) {
            LOOPKR(pointer3, pointer, pointer2.get(r11), 0, 64);
            r11++;
        }
        if (this.HFEnvr != 0) {
            LOOPKR(pointer3, pointer, pointer2.get(r12), 0, this.HFEnvr);
        }
        pointer.move(this.NB_WORD_GFqn);
    }

    private int chooseRootHFE_gf2nx(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.SIZE_DIGEST_UINT);
        Pointer pointer4 = new Pointer(((this.HFEDeg << 1) - 1) * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer((this.HFEDeg + 1) * this.NB_WORD_GFqn);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqn);
        pointer6.setRangeFromXor(complete_sparse_monic_gf2nxVar.poly, pointer2, this.NB_WORD_GFqn);
        int r02 = this.HFEDeg;
        if (r02 <= 34 || (this.HFEn > 196 && r02 < 256)) {
            frobeniusMap_multisqr_HFE_gf2nx(pointer4, complete_sparse_monic_gf2nxVar, pointer6);
        } else {
            int r32 = 2 << this.HFEDegI;
            pointer4.set(this.NB_WORD_GFqn * r32, 1L);
            divsqr_r_HFE_cstdeg_gf2nx(pointer4, r32, r32, this.HFEDeg, complete_sparse_monic_gf2nxVar, pointer6);
            for_sqr_divsqr(pointer4, this.HFEDegI + 1, this.HFEn, complete_sparse_monic_gf2nxVar, pointer6);
        }
        pointer4.setXor(this.NB_WORD_GFqn, 1L);
        int index = pointer5.getIndex();
        pointer5.copyFrom(complete_sparse_monic_gf2nxVar.poly, this.NB_WORD_GFqn);
        for_copy_move(pointer5, complete_sparse_monic_gf2nxVar);
        pointer5.changeIndex(index);
        pointer5.set(this.HFEDeg * this.NB_WORD_GFqn, 1L);
        pointer5.setXorRange(pointer2, this.NB_WORD_GFqn);
        int r15 = gcd_gf2nx(pointer5, this.HFEDeg, pointer4, pointer4.getD_for_not0_or_plus(this.NB_WORD_GFqn, this.HFEDeg - 1));
        if (this.buffer != 0) {
            pointer4.swap(pointer5);
        }
        if (pointer4.is0_gf2n(0, this.NB_WORD_GFqn) == 0) {
            return 0;
        }
        convMonic_gf2nx(pointer5, r15);
        Pointer pointer7 = new Pointer(this.NB_WORD_GFqn * r15);
        findRootsSplit_gf2nx(pointer7, pointer5, r15);
        if (r15 == 1) {
            pointer.copyFrom(pointer7, this.NB_WORD_GFqn);
        } else {
            fast_sort_gf2n(pointer7, r15);
            getSHA3Hash(pointer3, 0, this.Sha3BitStrength >>> 3, pointer2.toBytes(this.NB_BYTES_GFqn), 0, this.NB_BYTES_GFqn, new byte[this.Sha3BitStrength >>> 3]);
            int r12 = (int) remainderUnsigned(pointer3.get(), r15);
            int r03 = this.NB_WORD_GFqn;
            pointer.copyFrom(0, pointer7, r12 * r03, r03);
        }
        return r15;
    }

    private void choose_LOOPJR(Pointer pointer, PointerUnion pointerUnion, int r13, long j10, int r16, int r17) {
        int r42 = this.HFEnvr;
        if (r42 < 8) {
            LOOPJR_NOCST_64(pointer, pointerUnion, r13, r42, j10, r16, r17);
        } else {
            LOOPJR_UNROLLED_64(pointer, pointerUnion, r13, r42, j10, r16, r17);
        }
    }

    private long convMQ_last_uncompressL_gf2(Pointer pointer, PointerUnion pointerUnion) {
        long withCheck;
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int r02 = this.HFEnv - 1;
        int r42 = r02 >>> 6;
        int r03 = r02 & 63;
        int pk2Value = for_setpk2_end_move_plus(pointer, pointerUnion2, r42);
        if (r03 != 0) {
            pk2Value = setPk2Value(pointer, pointerUnion2, pk2Value, r42, r03 + 1);
        }
        int r04 = this.HFEnv;
        int r12 = this.LOST_BITS;
        int r22 = r04 - r12;
        int r43 = r22 >>> 6;
        int r23 = r22 & 63;
        if (r23 != 0) {
            int r72 = pk2Value & 63;
            if (r72 != 0) {
                int r82 = this.NB_MONOMIAL_PK;
                if (((((r82 - r12) + 7) >>> 3) & 7) != 0) {
                    int r05 = (r04 - ((64 - (((r82 - r12) - this.HFEnvr) & 63)) & 63)) >>> 6;
                    pointer.setRangePointerUnion_Check(pointerUnion2, r05, pk2Value);
                    pointer.set(r05, pointerUnion2.getWithCheck(r05) >>> r72);
                    if (r05 < r43) {
                        int r13 = r05 + 1;
                        long withCheck2 = pointerUnion2.getWithCheck(r13);
                        pointer.setXor(r05, withCheck2 << (64 - r72));
                        pointer.set(r13, withCheck2 >>> r72);
                    } else if (r23 + r72 > 64) {
                        pointer.setXor(r05, pointerUnion2.getWithCheck(r05 + 1) << (64 - r72));
                    }
                } else {
                    pointer.setRangePointerUnion(pointerUnion2, r43, r72);
                    pointer.set(r43, pointerUnion2.get(r43) >>> r72);
                    if (r23 + r72 > 64) {
                        withCheck = pointerUnion2.get(r43 + 1) << (64 - r72);
                        pointer.setXor(r43, withCheck);
                    }
                }
            } else if (((((this.NB_MONOMIAL_PK - r12) + 7) >>> 3) & 7) != 0) {
                pointer.setRangePointerUnion(pointerUnion2, r43);
                pointer.set(r43, pointerUnion2.getWithCheck(r43));
            } else {
                r43++;
                pointer.setRangePointerUnion(pointerUnion2, r43);
            }
        } else if (r43 != 0) {
            int r06 = pk2Value & 63;
            if (r06 == 0) {
                pointer.setRangePointerUnion(pointerUnion2, r43);
            } else if (((((this.NB_MONOMIAL_PK - r12) + 7) >>> 3) & 7) != 0) {
                r43--;
                pointer.setRangePointerUnion(pointerUnion2, r43, r06);
                pointer.set(r43, pointerUnion2.get(r43) >>> r06);
                withCheck = pointerUnion2.getWithCheck(r43 + 1) << (64 - r06);
                pointer.setXor(r43, withCheck);
            } else {
                pointer.setRangePointerUnion(pointerUnion2, r43, r06);
            }
        }
        return pointerUnion.get() & 1;
    }

    private long convMQ_uncompressL_gf2(Pointer pointer, PointerUnion pointerUnion) {
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int r32 = for_setpk2_end_move_plus(pointer, pointerUnion2, this.HFEnvq);
        int r02 = this.HFEnvr;
        if (r02 != 0) {
            setPk2Value(pointer, pointerUnion2, r32, this.HFEnvq, r02 + 1);
        }
        return pointerUnion.get() & 1;
    }

    private void convMonic_gf2nx(Pointer pointer, int r6) {
        Pointer pointer2 = new Pointer(this.NB_WORD_GFqn);
        int index = pointer.getIndex();
        pointer.move(this.NB_WORD_GFqn * r6);
        inv_gf2n(pointer2, pointer, 0);
        pointer.set1_gf2n(0, this.NB_WORD_GFqn);
        while (true) {
            r6--;
            if (r6 == -1) {
                pointer.changeIndex(index);
                return;
            } else {
                pointer.move(-this.NB_WORD_GFqn);
                mul_gf2n(pointer, pointer, pointer2);
            }
        }
    }

    private void copy_for_casct(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, Pointer pointer5, int r72, int r82) {
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        while (r72 > 1) {
            pointer4.changeIndex(pointer3, (r82 + r72) * this.NB_WORD_GFqn);
            CMP_AND_SWAP_CST_TIME(pointer, pointer4, pointer5);
            r72 >>>= 1;
        }
    }

    private void copy_move_matrix_move(Pointer pointer, Pointer pointer2, int r42) {
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer2.move(this.NB_WORD_GFqn);
        pointer.setXorMatrix(pointer2, this.NB_WORD_GFqn, r42);
        pointer2.move((this.HFEv + 1) * this.NB_WORD_GFqn);
    }

    private void div_q_monic_gf2nx(Pointer pointer, int r10, Pointer pointer2, int r12) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer();
        while (r10 >= r12) {
            int r102 = pointer.searchDegree(r10, r12, this.NB_WORD_GFqn);
            if (r102 < r12) {
                return;
            }
            pointer3.changeIndex(pointer, this.NB_WORD_GFqn * r102);
            int r42 = Math.max(0, (r12 << 1) - r102);
            pointer4.changeIndex(pointer, ((r102 - r12) + r42) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer4, pointer3, pointer2, r42, r12);
            r10 = r102 - 1;
        }
    }

    private void div_r_monic_cst_gf2nx(Pointer pointer, int r10, Pointer pointer2, int r12) {
        Pointer pointer3 = new Pointer();
        int index = pointer.getIndex();
        pointer.move(this.NB_WORD_GFqn * r10);
        while (r10 >= r12) {
            pointer3.changeIndex(pointer, (-r12) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer3, pointer, pointer2, 0, r12);
            pointer.move(-this.NB_WORD_GFqn);
            r10--;
        }
        pointer.changeIndex(index);
    }

    private int div_r_monic_gf2nx(Pointer pointer, int r10, Pointer pointer2, int r12) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer();
        while (r10 >= r12) {
            r10 = pointer.searchDegree(r10, r12, this.NB_WORD_GFqn);
            if (r10 < r12) {
                break;
            }
            pointer3.changeIndex(pointer, this.NB_WORD_GFqn * r10);
            pointer4.changeIndex(pointer3, (-r12) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer4, pointer3, pointer2, 0, r12);
            r10--;
        }
        if (r10 == -1) {
            r10++;
        }
        return pointer.searchDegree(r10, 1, this.NB_WORD_GFqn);
    }

    private void divsqr_r_HFE_cstdeg_gf2nx(Pointer pointer, int r52, int r6, int r72, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer(pointer, r52 * this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer();
        while (r6 >= r72) {
            pointer4.changeIndex(pointer3, (-this.HFEDeg) * this.NB_WORD_GFqn);
            mul_rem_xorrange(pointer4, pointer3, pointer2);
            for (int r53 = 1; r53 < this.NB_COEFS_HFEPOLY; r53++) {
                pointer4.move(complete_sparse_monic_gf2nxVar.L[r53]);
                mul_rem_xorrange(pointer4, pointer3, complete_sparse_monic_gf2nxVar.poly, this.NB_WORD_GFqn * r53);
            }
            pointer3.move(-this.NB_WORD_GFqn);
            r6--;
        }
    }

    private void dotProduct_gf2n(Pointer pointer, Pointer pointer2, Pointer pointer3, int r72) {
        Pointer pointer4 = new Pointer(this.NB_WORD_MUL);
        int index = pointer2.getIndex();
        int index2 = pointer3.getIndex();
        mul_move(pointer4, pointer2, pointer3);
        for_mul_xorrange_move(pointer4, pointer2, pointer3, r72 - 1);
        rem_gf2n(pointer, 0, pointer4);
        pointer2.changeIndex(index);
        pointer3.changeIndex(index2);
    }

    private void dotproduct_move_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int r42) {
        dotProduct_gf2n(pointer, pointer3, pointer2, r42);
        pointer.move(this.NB_WORD_GFqn);
        pointer2.move((r42 + this.HFEv + 1) * this.NB_WORD_GFqn);
    }

    private void evalMQShybrid8_uncomp_nocst_gf2_m(Pointer pointer, Pointer pointer2, PointerUnion pointerUnion, PointerUnion pointerUnion2) {
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion2);
        evalMQSnocst8_quo_gf2(pointer, pointer2, pointerUnion);
        if (this.HFEmr < 8) {
            pointer.set(this.HFEmq, 0L);
        }
        for (int r6 = this.HFEmr - this.HFEmr8; r6 < this.HFEmr; r6++) {
            pointer.setXor(this.HFEmq, evalMQnocst_unrolled_no_simd_gf2(pointer2, pointerUnion3) << r6);
            pointerUnion3.move(this.NB_WORD_UNCOMP_EQ);
        }
    }

    private void evalMQSnocst8_quo_gf2(Pointer pointer, Pointer pointer2, PointerUnion pointerUnion) {
        int r12;
        int r22;
        int r23;
        int r25;
        int r26;
        int r232;
        PointerUnion pointerUnion2;
        int r02;
        int r03 = this.HFEnv;
        int r13 = this.HFEm;
        if ((r13 >>> 3) != 0) {
            r13 = (r13 >>> 3) << 3;
        }
        int r122 = r13;
        int r14 = (r122 & 7) != 0 ? (r122 >>> 3) + 1 : r122 >>> 3;
        int r82 = (r14 >>> 3) + ((r14 & 7) != 0 ? 1 : 0);
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion);
        System.arraycopy(pointerUnion3.getArray(), 0, pointer.getArray(), pointer.getIndex(), r82);
        pointerUnion3.moveNextBytes(r14);
        int r52 = 0;
        while (true) {
            r12 = this.HFEnvq;
            if (r52 >= r12) {
                break;
            }
            int r20 = r03;
            long j10 = pointer2.get(r52);
            int r6 = 0;
            while (r6 < 64) {
                if ((j10 & 1) != 0) {
                    pointer.setXorRange(0, pointerUnion3, 0, r82);
                    pointerUnion3.moveNextBytes(r14);
                    r25 = r52;
                    r26 = r6;
                    PointerUnion pointerUnion4 = pointerUnion3;
                    r232 = r82;
                    LOOPJR_UNROLLED_64(pointer, pointerUnion3, r6 + 1, 64, j10 >>> 1, r14, r82);
                    int r83 = r25 + 1;
                    while (true) {
                        r02 = this.HFEnvq;
                        if (r83 >= r02) {
                            break;
                        }
                        LOOPJR_UNROLLED_64(pointer, pointerUnion4, 0, 64, pointer2.get(r83), r14, r232);
                        r83++;
                    }
                    if (this.HFEnvr != 0) {
                        choose_LOOPJR(pointer, pointerUnion4, 0, pointer2.get(r02), r14, r232);
                    }
                    pointerUnion2 = pointerUnion4;
                } else {
                    r25 = r52;
                    r26 = r6;
                    r232 = r82;
                    pointerUnion2 = pointerUnion3;
                    pointerUnion2.moveNextBytes(r20 * r14);
                }
                j10 >>>= 1;
                r6 = r26 + 1;
                r20--;
                pointerUnion3 = pointerUnion2;
                r82 = r232;
                r52 = r25;
            }
            r52++;
            r03 = r20;
            r82 = r82;
        }
        int r233 = r82;
        PointerUnion pointerUnion5 = pointerUnion3;
        if (this.HFEnvr != 0) {
            int r11 = r03;
            long j11 = pointer2.get(r12);
            int r72 = 0;
            while (r72 < this.HFEnvr) {
                if ((j11 & 1) != 0) {
                    int r62 = r233;
                    pointer.setXorRange(0, pointerUnion5, 0, r62);
                    pointerUnion5.moveNextBytes(r14);
                    r22 = r62;
                    r23 = r72;
                    choose_LOOPJR(pointer, pointerUnion5, r72 + 1, j11 >>> 1, r14, r22);
                } else {
                    r22 = r233;
                    r23 = r72;
                    pointerUnion5.moveNextBytes(r11 * r14);
                }
                j11 >>>= 1;
                r72 = r23 + 1;
                r11--;
                r233 = r22;
            }
        }
        int r222 = r233;
        int r04 = r122 & 63;
        if (r04 != 0) {
            pointer.setAnd(r222 - 1, (1 << r04) - 1);
        }
    }

    private long evalMQnocst_unrolled_no_simd_gf2(Pointer pointer, PointerUnion pointerUnion) {
        int r42;
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        long j10 = pointer.get();
        long dotProduct = 0;
        for (int r82 = 0; r82 < 64; r82++) {
            if ((1 & (j10 >>> r82)) != 0) {
                dotProduct ^= pointerUnion2.get(r82) & j10;
            }
        }
        pointerUnion2.move(64);
        int r32 = 1;
        while (true) {
            int r43 = this.NB_WORD_GF2nv;
            if (r32 >= r43) {
                return GeMSSUtils.XORBITS_UINT(dotProduct);
            }
            int r83 = r32 + 1;
            if (r43 != r83 || (r42 = this.HFEnvr) == 0) {
                r42 = 64;
            }
            long j11 = pointer.get(r32);
            for (int r33 = 0; r33 < r42; r33++) {
                if (((j11 >>> r33) & 1) != 0) {
                    dotProduct ^= pointerUnion2.getDotProduct(0, pointer, 0, r83);
                }
                pointerUnion2.move(r83);
            }
            r32 = r83;
        }
    }

    private void findRootsSplit_gf2nx(Pointer pointer, Pointer pointer2, int r13) {
        int r72;
        int r73;
        int r82;
        if (r13 == 1) {
            pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
            return;
        }
        if ((this.HFEn & 1) != 0 && r13 == 2) {
            findRootsSplit2_HT_gf2nx(pointer, pointer2);
            return;
        }
        int r22 = (r13 << 1) - 1;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn * r22);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn * r13);
        int r52 = r13 + 1;
        Pointer pointer5 = new Pointer(this.NB_WORD_GFqn * r52);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqn);
        while (true) {
            pointer3.setRangeClear(0, this.NB_WORD_GFqn * r22);
            pointer4.setRangeClear(0, this.NB_WORD_GFqn * r13);
            do {
                pointer4.fillRandom(this.NB_WORD_GFqn, this.random, this.NB_BYTES_GFqn);
                pointer4.setAnd((this.NB_WORD_GFqn << 1) - 1, this.MASK_GF2n);
                r72 = this.NB_WORD_GFqn;
            } while (pointer4.is0_gf2n(r72, r72) != 0);
            pointer5.copyFrom(pointer2, this.NB_WORD_GFqn * r52);
            traceMap_gf2nx(pointer4, pointer3, pointer5, r13);
            r73 = gcd_gf2nx(pointer5, r13, pointer4, pointer4.searchDegree(r13 - 1, 1, this.NB_WORD_GFqn));
            r82 = this.buffer;
            if (r73 != 0 && r73 != r13) {
                break;
            }
        }
        if (r82 != 0) {
            pointer4.swap(pointer5);
        }
        inv_gf2n(pointer6, pointer5, this.NB_WORD_GFqn * r73);
        int r02 = this.NB_WORD_GFqn;
        pointer5.set1_gf2n(r73 * r02, r02);
        for_mul(pointer5, pointer6, r73 - 1);
        div_q_monic_gf2nx(pointer2, r13, pointer5, r73);
        findRootsSplit_gf2nx(pointer, pointer5, r73);
        findRootsSplit_gf2nx(new Pointer(pointer, this.NB_WORD_GFqn * r73), new Pointer(pointer2, this.NB_WORD_GFqn * r73), r13 - r73);
    }

    private void for_and_xor_shift_incre_move(Pointer pointer, int r92, int r10) {
        long j10 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            pointer.setAnd(j10);
            pointer.setXor(1 << r22);
            j10 = (j10 << 1) + 1;
            pointer.move(r92);
        }
    }

    private void for_casct_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int r6, int r72) {
        int r02 = this.NB_WORD_GFqn * r72;
        int r12 = 0;
        while (r12 < r6) {
            CMP_AND_SWAP_CST_TIME(pointer, pointer2, pointer3);
            pointer.move(r02);
            pointer2.move(r02);
            r12 += r72;
        }
    }

    private void for_copy_move(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar) {
        for (int r02 = 1; r02 < this.NB_COEFS_HFEPOLY; r02++) {
            pointer.move(complete_sparse_monic_gf2nxVar.L[r02]);
            Pointer pointer2 = complete_sparse_monic_gf2nxVar.poly;
            int r22 = this.NB_WORD_GFqn;
            pointer.copyFrom(0, pointer2, r02 * r22, r22);
        }
    }

    private void for_mul(Pointer pointer, Pointer pointer2, int r52) {
        Pointer pointer3 = new Pointer(pointer, this.NB_WORD_GFqn * r52);
        while (r52 != -1) {
            mul_gf2n(pointer3, pointer3, pointer2);
            pointer3.move(-this.NB_WORD_GFqn);
            r52--;
        }
    }

    private void for_mul_rem_xor_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int r6, int r72) {
        int r02 = this.NB_WORD_GFqn * r6;
        while (r6 < r72) {
            mul_rem_xorrange(pointer, pointer2, pointer3, r02);
            pointer.move(this.NB_WORD_GFqn);
            r6++;
            r02 += this.NB_WORD_GFqn;
        }
    }

    private int for_setPK(byte[] bArr, byte[] bArr2, int r13, int r14, int r15) {
        bArr[r13] = (byte) (bArr2[r14] & 3);
        int pk = 2;
        for (int r02 = 2; r02 < r15; r02++) {
            int r12 = this.HFEnv;
            pk = setPK(bArr, bArr2, r02, r13, r14, pk, r12 - 1, r12 - r02);
        }
        return pk;
    }

    private int for_setpk2_end_move_plus(Pointer pointer, PointerUnion pointerUnion, int r11) {
        int r12 = 0;
        int r52 = 1;
        while (r12 < r11) {
            int pk2Value = setPk2Value(pointer, pointerUnion, r52, r12, 64);
            setPk2_endValue(pointer, pointerUnion, pk2Value, r12);
            r12++;
            pointerUnion.move(r12);
            pointer.move(r12);
            r52 = pk2Value + (r12 << 6);
        }
        return r52;
    }

    private void for_sqr_divsqr(Pointer pointer, int r10, int r11, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        while (r10 < r11) {
            sqr_gf2nx(pointer, this.HFEDeg - 1);
            int r52 = this.HFEDeg;
            divsqr_r_HFE_cstdeg_gf2nx(pointer, (r52 - 1) << 1, (r52 - 1) << 1, r52, complete_sparse_monic_gf2nxVar, pointer2);
            r10++;
        }
    }

    private void frobeniusMap_multisqr_HFE_gf2nx(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer(this.HFEDeg * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer();
        Pointer pointer6 = new Pointer(((this.KX * this.HFEDeg) + this.POW_II) * this.NB_WORD_GFqn);
        int r02 = (this.POW_II * this.KP) - this.HFEDeg;
        Pointer pointer7 = new Pointer(pointer6, this.NB_WORD_GFqn * r02);
        pointer7.copyFrom(pointer2, this.NB_WORD_GFqn);
        for_copy_move(pointer7, complete_sparse_monic_gf2nxVar);
        int r32 = r02 - 1;
        divsqr_r_HFE_cstdeg_gf2nx(pointer6, r32 + this.HFEDeg, r32, 0, complete_sparse_monic_gf2nxVar, pointer2);
        int r6 = this.KP + 1;
        while (true) {
            int r03 = this.HFEDeg;
            if (r6 >= r03) {
                break;
            }
            pointer7.changeIndex(pointer6, r03 * this.NB_WORD_GFqn);
            pointer7.setRangeClear(0, this.POW_II * this.NB_WORD_GFqn);
            int r04 = this.POW_II;
            int r22 = this.NB_WORD_GFqn;
            pointer7.copyFrom(r04 * r22, pointer6, 0, this.HFEDeg * r22);
            pointer6.changeIndex(pointer7);
            int r05 = this.POW_II;
            divsqr_r_HFE_cstdeg_gf2nx(pointer6, this.HFEDeg + (r05 - 1), r05 - 1, 0, complete_sparse_monic_gf2nxVar, pointer2);
            r6++;
        }
        pointer6.indexReset();
        int r06 = (1 << this.HFEDegI) - this.KP;
        int r23 = this.HFEDeg;
        int r33 = this.NB_WORD_GFqn;
        pointer.copyFrom(0, pointer6, r06 * r23 * r33, r23 * r33);
        int r07 = 0;
        while (true) {
            int r24 = this.HFEn;
            int r34 = this.HFEDegI;
            int r52 = this.II;
            if (r07 >= ((r24 - r34) - r52) / r52) {
                for_sqr_divsqr(pointer, 0, (r24 - r34) % r52, complete_sparse_monic_gf2nxVar, pointer2);
                return;
            }
            loop_sqr(pointer4, pointer);
            for (int r25 = 1; r25 < this.II; r25++) {
                loop_sqr(pointer4, pointer4);
            }
            pointer5.changeIndex(pointer4, this.KP * this.NB_WORD_GFqn);
            pointer7.changeIndex(pointer6);
            pointer3.changeIndex(pointer);
            for (int r26 = 0; r26 < this.HFEDeg; r26++) {
                mul_gf2n(pointer3, pointer7, pointer5);
                pointer3.move(this.NB_WORD_GFqn);
                pointer7.move(this.NB_WORD_GFqn);
            }
            int r27 = this.KP;
            while (true) {
                r27++;
                if (r27 >= this.HFEDeg) {
                    break;
                }
                pointer5.move(this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer);
                for (int r35 = 0; r35 < this.HFEDeg; r35++) {
                    mul_rem_xorrange(pointer3, pointer7, pointer5);
                    pointer3.move(this.NB_WORD_GFqn);
                    pointer7.move(this.NB_WORD_GFqn);
                }
            }
            for (int r28 = 0; r28 < this.KP; r28++) {
                int r36 = this.POW_II * r28;
                int r42 = this.NB_WORD_GFqn;
                pointer.setXorRange(r36 * r42, pointer4, r28 * r42, r42);
            }
            r07++;
        }
    }

    private int gcd_gf2nx(Pointer pointer, int r72, Pointer pointer2, int r92) {
        int r82;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        this.buffer = 0;
        Pointer pointer4 = pointer;
        Pointer pointer5 = pointer2;
        int r83 = r72;
        while (r92 != 0) {
            if ((r92 << 1) > r83) {
                r82 = div_r_gf2nx(pointer4, r83, pointer5, r92);
            } else {
                inv_gf2n(pointer3, pointer5, this.NB_WORD_GFqn * r92);
                int r12 = this.NB_WORD_GFqn;
                pointer5.set1_gf2n(r92 * r12, r12);
                for_mul(pointer5, pointer3, r92 - 1);
                r82 = div_r_monic_gf2nx(pointer4, r83, pointer5, r92);
            }
            this.buffer = 1 - this.buffer;
            Pointer pointer6 = pointer4;
            pointer4 = pointer5;
            pointer5 = pointer6;
            int r42 = r92;
            r92 = r82;
            r83 = r42;
        }
        return r83;
    }

    private void getSHA3Hash(Pointer pointer, int r32, int r42, byte[] bArr, int r6, int r72, byte[] bArr2) {
        this.sha3Digest.update(bArr, r6, r72);
        this.sha3Digest.doFinal(bArr2, 0);
        pointer.fill(r32, bArr2, 0, r42);
    }

    private void initListDifferences_gf2nx(int[] r72) {
        r72[1] = this.NB_WORD_GFqn;
        int arrayL = 2;
        int r32 = 0;
        while (r32 < this.HFEDegI) {
            if (!this.ENABLED_REMOVE_ODD_DEGREE || (1 << r32) + 1 <= this.HFE_odd_degree) {
                r72[arrayL] = this.NB_WORD_GFqn;
                arrayL = setArrayL(r72, arrayL + 1, 0, r32);
            } else {
                if (r32 != 0) {
                    r72[arrayL] = this.NB_WORD_GFqn << 1;
                    arrayL++;
                }
                arrayL = setArrayL(r72, arrayL, 1, r32);
            }
            r32++;
        }
        int r42 = this.HFEDegJ;
        if (r42 != 0) {
            if (!this.ENABLED_REMOVE_ODD_DEGREE || (1 << r32) + 1 <= this.HFE_odd_degree) {
                r72[arrayL] = this.NB_WORD_GFqn;
                setArrayL(r72, arrayL + 1, 0, r42 - 1);
            } else {
                r72[arrayL] = this.NB_WORD_GFqn << 1;
                setArrayL(r72, arrayL + 1, 1, r42 - 1);
            }
        }
    }

    private void inv_gf2n(Pointer pointer, Pointer pointer2, int r82) {
        int index = pointer2.getIndex();
        pointer2.move(r82);
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        for (int r12 = this.HFEn_1rightmost - 1; r12 != -1; r12--) {
            int r32 = (this.HFEn - 1) >>> (r12 + 1);
            sqr_gf2n(pointer3, pointer);
            for (int r42 = 1; r42 < r32; r42++) {
                sqr_gf2n(pointer3, pointer3);
            }
            mul_gf2n(pointer, pointer, pointer3);
            if ((((this.HFEn - 1) >>> r12) & 1) != 0) {
                sqr_gf2n(pointer3, pointer);
                mul_gf2n(pointer, pointer2, pointer3);
            }
        }
        sqr_gf2n(pointer, pointer);
        pointer2.changeIndex(index);
    }

    private void loop_sqr(Pointer pointer, Pointer pointer2) {
        for (int r02 = 0; r02 < this.HFEDeg; r02++) {
            int r12 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer, r02 * r12, pointer2, r12 * r02);
        }
    }

    private int loop_xor_loop_move_xorandmask_move(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, int r20, int r21, int r22, int r23, int r24) {
        int r42 = r20;
        int r52 = 0;
        while (r52 < r22) {
            pointer.setXor(r21, 1 << r52);
            pointer2.changeIndex(pointer);
            pointer3.changeIndex(pointer4);
            for (int r10 = r42; r10 < r23; r10++) {
                pointer2.move(r24);
                pointer3.move((r10 >>> 6) + 1);
                pointer2.setXorRangeAndMask(pointer, r21 + 1, -((pointer3.get() >>> r52) & 1));
            }
            pointer.move(r24);
            pointer4.move(r21 + 1);
            r52++;
            r42++;
        }
        return r42;
    }

    private void mulMatricesLU_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int r11;
        int r12;
        boolean z10;
        int index = pointer.getIndex();
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (r02 == 1) {
            r11 = this.HFEnq;
            r12 = this.HFEnr;
            z10 = true;
        } else {
            if (r02 != 2) {
                throw new IllegalArgumentException("Invalid parameter for MULMATRICESLU_GF2");
            }
            int r03 = this.HFEnvq;
            int r22 = this.HFEnvr;
            r11 = r03;
            r12 = r22;
            z10 = r22 != 0;
        }
        Pointer pointer4 = new Pointer(pointer2);
        int r15 = 1;
        while (r15 <= r11) {
            LOOPIR(pointer, pointer4, pointer3, 64, r11, r12, r15, z10);
            r15++;
        }
        LOOPIR(pointer, pointer4, pointer3, r12, r11, r12, r15, z10);
        pointer.changeIndex(index);
    }

    private void precSignHFE(SecretKeyHFE secretKeyHFE, Pointer[] pointerArr, byte[] bArr) {
        precSignHFESeed(secretKeyHFE, bArr);
        initListDifferences_gf2nx(secretKeyHFE.F_struct.L);
        Pointer pointer = new Pointer(secretKeyHFE.F_HFEv);
        Pointer pointer2 = new Pointer(this.NB_COEFS_HFEPOLY * this.NB_WORD_GFqn);
        Pointer pointer3 = new Pointer(pointer, this.MQv_GFqn_SIZE);
        pointerArr[0] = pointer3;
        pointer.changeIndex(pointer3, this.MLv_GFqn_SIZE);
        Pointer pointer4 = new Pointer(pointer2, this.NB_WORD_GFqn * 2);
        int r32 = 0;
        while (true) {
            int r52 = 1;
            if (r32 >= this.HFEDegI) {
                break;
            }
            if ((1 << r32) + 1 <= this.HFE_odd_degree || !this.ENABLED_REMOVE_ODD_DEGREE) {
                r52 = 0;
            }
            int r42 = r32 - r52;
            pointer4.copyFrom(pointer, this.NB_WORD_GFqn * r42);
            pointer.move(this.NB_WORD_GFqn * r42);
            pointer4.move(r42 * this.NB_WORD_GFqn);
            r32++;
            pointerArr[r32] = new Pointer(pointer);
            pointer.move(this.MLv_GFqn_SIZE);
            pointer4.move(this.NB_WORD_GFqn);
        }
        int r92 = this.HFEDegJ;
        if (r92 != 0) {
            pointer4.copyFrom(pointer, (r92 - ((1 << r32) + 1 > this.HFE_odd_degree ? 1 : 0)) * this.NB_WORD_GFqn);
        }
        secretKeyHFE.F_struct.poly = new Pointer(pointer2);
    }

    private void precSignHFESeed(SecretKeyHFE secretKeyHFE, byte[] bArr) {
        int r02 = this.NB_UINT_HFEVPOLY + ((this.LTRIANGULAR_NV_SIZE + this.LTRIANGULAR_N_SIZE) << 1);
        secretKeyHFE.sk_uncomp = new Pointer(this.MATRIXnv_SIZE + r02 + this.MATRIXn_SIZE);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(this.ShakeBitStrength);
        sHAKEDigest.update(bArr, 0, this.SIZE_SEED_SK);
        int r6 = r02 << 3;
        byte[] bArr2 = new byte[r6];
        sHAKEDigest.doFinal(bArr2, 0, r6);
        secretKeyHFE.sk_uncomp.fill(0, bArr2, 0, r6);
        Pointer pointer = new Pointer(secretKeyHFE.sk_uncomp, r02);
        secretKeyHFE.S = pointer;
        secretKeyHFE.T = new Pointer(pointer, this.MATRIXnv_SIZE);
        Pointer pointer2 = new Pointer(secretKeyHFE.sk_uncomp);
        secretKeyHFE.F_HFEv = pointer2;
        cleanMonicHFEv_gf2nx(pointer2);
        Pointer pointer3 = new Pointer(secretKeyHFE.sk_uncomp, this.NB_UINT_HFEVPOLY);
        Pointer pointer4 = new Pointer(pointer3, this.LTRIANGULAR_NV_SIZE);
        FunctionParams functionParams = FunctionParams.NV;
        cleanLowerMatrix(pointer3, functionParams);
        cleanLowerMatrix(pointer4, functionParams);
        mulMatricesLU_gf2(secretKeyHFE.S, pointer3, pointer4, functionParams);
        pointer3.move(this.LTRIANGULAR_NV_SIZE << 1);
        pointer4.changeIndex(pointer3, this.LTRIANGULAR_N_SIZE);
        FunctionParams functionParams2 = FunctionParams.N;
        cleanLowerMatrix(pointer3, functionParams2);
        cleanLowerMatrix(pointer4, functionParams2);
        mulMatricesLU_gf2(secretKeyHFE.T, pointer3, pointer4, functionParams2);
    }

    private void rem_gf2n(Pointer pointer, int r32, Pointer pointer2) {
        this.rem.rem_gf2n(pointer.array, r32 + pointer.getIndex(), pointer2.array);
    }

    private static long remainderUnsigned(long j10, long j11) {
        return (j10 <= 0 || j11 <= 0) ? new BigInteger(1, Pack.longToBigEndian(j10)).mod(new BigInteger(1, Pack.longToBigEndian(j11))).longValue() : j10 % j11;
    }

    private int setArrayL(int[] r32, int r42, int r52, int r6) {
        while (r52 < r6) {
            r32[r42] = this.NB_WORD_GFqn << r52;
            r52++;
            r42++;
        }
        return r42;
    }

    private int setPK(byte[] bArr, byte[] bArr2, int r72, int r82, int r92, int r10, int r11, int r12) {
        while (r11 >= r12) {
            int r02 = (r10 >>> 3) + r82;
            bArr[r02] = (byte) (bArr[r02] ^ (((bArr2[(r72 >>> 3) + r92] >>> (r72 & 7)) & 1) << (r10 & 7)));
            r72 += r11;
            r11--;
            r10++;
        }
        this.buffer = r72;
        return r10;
    }

    private int setPk2Value(Pointer pointer, PointerUnion pointerUnion, int r92, int r10, int r11) {
        for (int r02 = 1; r02 < r11; r02++) {
            int r12 = r92 & 63;
            if (r12 != 0) {
                pointer.setRangePointerUnion(pointerUnion, r10, r12);
                pointer.set(r10, pointerUnion.get(r10) >>> r12);
                int r22 = r12 + r02;
                if (r22 > 64) {
                    pointer.setXor(r10, pointerUnion.get(r10 + 1) << (64 - r12));
                }
                if (r22 >= 64) {
                    pointerUnion.moveIncremental();
                }
            } else {
                pointer.setRangePointerUnion(pointerUnion, r10 + 1);
            }
            pointerUnion.move(r10);
            pointer.setAnd(r10, (1 << r02) - 1);
            pointer.move(r10 + 1);
            r92 += (r10 << 6) + r02;
        }
        return r92;
    }

    private void setPk2_endValue(Pointer pointer, PointerUnion pointerUnion, int r32, int r42) {
        int r33 = r32 & 63;
        int r43 = r42 + 1;
        if (r33 != 0) {
            pointer.setRangePointerUnion(pointerUnion, r43, r33);
        } else {
            pointer.setRangePointerUnion(pointerUnion, r43);
        }
    }

    private void special_buffer(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        int r22;
        int index = pointer2.getIndex();
        pointer2.move(((this.HFEv + 1) * this.NB_WORD_GFqn) << 1);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer.move(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(pointer2, (this.HFEv + 2) * this.NB_WORD_GFqn);
        int r23 = 2;
        while (r23 < this.SIZE_ROW - 1) {
            copy_move_matrix_move(pointer, pointer4, r23 - 1);
            r23++;
        }
        if (this.ENABLED_REMOVE_ODD_DEGREE) {
            while (r23 < this.SIZE_ROW - 1) {
                copy_move_matrix_move(pointer, pointer4, r23 - 2);
                r23++;
            }
        }
        pointer.set1_gf2n(0, this.NB_WORD_GFqn);
        pointer.setXorMatrix(pointer4, this.NB_WORD_GFqn, this.HFEDegJ);
        for (int r32 = 0; r32 < this.HFEn - 1; r32++) {
            mul_gf2n(pointer, pointer3, pointer2);
            pointer.move(this.NB_WORD_GFqn);
            pointer4.changeIndex(pointer2, (this.HFEv + 2) * this.NB_WORD_GFqn);
            int r24 = 2;
            while (r24 < this.HFEDegI) {
                dotproduct_move_move(pointer, pointer4, pointer3, r24);
                r24++;
            }
            if (this.ENABLED_REMOVE_ODD_DEGREE) {
                pointer3.move(this.NB_WORD_GFqn);
                while (r24 < this.SIZE_ROW - 1) {
                    dotproduct_move_move(pointer, pointer4, pointer3, r24 - 1);
                    r24++;
                }
                pointer3.move(-this.NB_WORD_GFqn);
            }
            int r25 = this.HFEDegJ;
            if (r25 == 0) {
                pointer.copyFrom(pointer3, this.NB_WORD_GFqn);
                pointer.move(this.NB_WORD_GFqn);
                r22 = this.SIZE_ROW;
            } else {
                dotProduct_gf2n(pointer, pointer3, pointer4, r25);
                pointer3.move(this.HFEDegJ * this.NB_WORD_GFqn);
                pointer.setXorRange_SelfMove(pointer3, this.NB_WORD_GFqn);
                r22 = this.SIZE_ROW - this.HFEDegJ;
            }
            pointer3.move(r22 * this.NB_WORD_GFqn);
        }
        pointer.indexReset();
        pointer2.changeIndex(index);
        pointer3.indexReset();
    }

    private void sqr_gf2n(Pointer pointer, int r42, Pointer pointer2, int r6) {
        this.mul.sqr_gf2x(this.Buffer_NB_WORD_MUL.array, pointer2.array, r6 + pointer2.cp);
        rem_gf2n(pointer, r42, this.Buffer_NB_WORD_MUL);
    }

    private void sqr_gf2n(Pointer pointer, Pointer pointer2) {
        this.mul.sqr_gf2x(this.Buffer_NB_WORD_MUL.array, pointer2.array, pointer2.cp);
        this.rem.rem_gf2n(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
    }

    private void sqr_gf2nx(Pointer pointer, int r72) {
        int r02 = this.NB_WORD_GFqn * r72;
        int index = pointer.getIndex();
        pointer.move(r02);
        Pointer pointer2 = new Pointer(pointer, r02);
        for (int r32 = 0; r32 < r72; r32++) {
            sqr_gf2n(pointer2, pointer);
            pointer.move(-this.NB_WORD_GFqn);
            pointer2.move(-this.NB_WORD_GFqn);
            pointer2.setRangeClear(0, this.NB_WORD_GFqn);
            pointer2.move(-this.NB_WORD_GFqn);
        }
        sqr_gf2n(pointer, pointer);
        pointer.changeIndex(index);
    }

    private void traceMap_gf2nx(Pointer pointer, Pointer pointer2, Pointer pointer3, int r10) {
        int r22;
        int r12 = 1;
        while (true) {
            r22 = 1 << r12;
            if (r22 >= r10) {
                break;
            }
            int r23 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer, r23 << r12, pointer, r23 << (r12 - 1));
            r12++;
        }
        if (r12 < this.HFEn) {
            int r32 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer2, r32 << r12, pointer, r32 << (r12 - 1));
            div_r_monic_cst_gf2nx(pointer2, r22, pointer3, r10);
            pointer.setXorRange(pointer2, this.NB_WORD_GFqn * r10);
            for (int r13 = r12 + 1; r13 < this.HFEn; r13++) {
                int r24 = r10 - 1;
                sqr_gf2nx(pointer2, r24);
                div_r_monic_cst_gf2nx(pointer2, r24 << 1, pointer3, r10);
                pointer.setXorRange(pointer2, this.NB_WORD_GFqn * r10);
            }
        }
    }

    private void uncompress_signHFE(Pointer pointer, byte[] bArr) {
        PointerUnion pointerUnion = new PointerUnion(pointer);
        int r11 = (1 << this.HFEnvr8) - 1;
        pointerUnion.fillBytes(0, bArr, 0, this.NB_BYTES_GFqnv);
        if (this.HFEnvr8 != 0) {
            pointerUnion.setAndByte(this.NB_BYTES_GFqnv - 1, r11);
        }
        int r22 = this.HFEnv;
        pointerUnion.moveNextBytes((this.NB_WORD_GF2nv << 3) + (this.HFEmq8 & 7));
        for (int r42 = 1; r42 < this.NB_ITE; r42++) {
            int r6 = r22 & 7;
            int r52 = Math.min(this.HFEDELTA + this.HFEv, (8 - r6) & 7);
            if (r6 != 0) {
                pointerUnion.setXorByte(((bArr[r22 >>> 3] & 255) >>> r6) << this.HFEmr8);
                int r62 = r52 - this.VAL_BITS_M;
                if (r62 >= 0) {
                    pointerUnion.moveNextByte();
                }
                if (r62 > 0) {
                    int r23 = r22 + this.VAL_BITS_M;
                    pointerUnion.setXorByte((bArr[r23 >>> 3] & 255) >>> (r23 & 7));
                    r22 = r23 + r62;
                } else {
                    r22 += r52;
                }
            }
            int r63 = (this.HFEDELTA + this.HFEv) - r52;
            int r53 = (this.HFEm + r52) & 7;
            if (r53 != 0) {
                for (int r72 = 0; r72 < ((r63 - 1) >>> 3); r72++) {
                    int r82 = r22 >>> 3;
                    pointerUnion.setXorByte((bArr[r82] & 255) << r53);
                    pointerUnion.moveNextByte();
                    pointerUnion.setXorByte((bArr[r82] & 255) >>> (8 - r53));
                    r22 += 8;
                }
                int r73 = r22 >>> 3;
                pointerUnion.setXorByte((bArr[r73] & 255) << r53);
                pointerUnion.moveNextByte();
                int r64 = ((r63 + 7) & 7) + 1;
                int r54 = 8 - r53;
                if (r64 > r54) {
                    pointerUnion.setByte((bArr[r73] & 255) >>> r54);
                    pointerUnion.moveNextByte();
                }
                r22 += r64;
            } else {
                for (int r55 = 0; r55 < ((r63 + 7) >>> 3); r55++) {
                    pointerUnion.setByte(bArr[r22 >>> 3]);
                    r22 += 8;
                    pointerUnion.moveNextByte();
                }
                r22 -= (8 - (r63 & 7)) & 7;
            }
            if (this.HFEnvr8 != 0) {
                pointerUnion.setAndByte(-1, r11);
            }
            pointerUnion.moveNextBytes(((8 - (this.NB_BYTES_GFqnv & 7)) & 7) + (this.HFEmq8 & 7));
        }
    }

    private void vmpv_xorrange_move(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        vecMatProduct(pointer, pointer2, new Pointer(pointer3, this.NB_WORD_GFqn), FunctionParams.V);
        pointer.setXorRange(pointer3, this.NB_WORD_GFqn);
        pointer3.move(this.MLv_GFqn_SIZE);
    }

    public void changeVariablesMQS64_gf2(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer();
        int r02 = this.HFEnv;
        Pointer pointer4 = new Pointer(r02 * r02 * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer, this.NB_WORD_GFqn);
        Pointer pointer6 = new Pointer(pointer4);
        Pointer pointer7 = new Pointer(pointer2);
        int r6 = 0;
        while (true) {
            int r52 = 64;
            if (r6 >= this.HFEnv) {
                break;
            }
            pointer3.changeIndex(pointer5);
            int r32 = 0;
            while (r32 < this.HFEnvq) {
                int r42 = 0;
                while (r42 < r52) {
                    int r19 = r32;
                    int r20 = r42;
                    LOOPKR(pointer3, pointer6, pointer7.get() >>> r42, r20, 64);
                    LOOPK_COMPLETE(pointer6, pointer7, pointer3, 1, this.HFEnvq - r19);
                    r42 = r20 + 1;
                    r6 = r6;
                    r32 = r19;
                    r52 = 64;
                }
                pointer7.moveIncremental();
                r32++;
                r52 = 64;
            }
            int r17 = r6;
            if (this.HFEnvr != 0) {
                for (int r15 = 0; r15 < this.HFEnvr; r15++) {
                    LOOPKR(pointer3, pointer6, pointer7.get() >>> r15, r15, this.HFEnvr);
                    pointer6.move(this.NB_WORD_GFqn);
                }
                pointer7.moveIncremental();
            }
            r6 = r17 + 1;
        }
        int r152 = 64;
        pointer5.changeIndex(pointer4);
        pointer6.changeIndex(pointer, this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(pointer2);
        int r53 = 0;
        while (r53 < this.HFEnvq) {
            int r43 = 0;
            while (r43 < r152) {
                pointer7.changeIndex(pointer8);
                int r18 = r43;
                int r192 = r53;
                Pointer pointer9 = pointer8;
                LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, r18, 64);
                for (int r62 = r192 + 1; r62 < this.HFEnvq; r62++) {
                    LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, 0, 64);
                }
                int r63 = this.HFEnvr;
                if (r63 != 0) {
                    LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, 0, r63);
                }
                pointer5.changeIndex(pointer3);
                pointer9.move(this.NB_WORD_GF2nv);
                r43 = r18 + 1;
                pointer8 = pointer9;
                r53 = r192;
                r152 = 64;
            }
            r53++;
            r152 = 64;
        }
        Pointer pointer10 = pointer8;
        if (this.HFEnvr != 0) {
            for (int r64 = 0; r64 < this.HFEnvr; r64++) {
                pointer7.changeIndex(pointer10);
                pointer3.changeIndex(pointer5);
                LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, r64, this.HFEnvr);
                pointer5.changeIndex(pointer3);
                pointer10.move(this.NB_WORD_GF2nv);
            }
        }
        pointer5.changeIndex(pointer4);
        pointer6.changeIndex(pointer, this.NB_WORD_GFqn);
        pointer7.changeIndex(pointer2);
        for (int r65 = 0; r65 < this.HFEnvq; r65++) {
            int r03 = 0;
            while (r03 < 64) {
                pointer6.move(this.NB_WORD_GFqn);
                pointer5.move(this.HFEnv * this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer5);
                int r153 = r03 + 1;
                LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, r153, 64);
                for (int r54 = r65 + 1; r54 < this.HFEnvq; r54++) {
                    LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, 0, 64);
                }
                int r55 = this.HFEnvr;
                if (r55 != 0) {
                    LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, 0, r55);
                }
                pointer7.move(this.NB_WORD_GF2nv);
                r03 = r153;
            }
        }
        if (this.HFEnvr != 0) {
            int r154 = 0;
            while (r154 < this.HFEnvr - 1) {
                pointer6.move(this.NB_WORD_GFqn);
                pointer5.move(this.HFEnv * this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer5);
                r154++;
                LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, r154, this.HFEnvr);
                pointer7.move(this.NB_WORD_GF2nv);
            }
        }
        pointer.indexReset();
        pointer2.indexReset();
    }

    public void cleanLowerMatrix(Pointer pointer, FunctionParams functionParams) {
        int r52;
        int r12;
        int r53 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        int r02 = 1;
        if (r53 == 1) {
            r52 = this.HFEnq;
            r12 = this.HFEnr;
        } else {
            if (r53 != 2) {
                throw new IllegalArgumentException("");
            }
            r52 = this.HFEnvq;
            r12 = this.HFEnvr;
        }
        Pointer pointer2 = new Pointer(pointer);
        while (r02 <= r52) {
            for_and_xor_shift_incre_move(pointer2, r02, 64);
            pointer2.moveIncremental();
            r02++;
        }
        for_and_xor_shift_incre_move(pointer2, r02, r12);
    }

    public void cleanMonicHFEv_gf2nx(Pointer pointer) {
        int r02 = this.NB_WORD_GFqn - 1;
        while (r02 < this.NB_UINT_HFEVPOLY) {
            pointer.setAnd(r02, this.MASK_GF2n);
            r02 += this.NB_WORD_GFqn;
        }
    }

    public void compress_signHFE(byte[] bArr, Pointer pointer) {
        int r82;
        byte[] bytes = pointer.toBytes(pointer.getLength() << 3);
        System.arraycopy(bytes, 0, bArr, 0, this.NB_BYTES_GFqnv);
        int r02 = this.HFEnv;
        int r22 = (this.NB_WORD_GF2nv << 3) + (this.HFEmq8 & 7);
        for (int r42 = 1; r42 < this.NB_ITE; r42++) {
            int r6 = r02 & 7;
            int r52 = Math.min(this.HFEDELTA + this.HFEv, (8 - r6) & 7);
            if (r6 != 0) {
                int r72 = this.HFEmr8;
                if (r72 != 0) {
                    int r83 = r02 >>> 3;
                    bArr[r83] = (byte) ((((bytes[r22] & 255) >>> r72) << r6) ^ bArr[r83]);
                    int r62 = this.VAL_BITS_M;
                    int r73 = r52 - r62;
                    if (r73 >= 0) {
                        r22++;
                    }
                    if (r73 > 0) {
                        int r03 = r02 + r62;
                        int r63 = r03 >>> 3;
                        bArr[r63] = (byte) (bArr[r63] ^ ((bytes[r22] & 255) << (r03 & 7)));
                        r02 = r03 + r73;
                    }
                } else {
                    int r74 = r02 >>> 3;
                    bArr[r74] = (byte) (((bytes[r22] & 255) << r6) ^ bArr[r74]);
                }
                r02 += r52;
            }
            int r64 = (this.HFEDELTA + this.HFEv) - r52;
            int r53 = (this.HFEm + r52) & 7;
            if (r53 != 0) {
                for (int r75 = 0; r75 < ((r64 - 1) >>> 3); r75++) {
                    int r92 = (bytes[r22] & 255) >>> r53;
                    r22++;
                    bArr[r02 >>> 3] = (byte) (r92 ^ ((bytes[r22] & 255) << (8 - r53)));
                    r02 += 8;
                }
                int r76 = r02 >>> 3;
                r82 = r22 + 1;
                byte b10 = (byte) ((bytes[r22] & 255) >>> r53);
                bArr[r76] = b10;
                int r65 = ((r64 + 7) & 7) + 1;
                int r54 = 8 - r53;
                if (r65 > r54) {
                    bArr[r76] = (byte) (b10 ^ ((byte) ((bytes[r82] & 255) << r54)));
                    r82++;
                }
                r02 += r65;
            } else {
                int r55 = 0;
                while (r55 < ((r64 + 7) >>> 3)) {
                    bArr[r02 >>> 3] = bytes[r22];
                    r02 += 8;
                    r55++;
                    r22++;
                }
                r02 -= (8 - (r64 & 7)) & 7;
                r82 = r22;
            }
            r22 = ((8 - (this.NB_BYTES_GFqnv & 7)) & 7) + (this.HFEmq8 & 7) + r82;
        }
    }

    public void convMQS_one_eq_to_hybrid_rep8_comp_gf2(byte[] bArr, PointerUnion pointerUnion, byte[] bArr2) {
        convMQ_UL_gf2(bArr, bArr2, this.HFEmr8);
        int bytesMove = 0;
        for (int r52 = 0; r52 < this.NB_MONOMIAL_PK; r52++) {
            bytesMove = pointerUnion.toBytesMove(bArr, bytesMove, this.HFEmq8);
            if (this.HFEmr8 != 0) {
                pointerUnion.moveNextByte();
            }
        }
    }

    public void convMQS_one_eq_to_hybrid_rep8_uncomp_gf2(byte[] bArr, PointerUnion pointerUnion, byte[] bArr2) {
        int r02 = this.HFEmr8 - 1;
        convMQ_UL_gf2(bArr, bArr2, r02);
        int r12 = this.ACCESS_last_equations8;
        int r22 = this.NB_BYTES_EQUATION;
        int r6 = (r02 * r22) + r12;
        int r122 = r02 * r22;
        int r72 = for_setPK(bArr, bArr2, r6, r122, this.HFEnv);
        int r32 = this.HFEnv;
        setPK(bArr, bArr2, r32, r6, r122, r72, r32 - 1, this.LOST_BITS);
        int r13 = this.buffer;
        long j10 = 0;
        for (int r03 = this.LOST_BITS - 1; r03 >= 0; r03--) {
            j10 ^= ((bArr2[(r13 >>> 3) + r122] >>> (r13 & 7)) & 1) << ((this.LOST_BITS - 1) - r03);
            r13 += r03;
        }
        int r04 = this.ACCESS_last_equations8 - 1;
        for (int r42 = 0; r42 < this.HFEmr8 - 1; r42++) {
            r04 += this.NB_BYTES_EQUATION;
            bArr[r04] = (byte) (bArr[r04] ^ (((byte) (j10 >>> (this.HFENr8c * r42))) << this.HFENr8));
        }
        pointerUnion.indexReset();
        int bytesMove = 0;
        for (int r14 = 0; r14 < this.NB_MONOMIAL_PK; r14++) {
            bytesMove = pointerUnion.toBytesMove(bArr, bytesMove, this.HFEmq8);
            pointerUnion.moveNextByte();
        }
    }

    public void convMQS_one_to_last_mr8_equations_gf2(byte[] bArr, PointerUnion pointerUnion) {
        int r6;
        pointerUnion.moveNextBytes(this.HFEmq8);
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int r12 = this.NB_MONOMIAL_PK >>> 3;
        int r42 = 0;
        for (int r32 = 0; r32 < this.HFEmr8; r32++) {
            pointerUnion2.changeIndex(pointerUnion);
            int r52 = 0;
            while (true) {
                if (r52 >= r12) {
                    break;
                }
                int r72 = (pointerUnion2.getByte() >>> r32) & 1;
                pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                for (int r82 = 1; r82 < 8; r82++) {
                    r72 ^= ((pointerUnion2.getByte() >>> r32) & 1) << r82;
                    pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                }
                bArr[r42] = (byte) r72;
                r52++;
                r42++;
            }
            if (this.HFENr8 != 0) {
                long withCheck = (pointerUnion2.getWithCheck() >>> r32) & 1;
                pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                for (r6 = 1; r6 < this.HFENr8; r6++) {
                    withCheck ^= ((pointerUnion2.getWithCheck() >>> r32) & 1) << r6;
                    pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                }
                bArr[r42] = (byte) withCheck;
                r42++;
            }
        }
    }

    public void convMQ_UL_gf2(byte[] bArr, byte[] bArr2, int r13) {
        for (int r02 = 0; r02 < r13; r02++) {
            int r12 = this.ACCESS_last_equations8;
            int r22 = this.NB_BYTES_EQUATION;
            for_setPK(bArr, bArr2, (r02 * r22) + r12, r02 * r22, this.HFEnv + 1);
        }
    }

    public int crypto_sign_open(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        long j10;
        int r12;
        long j11;
        PointerUnion pointerUnion = new PointerUnion(bArr);
        int r13 = 0;
        long jConvMQ_uncompressL_gf2 = 0;
        if (this.HFENr8 == 0 || this.HFEmr8 <= 1) {
            j10 = 0;
        } else {
            PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
            pointerUnion2.moveNextBytes(this.ACCESS_last_equations8 - 1);
            j10 = 0;
            for (int r32 = 0; r32 < this.HFEmr8 - 1; r32++) {
                pointerUnion2.moveNextBytes(this.NB_BYTES_EQUATION);
                j10 ^= ((pointerUnion2.getByte() & 255) >>> this.HFENr8) << (this.HFENr8c * r32);
            }
        }
        int r02 = this.HFEmr8;
        if (r02 == 0) {
            Pointer pointer = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
            Pointer pointer2 = new Pointer(new Pointer(this.NB_WORD_GF2nv));
            Pointer pointer3 = new Pointer(this.SIZE_DIGEST_UINT);
            pointer.fill(0, bArr3, 0, this.NB_BYTES_GFqnv);
            getSHA3Hash(pointer3, 0, 64, bArr2, 0, bArr2.length, new byte[64]);
            evalMQSnocst8_quo_gf2(pointer2, pointer, pointerUnion);
            return pointer2.isEqual_nocst_gf2(pointer3, this.NB_WORD_GF2m);
        }
        Pointer pointer4 = new Pointer((this.NB_WORD_UNCOMP_EQ * r02) + 1);
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion);
        while (r13 < this.HFEmr8 - 1) {
            pointerUnion3.setByteIndex((this.NB_BYTES_EQUATION * r13) + this.ACCESS_last_equations8);
            jConvMQ_uncompressL_gf2 ^= convMQ_uncompressL_gf2(new Pointer(pointer4, (this.NB_WORD_UNCOMP_EQ * r13) + 1), pointerUnion3) << r13;
            r13++;
        }
        pointerUnion3.setByteIndex((this.NB_BYTES_EQUATION * r13) + this.ACCESS_last_equations8);
        long jConvMQ_last_uncompressL_gf2 = jConvMQ_uncompressL_gf2 ^ (convMQ_last_uncompressL_gf2(new Pointer(pointer4, (this.NB_WORD_UNCOMP_EQ * r13) + 1), pointerUnion3) << r13);
        if (this.HFENr8 != 0) {
            int r03 = this.HFEnvr;
            if (r03 == 0) {
                r12 = (r13 + 1) * this.NB_WORD_UNCOMP_EQ;
                j11 = j10 << (64 - this.LOST_BITS);
            } else {
                int r122 = this.LOST_BITS;
                int r14 = r13 + 1;
                if (r03 > r122) {
                    r12 = r14 * this.NB_WORD_UNCOMP_EQ;
                    j11 = j10 << (r03 - r122);
                } else if (r03 == r122) {
                    pointer4.set(r14 * this.NB_WORD_UNCOMP_EQ, j10);
                } else {
                    pointer4.setXor((this.NB_WORD_UNCOMP_EQ * r14) - 1, j10 << (64 - (r122 - r03)));
                    pointer4.set(r14 * this.NB_WORD_UNCOMP_EQ, j10 >>> (this.LOST_BITS - this.HFEnvr));
                }
            }
            pointer4.setXor(r12, j11);
        }
        pointer4.set(jConvMQ_last_uncompressL_gf2 << (this.HFEmr - this.HFEmr8));
        return sign_openHFE_huncomp_pk(bArr2, bArr2.length, bArr3, pointerUnion, new PointerUnion(pointer4));
    }

    public int div_r_gf2nx(Pointer pointer, int r11, Pointer pointer2, int r13) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer);
        inv_gf2n(pointer4, pointer2, this.NB_WORD_GFqn * r13);
        while (r11 >= r13) {
            r11 = pointer.searchDegree(r11, r13, this.NB_WORD_GFqn);
            if (r11 < r13) {
                break;
            }
            pointer5.changeIndex((r11 - r13) * this.NB_WORD_GFqn);
            mul_gf2n(pointer3, pointer, this.NB_WORD_GFqn * r11, pointer4);
            for_mul_rem_xor_move(pointer5, pointer3, pointer2, 0, r13);
            r11--;
        }
        return pointer.searchDegree(r11, 1, this.NB_WORD_GFqn);
    }

    public void evalHFEv_gf2nx(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.NB_WORD_MUL);
        Pointer pointer5 = new Pointer(this.NB_WORD_MUL);
        Pointer pointer6 = new Pointer((this.HFEDegI + 1) * this.NB_WORD_GFqn);
        Pointer pointer7 = new Pointer();
        int index = pointer2.getIndex();
        Pointer pointer8 = new Pointer(this.NB_WORD_GFqv);
        Pointer pointer9 = new Pointer(pointer6, this.NB_WORD_GFqn);
        pointer6.copyFrom(pointer3, this.NB_WORD_GFqn);
        pointer6.setAnd(this.NB_WORD_GFqn - 1, this.MASK_GF2n);
        for (int r22 = 1; r22 <= this.HFEDegI; r22++) {
            sqr_gf2n(pointer9, 0, pointer9, -this.NB_WORD_GFqn);
            pointer9.move(this.NB_WORD_GFqn);
        }
        int r23 = this.NB_WORD_GFqn;
        int r32 = this.NB_WORD_GFqv;
        if (r23 + r32 != this.NB_WORD_GF2nv) {
            r32--;
        }
        int r52 = r32;
        pointer8.setRangeRotate(0, pointer3, r23 - 1, r52, 64 - this.HFEnr);
        int r24 = this.NB_WORD_GFqn;
        if (this.NB_WORD_GFqv + r24 != this.NB_WORD_GF2nv) {
            pointer8.set(r52, pointer3.get((r24 - 1) + r52) >>> this.HFEnr);
        }
        evalMQSv_unrolled_gf2(pointer4, pointer8, pointer2);
        pointer2.move(this.MQv_GFqn_SIZE);
        vmpv_xorrange_move(pointer5, pointer8, pointer2);
        pointer9.changeIndex(pointer6);
        mul_xorrange(pointer4, pointer9, pointer5);
        for (int r12 = 1; r12 < this.HFEDegI; r12++) {
            vmpv_xorrange_move(pointer5, pointer8, pointer2);
            int r33 = this.NB_WORD_GFqn;
            pointer5.setRangeClear(r33, this.NB_WORD_MMUL - r33);
            pointer7.changeIndex(pointer9);
            for_mul_xorrange_move(pointer5, pointer2, pointer7, r12);
            rem_gf2n(pointer5, 0, pointer5);
            mul_xorrange(pointer4, pointer7, pointer5);
        }
        vmpv_xorrange_move(pointer5, pointer8, pointer2);
        pointer7.changeIndex(pointer9);
        if (this.HFEDegJ != 0) {
            int r42 = this.NB_WORD_GFqn;
            pointer5.setRangeClear(r42, this.NB_WORD_MMUL - r42);
            for_mul_xorrange_move(pointer5, pointer2, pointer7, this.HFEDegJ);
            pointer5.setXorRange(pointer7, this.NB_WORD_GFqn);
            rem_gf2n(pointer5, 0, pointer5);
        } else {
            pointer5.setRangeFromXor(pointer5, pointer7, this.NB_WORD_GFqn);
        }
        pointer9.move(this.HFEDegI * this.NB_WORD_GFqn);
        mul_xorrange(pointer4, pointer9, pointer5);
        rem_gf2n(pointer, 0, pointer4);
        pointer2.changeIndex(index);
    }

    public void evalMQSv_unrolled_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.HFEv);
        int r12 = this.HFEv;
        int r22 = r12 >>> 6;
        int r13 = r12 & 63;
        int r32 = this.HFEn;
        int r52 = 0;
        int r42 = (r32 >>> 6) + ((r32 & 63) != 0 ? 1 : 0);
        int index = pointer3.getIndex();
        Pointer pointer5 = new Pointer(r42);
        int r72 = 0;
        int range_xi = 0;
        while (r72 < r22) {
            range_xi = pointer4.setRange_xi(pointer2.get(r72), range_xi, 64);
            r72++;
        }
        if (r13 != 0) {
            pointer4.setRange_xi(pointer2.get(r72), range_xi, r13);
        }
        pointer.copyFrom(pointer3, r42);
        pointer3.move(r42);
        while (r52 < this.HFEv) {
            pointer5.copyFrom(pointer3, r42);
            pointer3.move(r42);
            int r14 = r52 + 1;
            int r15 = r14;
            while (r15 < this.HFEv - 3) {
                pointer5.setXorRangeAndMaskMove(pointer3, r42, pointer4.get(r15));
                pointer5.setXorRangeAndMaskMove(pointer3, r42, pointer4.get(r15 + 1));
                pointer5.setXorRangeAndMaskMove(pointer3, r42, pointer4.get(r15 + 2));
                pointer5.setXorRangeAndMaskMove(pointer3, r42, pointer4.get(r15 + 3));
                r15 += 4;
            }
            while (r15 < this.HFEv) {
                pointer5.setXorRangeAndMaskMove(pointer3, r42, pointer4.get(r15));
                r15++;
            }
            pointer.setXorRangeAndMask(pointer5, r42, pointer4.get(r52));
            r52 = r14;
        }
        pointer3.changeIndex(index);
    }

    public void fast_sort_gf2n(Pointer pointer, int r22) {
        int r6;
        int r16;
        int r17;
        int r18;
        Pointer pointer2 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer();
        Pointer pointer5 = new Pointer();
        int r14 = r22 - 1;
        int r15 = GeMSSUtils.Highest_One(r14);
        int r72 = r15;
        while (true) {
            r6 = 0;
            if (r72 <= 1) {
                break;
            }
            int r02 = r72 << 1;
            int r52 = r22 / r02;
            int r162 = Math.max(0, (r22 - (r02 * r52)) - r72);
            pointer4.changeIndex(pointer);
            pointer5.changeIndex(pointer, this.NB_WORD_GFqn * r72);
            int r42 = 0;
            while (r42 < r52) {
                for_casct_move(pointer4, pointer5, pointer3, r72, 1);
                pointer4.move(this.NB_WORD_GFqn * r72);
                pointer5.move(this.NB_WORD_GFqn * r72);
                r42++;
                r52 = r52;
            }
            for_casct_move(pointer4, pointer5, pointer3, r162, 1);
            int r53 = r15;
            while (r53 > r72) {
                while (r6 < r22 - r53) {
                    if ((r6 & r72) == 0) {
                        pointer5.changeIndex(pointer, (r6 + r72) * this.NB_WORD_GFqn);
                        r16 = r53;
                        r17 = r6;
                        r18 = r72;
                        copy_for_casct(pointer2, pointer5, pointer, pointer4, pointer3, r16, r17);
                        pointer5.copyFrom(pointer2, this.NB_WORD_GFqn);
                    } else {
                        r16 = r53;
                        r17 = r6;
                        r18 = r72;
                    }
                    r6 = r17 + 1;
                    r53 = r16;
                    r72 = r18;
                }
                r53 >>>= 1;
            }
            r72 >>>= 1;
        }
        pointer4.changeIndex(pointer);
        pointer5.changeIndex(pointer, this.NB_WORD_GFqn);
        for_casct_move(pointer4, pointer5, pointer3, r14, 2);
        pointer5.changeIndex(pointer, this.NB_WORD_GFqn);
        while (r15 > 1) {
            int r73 = r6;
            while (r73 < r22 - r15) {
                copy_for_casct(pointer2, pointer5, pointer, pointer4, pointer3, r15, r73);
                pointer5.copyFrom(pointer2, this.NB_WORD_GFqn);
                pointer5.move(this.NB_WORD_GFqn << 1);
                r73 += 2;
            }
            r15 >>>= 1;
            r6 = r73;
        }
    }

    public void findRootsSplit2_HT_gf2nx(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn);
        int index = pointer2.getIndex();
        sqr_gf2n(pointer3, 0, pointer2, this.NB_WORD_GFqn);
        inv_gf2n(pointer, pointer3, 0);
        mul_gf2n(pointer3, pointer2, pointer);
        findRootsSplit_x2_x_c_HT_gf2nx(pointer4, pointer3);
        pointer2.move(this.NB_WORD_GFqn);
        mul_gf2n(pointer, pointer4, pointer2);
        int r92 = this.NB_WORD_GFqn;
        pointer.setRangeFromXor(r92, pointer, 0, pointer2, 0, r92);
        pointer2.changeIndex(index);
    }

    public void findRootsSplit_x2_x_c_HT_gf2nx(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        int r12 = (this.HFEn + 1) >>> 1;
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        int r42 = 1;
        for (int r32 = this.HFEn1h_rightmost; r32 != -1; r32--) {
            int r43 = r42 << 1;
            sqr_gf2n(pointer3, pointer);
            for (int r52 = 1; r52 < r43; r52++) {
                sqr_gf2n(pointer3, pointer3);
            }
            pointer.setXorRange(pointer3, this.NB_WORD_GFqn);
            r42 = r12 >>> r32;
            if ((r42 & 1) != 0) {
                sqr_gf2n(pointer3, pointer);
                sqr_gf2n(pointer, pointer3);
                pointer.setXorRange(pointer2, this.NB_WORD_GFqn);
            }
        }
    }

    public void for_mul_xorrange_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int r6) {
        for (int r02 = 0; r02 < r6; r02++) {
            this.mul.mul_gf2x_xor(pointer, pointer2, pointer3);
            pointer2.move(this.NB_WORD_GFqn);
            pointer3.move(this.NB_WORD_GFqn);
        }
    }

    public void genSecretMQS_gf2_opt(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer((this.HFEv + 1) * (this.HFEDegI + 1) * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer2, this.MQv_GFqn_SIZE);
        for (int r32 = 0; r32 <= this.HFEDegI; r32++) {
            for (int r42 = 0; r42 <= this.HFEv; r42++) {
                int r52 = ((this.HFEDegI + 1) * r42) + r32;
                int r6 = this.NB_WORD_GFqn;
                pointer4.copyFrom(r52 * r6, pointer5, 0, r6);
                pointer5.move(this.NB_WORD_GFqn);
            }
            pointer5.move(this.NB_WORD_GFqn * r32);
        }
        Pointer pointer6 = new Pointer((this.HFEn - 1) * this.SIZE_ROW * this.NB_WORD_GFqn);
        for (int r43 = 1; r43 < this.HFEn; r43++) {
            pointer6.set(r43 >>> 6, 1 << (r43 & 63));
            for (int r53 = 0; r53 < this.HFEDegI; r53++) {
                sqr_gf2n(pointer6, this.NB_WORD_GFqn, pointer6, 0);
                pointer6.move(this.NB_WORD_GFqn);
            }
            pointer6.move(this.NB_WORD_GFqn);
        }
        pointer6.indexReset();
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer2.move(this.MQv_GFqn_SIZE);
        pointer.move(this.NB_WORD_GFqn);
        Pointer pointer7 = new Pointer(this.HFEDegI * this.HFEn * this.NB_WORD_GFqn);
        special_buffer(pointer7, pointer2, pointer6);
        Pointer pointer8 = new Pointer(pointer7);
        Pointer pointer9 = new Pointer(pointer7);
        pointer.copyFrom(pointer9, this.NB_WORD_GFqn);
        pointer9.move(this.NB_WORD_GFqn);
        pointer.setXorMatrix_NoMove(pointer9, this.NB_WORD_GFqn, this.HFEDegI - 1);
        pointer5.changeIndex(pointer4);
        pointer.setXorMatrix(pointer5, this.NB_WORD_GFqn, this.HFEDegI + 1);
        Pointer pointer10 = new Pointer(pointer6, this.NB_WORD_GFqn);
        int r44 = 1;
        while (r44 < this.HFEn) {
            dotProduct_gf2n(pointer, pointer10, pointer8, this.HFEDegI);
            pointer10.move(this.SIZE_ROW * this.NB_WORD_GFqn);
            pointer.setXorMatrix(pointer9, this.NB_WORD_GFqn, this.HFEDegI);
            r44++;
        }
        while (r44 < this.HFEnv) {
            pointer.copyFrom(pointer5, this.NB_WORD_GFqn);
            pointer5.move(this.NB_WORD_GFqn);
            pointer.setXorMatrix(pointer5, this.NB_WORD_GFqn, this.HFEDegI);
            r44++;
        }
        Pointer pointer11 = new Pointer(pointer6, this.NB_WORD_GFqn);
        Pointer pointer12 = new Pointer(this.NB_WORD_MUL);
        int r54 = 1;
        while (r54 < this.HFEn) {
            pointer8.move(this.HFEDegI * this.NB_WORD_GFqn);
            pointer10.changeIndex(pointer11);
            pointer9.changeIndex(pointer8);
            this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer4, new Pointer(pointer10, -this.NB_WORD_GFqn));
            int r12 = 1;
            while (r12 <= this.HFEDegI) {
                int r33 = this.NB_WORD_GFqn;
                Pointer pointer13 = pointer10;
                Pointer pointer14 = pointer9;
                pointer3.setRangeFromXor(0, pointer9, 0, pointer4, r12 * r33, r33);
                mul_xorrange(this.Buffer_NB_WORD_MUL, pointer3, pointer13);
                pointer14.move(this.NB_WORD_GFqn);
                pointer13.move(this.NB_WORD_GFqn);
                r12++;
                pointer9 = pointer14;
                pointer10 = pointer13;
                pointer11 = pointer11;
                r54 = r54;
                pointer12 = pointer12;
            }
            Pointer pointer15 = pointer12;
            Pointer pointer16 = pointer11;
            Pointer pointer17 = pointer10;
            Pointer pointer18 = pointer9;
            pointer17.move(this.NB_WORD_GFqn);
            rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
            pointer.move(this.NB_WORD_GFqn);
            int r55 = r54 + 1;
            int r34 = r55;
            while (r34 < this.HFEn) {
                int index = pointer17.getIndex();
                int index2 = pointer8.getIndex();
                int index3 = pointer16.getIndex();
                int index4 = pointer18.getIndex();
                mul_move(pointer15, pointer17, pointer8);
                for_mul_xorrange_move(pointer15, pointer17, pointer8, this.HFEDegI - 1);
                for_mul_xorrange_move(pointer15, pointer16, pointer18, this.HFEDegI);
                rem_gf2n(pointer, 0, pointer15);
                pointer17.changeIndex((this.SIZE_ROW * this.NB_WORD_GFqn) + index);
                pointer8.changeIndex(index2);
                pointer16.changeIndex(index3);
                pointer18.changeIndex((this.HFEDegI * this.NB_WORD_GFqn) + index4);
                pointer.move(this.NB_WORD_GFqn);
                r34++;
                r55 = r55;
                pointer3 = pointer3;
            }
            int r17 = r55;
            Pointer pointer19 = pointer3;
            pointer5.changeIndex(pointer4);
            pointer16.move(-this.NB_WORD_GFqn);
            while (r34 < this.HFEnv) {
                pointer5.move((this.HFEDegI + 1) * this.NB_WORD_GFqn);
                dotProduct_gf2n(pointer, pointer16, pointer5, this.HFEDegI + 1);
                pointer.move(this.NB_WORD_GFqn);
                r34++;
            }
            int r35 = this.NB_WORD_GFqn;
            pointer16.move((this.SIZE_ROW * r35) + r35);
            pointer9 = pointer18;
            pointer10 = pointer17;
            pointer12 = pointer15;
            pointer11 = pointer16;
            r54 = r17;
            pointer3 = pointer19;
        }
        pointer2.move(this.NB_WORD_GFqn - this.MQv_GFqn_SIZE);
        pointer.copyFrom(pointer2, (this.NB_MONOMIAL_VINEGAR - 1) * this.NB_WORD_GFqn);
        pointer.indexReset();
        pointer2.indexReset();
    }

    public int interpolateHFE_FS_ref(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer5 = new Pointer();
        Pointer pointer6 = new Pointer();
        Pointer pointer7 = new Pointer(this.HFEnv * this.NB_WORD_GFqn);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(pointer3);
        Pointer pointer9 = new Pointer(pointer7);
        for (int r32 = 0; r32 < this.HFEnv; r32++) {
            evalHFEv_gf2nx(pointer9, pointer2, pointer8);
            pointer9.move(this.NB_WORD_GFqn);
            pointer8.move(this.NB_WORD_GF2nv);
        }
        pointer8.changeIndex(pointer3);
        pointer9.changeIndex(pointer7);
        int r12 = 0;
        while (r12 < this.HFEnv) {
            pointer.move(this.NB_WORD_GFqn);
            pointer9.setXorRange(pointer2, this.NB_WORD_GFqn);
            pointer.copyFrom(pointer9, this.NB_WORD_GFqn);
            pointer5.changeIndex(pointer9);
            pointer6.changeIndex(pointer8);
            int r16 = r12 + 1;
            for (int r72 = r16; r72 < this.HFEnv; r72++) {
                pointer.move(this.NB_WORD_GFqn);
                pointer5.move(this.NB_WORD_GFqn);
                pointer6.move(this.NB_WORD_GF2nv);
                pointer4.setRangeFromXor(pointer8, pointer6, this.NB_WORD_GF2nv);
                evalHFEv_gf2nx(pointer, pointer2, pointer4);
                pointer.setXorRangeXor(0, pointer9, 0, pointer5, 0, this.NB_WORD_GFqn);
            }
            pointer9.move(this.NB_WORD_GFqn);
            pointer8.move(this.NB_WORD_GF2nv);
            r12 = r16;
        }
        pointer.indexReset();
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void invMatrixLU_gf2(org.bouncycastle.pqc.crypto.gemss.Pointer r21, org.bouncycastle.pqc.crypto.gemss.Pointer r22, org.bouncycastle.pqc.crypto.gemss.Pointer r23, org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.FunctionParams r24) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.invMatrixLU_gf2(org.bouncycastle.pqc.crypto.gemss.Pointer, org.bouncycastle.pqc.crypto.gemss.Pointer, org.bouncycastle.pqc.crypto.gemss.Pointer, org.bouncycastle.pqc.crypto.gemss.GeMSSEngine$FunctionParams):void");
    }

    public void mul_gf2n(Pointer pointer, Pointer pointer2, int r52, Pointer pointer3) {
        int index = pointer2.getIndex();
        pointer2.move(r52);
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        pointer2.changeIndex(index);
        rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
    }

    public void mul_gf2n(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
    }

    public void mul_move(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(pointer, pointer2, pointer3);
        pointer2.move(this.NB_WORD_GFqn);
        pointer3.move(this.NB_WORD_GFqn);
    }

    public void mul_rem_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        this.rem.rem_gf2n_xor(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
    }

    public void mul_rem_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3, int r6) {
        int index = pointer3.getIndex();
        pointer3.move(r6);
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        this.rem.rem_gf2n_xor(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
        pointer3.changeIndex(index);
    }

    public void mul_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x_xor(pointer, pointer2, pointer3);
    }

    public void signHFE_FeistelPatarin(SecureRandom secureRandom, byte[] bArr, byte[] bArr2, int r36, int r37, byte[] bArr3) {
        int r32;
        Pointer pointer;
        int r14;
        int r22;
        SecretKeyHFE secretKeyHFE;
        Pointer pointer2;
        long j10;
        PointerUnion pointerUnion;
        PointerUnion pointerUnion2;
        Pointer pointer3;
        Pointer pointer4;
        SecretKeyHFE secretKeyHFE2;
        Pointer pointer5;
        long j11;
        Pointer pointer6;
        this.random = secureRandom;
        Pointer pointer7 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(this.SIZE_DIGEST_UINT);
        Pointer pointer9 = new Pointer(new Pointer(this.SIZE_DIGEST_UINT));
        int r12 = this.HFEv;
        int r13 = r12 & 7;
        int r72 = (r12 >>> 3) + (r13 != 0 ? 1 : 0);
        long jMaskUINT = GeMSSUtils.maskUINT(this.HFEvr);
        SecretKeyHFE secretKeyHFE3 = new SecretKeyHFE(this);
        Pointer pointer10 = new Pointer(this.NB_WORD_GFqv);
        Pointer[] pointerArr = new Pointer[this.HFEDegI + 1];
        precSignHFE(secretKeyHFE3, pointerArr, bArr3);
        Pointer pointer11 = new Pointer(secretKeyHFE3.F_struct.poly);
        Pointer pointer12 = new Pointer(pointer8);
        int r02 = this.Sha3BitStrength >>> 3;
        Pointer pointer13 = pointer10;
        SecretKeyHFE secretKeyHFE4 = secretKeyHFE3;
        long j12 = jMaskUINT;
        Pointer pointer14 = pointer9;
        getSHA3Hash(pointer12, 0, r02, bArr2, r36, r37, new byte[r02]);
        Pointer pointer15 = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
        Pointer pointer16 = new Pointer(this.NB_WORD_GF2nv);
        PointerUnion pointerUnion3 = new PointerUnion(pointer16);
        long j13 = 0;
        int r52 = 1;
        while (true) {
            r32 = this.NB_ITE;
            if (r52 > r32) {
                break;
            }
            pointer16.setRangeFromXor(pointer15, pointer12, this.NB_WORD_GF2m);
            if (this.HFEmr8 != 0) {
                pointer16.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
                j13 = pointerUnion3.getByte(this.HFEmq8);
            }
            long j14 = j13;
            while (true) {
                if (this.HFEmr8 != 0) {
                    pointerUnion3.fillRandomBytes(this.HFEmq8, secureRandom, (this.NB_BYTES_GFqn - this.NB_BYTES_GFqm) + 1);
                    pointer = pointer12;
                    r14 = r52;
                    pointerUnion3.setAndThenXorByte(this.HFEmq8, -(1 << this.HFEmr8), j14);
                } else {
                    pointer = pointer12;
                    r14 = r52;
                    int r15 = this.NB_BYTES_GFqm;
                    pointerUnion3.fillRandomBytes(r15, secureRandom, this.NB_BYTES_GFqn - r15);
                }
                if ((this.HFEn & 7) != 0) {
                    r22 = 1;
                    pointer16.setAnd(this.NB_WORD_GFqn - 1, this.MASK_GF2n);
                } else {
                    r22 = 1;
                }
                secretKeyHFE = secretKeyHFE4;
                vecMatProduct(pointer7, pointer16, secretKeyHFE.T, FunctionParams.N);
                pointer2 = pointer13;
                pointer2.fillRandom(0, secureRandom, r72);
                if (r13 != 0) {
                    j10 = j12;
                    pointer2.setAnd(this.NB_WORD_GFqv - r22, j10);
                } else {
                    j10 = j12;
                }
                evalMQSv_unrolled_gf2(pointer11, pointer2, secretKeyHFE.F_HFEv);
                int r16 = 0;
                while (r16 <= this.HFEDegI) {
                    PointerUnion pointerUnion4 = pointerUnion3;
                    vecMatProduct(this.Buffer_NB_WORD_GFqn, pointer2, new Pointer(pointerArr[r16], this.NB_WORD_GFqn), FunctionParams.V);
                    int r03 = this.NB_WORD_GFqn;
                    int r23 = r16 + 1;
                    pointer11.setRangeFromXor((((r16 * r23) >>> 1) + 1) * r03, pointerArr[r16], 0, this.Buffer_NB_WORD_GFqn, 0, r03);
                    pointerUnion3 = pointerUnion4;
                    r16 = r23;
                    j10 = j10;
                }
                pointerUnion = pointerUnion3;
                j12 = j10;
                if (chooseRootHFE_gf2nx(pointer16, secretKeyHFE.F_struct, pointer7) != 0) {
                    break;
                }
                pointerUnion3 = pointerUnion;
                pointer13 = pointer2;
                secretKeyHFE4 = secretKeyHFE;
                r52 = r14;
                pointer12 = pointer;
            }
            pointer16.setXor(this.NB_WORD_GFqn - 1, pointer2.get() << this.HFEnr);
            pointer16.setRangeRotate(this.NB_WORD_GFqn, pointer2, 0, this.NB_WORD_GFqv - 1, 64 - this.HFEnr);
            int r04 = this.NB_WORD_GFqn;
            int r17 = this.NB_WORD_GFqv;
            if (r04 + r17 == this.NB_WORD_GF2nv) {
                pointer16.set((r04 + r17) - 1, pointer2.get(r17 - 1) >>> (64 - this.HFEnr));
            }
            vecMatProduct(pointer15, pointer16, secretKeyHFE.S, FunctionParams.NV);
            int r05 = this.NB_ITE;
            if (r14 != r05) {
                int r18 = this.NB_WORD_GF2nv;
                int r24 = this.NB_WORD_GF2nvm;
                int r06 = (((r05 - 1) - r14) * r24) + r18;
                pointer15.copyFrom(r06, pointer15, r18 - r24, r24);
                if (this.HFEmr != 0) {
                    pointer15.setAnd(r06, ~this.MASK_GF2m);
                }
                Pointer pointer17 = pointer;
                byte[] bytes = pointer17.toBytes(this.SIZE_DIGEST);
                pointerUnion2 = pointerUnion;
                j11 = j12;
                pointer4 = pointer2;
                secretKeyHFE2 = secretKeyHFE;
                pointer5 = pointer16;
                getSHA3Hash(pointer14, 0, this.SIZE_DIGEST, bytes, 0, bytes.length, bytes);
                pointer6 = pointer14;
                pointer3 = pointer17;
                pointer6.swap(pointer3);
            } else {
                pointerUnion2 = pointerUnion;
                pointer3 = pointer;
                pointer4 = pointer2;
                secretKeyHFE2 = secretKeyHFE;
                pointer5 = pointer16;
                j11 = j12;
                pointer6 = pointer14;
            }
            r52 = r14 + 1;
            pointer14 = pointer6;
            pointer12 = pointer3;
            secretKeyHFE4 = secretKeyHFE2;
            pointerUnion3 = pointerUnion2;
            pointer16 = pointer5;
            pointer13 = pointer4;
            j12 = j11;
            j13 = j14;
        }
        if (r32 == 1) {
            System.arraycopy(pointer15.toBytes(pointer15.getLength() << 3), 0, bArr, 0, this.NB_BYTES_GFqnv);
        } else {
            compress_signHFE(bArr, pointer15);
        }
    }

    public int sign_openHFE_huncomp_pk(byte[] bArr, int r21, byte[] bArr2, PointerUnion pointerUnion, PointerUnion pointerUnion2) {
        Pointer pointer = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
        Pointer pointer2 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer3 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer4 = new Pointer(pointer2);
        Pointer pointer5 = new Pointer(pointer3);
        byte[] bArr3 = new byte[64];
        Pointer pointer6 = new Pointer(this.NB_ITE * this.SIZE_DIGEST_UINT);
        long j10 = pointerUnion2.get();
        pointerUnion2.move(1);
        uncompress_signHFE(pointer, bArr2);
        getSHA3Hash(pointer6, 0, 64, bArr, 0, r21, bArr3);
        int r72 = 1;
        while (r72 < this.NB_ITE) {
            int r18 = r72;
            getSHA3Hash(pointer6, r72 * this.SIZE_DIGEST_UINT, 64, bArr3, 0, this.SIZE_DIGEST, bArr3);
            pointer6.setAnd((((r18 - 1) * this.SIZE_DIGEST_UINT) + this.NB_WORD_GF2m) - 1, this.MASK_GF2m);
            r72 = r18 + 1;
        }
        pointer6.setAnd((((r72 - 1) * this.SIZE_DIGEST_UINT) + this.NB_WORD_GF2m) - 1, this.MASK_GF2m);
        evalMQShybrid8_uncomp_nocst_gf2_m(pointer4, pointer, pointerUnion, pointerUnion2);
        pointer4.setXor(this.HFEmq, j10);
        for (int r12 = this.NB_ITE - 1; r12 > 0; r12--) {
            pointer4.setXorRange(pointer6, this.SIZE_DIGEST_UINT * r12, this.NB_WORD_GF2m);
            int r52 = (((this.NB_ITE - 1) - r12) * this.NB_WORD_GF2nvm) + this.NB_WORD_GF2nv;
            pointer4.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
            pointer4.setXor(this.NB_WORD_GF2m - 1, pointer.get(r52));
            int r42 = this.NB_WORD_GF2nvm;
            if (r42 != 1) {
                pointer4.copyFrom(this.NB_WORD_GF2m, pointer, r52 + 1, r42 - 1);
            }
            evalMQShybrid8_uncomp_nocst_gf2_m(pointer5, pointer4, pointerUnion, pointerUnion2);
            pointer5.setXor(this.HFEmq, j10);
            pointer5.swap(pointer4);
        }
        return pointer4.isEqual_nocst_gf2(pointer6, this.NB_WORD_GF2m);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b9 A[LOOP:2: B:43:0x00b7->B:44:0x00b9, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void vecMatProduct(org.bouncycastle.pqc.crypto.gemss.Pointer r19, org.bouncycastle.pqc.crypto.gemss.Pointer r20, org.bouncycastle.pqc.crypto.gemss.Pointer r21, org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.FunctionParams r22) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.gemss.GeMSSEngine.vecMatProduct(org.bouncycastle.pqc.crypto.gemss.Pointer, org.bouncycastle.pqc.crypto.gemss.Pointer, org.bouncycastle.pqc.crypto.gemss.Pointer, org.bouncycastle.pqc.crypto.gemss.GeMSSEngine$FunctionParams):void");
    }
}
