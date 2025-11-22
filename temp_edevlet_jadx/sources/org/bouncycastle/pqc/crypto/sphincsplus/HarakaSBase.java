package org.bouncycastle.pqc.crypto.sphincsplus;

import androidx.core.view.MotionEventCompat;
import java.lang.reflect.Array;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class HarakaSBase {
    protected long[][] haraka512_rc = {new long[]{2652350495371256459L, -4767360454786055294L, -2778808723033108313L, -6138960262205972599L, 4944264682582508575L, 5312892415214084856L, 390034814247088728L, 2584105839607850161L}, new long[]{-2829930801980875922L, 9137660425067592590L, 7974068014816832049L, -4665944065725157058L, 2602240152241800734L, -1525694355931290902L, 8634660511727056099L, 1757945485816280992L}, new long[]{1181946526362588450L, -2765192619992380293L, 3395396416743122529L, -5116273100549372423L, -1285454309797503998L, -3363297609815171261L, -8360835858392998991L, -2371352336613968487L}, new long[]{-2500853454776756032L, 8465221333286591414L, 8817016078209461823L, 9067727467981428858L, 4244107674518258433L, -4347326460570889538L, 1711371409274742987L, 6486926172609168623L}, new long[]{1689001080716996467L, -491496126278250673L, 1273395568185090836L, 5805238412293617850L, -3441289770925384855L, 4592753210857527691L, 7062886034259989751L, -7974393977033172556L}, new long[]{-797818098819718290L, -41460260651793472L, 476036171179798187L, 7391697506481003962L, -855662275170689475L, -3489340839585811635L, -4891525734487956488L, 9110006695579921767L}, new long[]{-886938081943560790L, 4212830408327159617L, -3546674487567282635L, -1955379422127038289L, 3174578079917510314L, 5156046680874954380L, -318545805834821831L, -6176414008149462342L}, new long[]{2529785914229181047L, 2966313764524854080L, 6363694428402697361L, 8292109690175819701L, -8497546332135459587L, -3211108476154815616L, -5526938793786642321L, -4975969843627057770L}, new long[]{3357847021085574721L, -4764837212565187058L, -626391829400648692L, 2124133995575340009L, 7425858999829294301L, -3432032868905637771L, 1119301198758921294L, 1907812968586478892L}, new long[]{-8986524826712832802L, 3356175496741300052L, -5764600317639896362L, 4002747967109689317L, -8718925159733497197L, -1938063772587374661L, -8003749789895945835L, 7302960353763723932L}};
    protected int[][] haraka256_rc = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 10, 8);
    protected final byte[] buffer = new byte[64];
    protected int off = 0;

    private void Swapn(long[] jArr, int r12, int r13, int r14) {
        long j10;
        long j11;
        if (r12 == 1) {
            j10 = 6148914691236517205L;
            j11 = -6148914691236517206L;
        } else if (r12 == 2) {
            j10 = 3689348814741910323L;
            j11 = -3689348814741910324L;
        } else {
            if (r12 != 4) {
                return;
            }
            j10 = 1085102592571150095L;
            j11 = -1085102592571150096L;
        }
        long j12 = jArr[r13];
        long j13 = jArr[r14];
        jArr[r13] = ((j10 & j13) << r12) | (j12 & j10);
        jArr[r14] = ((j12 & j11) >>> r12) | (j13 & j11);
    }

    private void Swapn32(int[] r6, int r72, int r82, int r92) {
        int r02;
        int r12;
        if (r72 == 1) {
            r02 = 1431655765;
            r12 = -1431655766;
        } else if (r72 == 2) {
            r02 = 858993459;
            r12 = -858993460;
        } else if (r72 != 4) {
            r02 = 0;
            r12 = 0;
        } else {
            r02 = 252645135;
            r12 = -252645136;
        }
        int r22 = r6[r82];
        int r32 = r6[r92];
        r6[r82] = ((r02 & r32) << r72) | (r22 & r02);
        r6[r92] = ((r22 & r12) >>> r72) | (r32 & r12);
    }

    private void addRoundKey(long[] jArr, long[] jArr2) {
        jArr[0] = jArr[0] ^ jArr2[0];
        jArr[1] = jArr[1] ^ jArr2[1];
        jArr[2] = jArr[2] ^ jArr2[2];
        jArr[3] = jArr[3] ^ jArr2[3];
        jArr[4] = jArr[4] ^ jArr2[4];
        jArr[5] = jArr[5] ^ jArr2[5];
        jArr[6] = jArr[6] ^ jArr2[6];
        jArr[7] = jArr[7] ^ jArr2[7];
    }

    private void addRoundKey32(int[] r42, int[] r52) {
        r42[0] = r42[0] ^ r52[0];
        r42[1] = r42[1] ^ r52[1];
        r42[2] = r42[2] ^ r52[2];
        r42[3] = r42[3] ^ r52[3];
        r42[4] = r42[4] ^ r52[4];
        r42[5] = r42[5] ^ r52[5];
        r42[6] = r42[6] ^ r52[6];
        r42[7] = r52[7] ^ r42[7];
    }

    private void brAesCt64BitsliceSbox(long[] jArr) {
        long j10 = jArr[7];
        long j11 = jArr[6];
        long j12 = jArr[5];
        long j13 = jArr[4];
        long j14 = jArr[3];
        long j15 = jArr[2];
        long j16 = jArr[1];
        long j17 = jArr[0];
        long j18 = j13 ^ j15;
        long j19 = j10 ^ j16;
        long j20 = j10 ^ j13;
        long j21 = j10 ^ j15;
        long j22 = j12 ^ j11;
        long j23 = j22 ^ j17;
        long j24 = j23 ^ j13;
        long j25 = j19 ^ j18;
        long j26 = j23 ^ j10;
        long j27 = j23 ^ j16;
        long j28 = j27 ^ j21;
        long j29 = j14 ^ j25;
        long j30 = j29 ^ j15;
        long j31 = j11 ^ j29;
        long j32 = j30 ^ j17;
        long j33 = j30 ^ j22;
        long j34 = j31 ^ j20;
        long j35 = j17 ^ j34;
        long j36 = j33 ^ j34;
        long j37 = j22 ^ j34;
        long j38 = j25 & j30;
        long j39 = (j28 & j32) ^ j38;
        long j40 = j19 & j37;
        long j41 = (j27 & j23) ^ j40;
        long j42 = j20 & j34;
        long j43 = (j18 & j36) ^ j42;
        long j44 = (j21 & j33) ^ j42;
        long j45 = (j39 ^ j43) ^ j31;
        long j46 = (((j24 & j17) ^ j38) ^ j44) ^ (j33 ^ j21);
        long j47 = (j41 ^ j43) ^ (j19 ^ j37);
        long j48 = (((j26 & j35) ^ j40) ^ j44) ^ (j10 ^ j37);
        long j49 = j45 ^ j46;
        long j50 = j45 & j47;
        long j51 = j48 ^ j50;
        long j52 = (j49 & j51) ^ j46;
        long j53 = ((j46 ^ j50) & (j47 ^ j48)) ^ j48;
        long j54 = j48 & (j51 ^ j53);
        long j55 = j54 ^ (j47 ^ j53);
        long j56 = j49 ^ (j52 & (j51 ^ j54));
        long j57 = j56 ^ j55;
        long j58 = j52 ^ j53;
        long j59 = j52 ^ j56;
        long j60 = j53 ^ j55;
        long j61 = j58 ^ j57;
        long j62 = j53 & j17;
        long j63 = j59 & j37;
        long j64 = j56 & j23;
        long j65 = j52 & j35;
        long j66 = j61 & j36;
        long j67 = j55 & j28;
        long j68 = j53 & j24;
        long j69 = j59 & j19;
        long j70 = j56 & j27;
        long j71 = j58 & j20;
        long j72 = j61 & j18;
        long j73 = j57 & j21;
        long j74 = j71 ^ j72;
        long j75 = j65 ^ j70;
        long j76 = (j60 & j25) ^ j67;
        long j77 = (j60 & j30) ^ j63;
        long j78 = j72 ^ j73;
        long j79 = (j62 ^ j69) ^ j77;
        long j80 = j64 ^ j74;
        long j81 = j63 ^ ((j58 & j34) ^ j66);
        long j82 = j74 ^ j79;
        long j83 = (j52 & j26) ^ j79;
        long j84 = (j66 ^ (j57 & j33)) ^ j80;
        long j85 = j76 ^ j80;
        long j86 = j64 ^ j81;
        long j87 = j83 ^ j84;
        long j88 = (j55 & j32) ^ j85;
        long j89 = (~j84) ^ (j69 ^ j75);
        long j90 = j75 ^ (~j82);
        long j91 = j77 ^ j88;
        long j92 = j86 ^ (~j91);
        long j93 = j78 ^ (~(j86 ^ j87));
        jArr[7] = j81 ^ j85;
        jArr[6] = j92;
        jArr[5] = j93;
        jArr[4] = j91;
        jArr[3] = (j62 ^ j65) ^ j88;
        jArr[2] = (j67 ^ j68) ^ j87;
        jArr[1] = j89;
        jArr[0] = j90;
    }

    private void brAesCt64InterleaveIn(long[] jArr, int r12, int[] r13, int r14) {
        long j10 = r13[r14] & BodyPartID.bodyIdMax;
        long j11 = r13[r14 + 1] & BodyPartID.bodyIdMax;
        long j12 = r13[r14 + 2] & BodyPartID.bodyIdMax;
        long j13 = r13[r14 + 3] & BodyPartID.bodyIdMax;
        long j14 = (j10 | (j10 << 16)) & 281470681808895L;
        long j15 = (j11 | (j11 << 16)) & 281470681808895L;
        long j16 = (j12 | (j12 << 16)) & 281470681808895L;
        long j17 = (j13 | (j13 << 16)) & 281470681808895L;
        jArr[r12] = ((j14 | (j14 << 8)) & 71777214294589695L) | (((j16 | (j16 << 8)) & 71777214294589695L) << 8);
        jArr[r12 + 4] = (((j17 | (j17 << 8)) & 71777214294589695L) << 8) | ((j15 | (j15 << 8)) & 71777214294589695L);
    }

    private void brAesCt64InterleaveOut(int[] r11, long[] jArr, int r13) {
        long j10 = jArr[r13];
        long j11 = j10 & 71777214294589695L;
        long j12 = jArr[r13 + 4];
        long j13 = j12 & 71777214294589695L;
        long j14 = (j10 >>> 8) & 71777214294589695L;
        long j15 = 71777214294589695L & (j12 >>> 8);
        long j16 = (j11 | (j11 >>> 8)) & 281470681808895L;
        long j17 = ((j13 >>> 8) | j13) & 281470681808895L;
        long j18 = (j14 | (j14 >>> 8)) & 281470681808895L;
        long j19 = (j15 | (j15 >>> 8)) & 281470681808895L;
        int r12 = r13 << 2;
        r11[r12] = (int) (j16 | (j16 >>> 16));
        r11[r12 + 1] = (int) (j17 | (j17 >>> 16));
        r11[r12 + 2] = (int) (j18 | (j18 >>> 16));
        r11[r12 + 3] = (int) ((j19 >>> 16) | j19);
    }

    private void brAesCt64Ortho(long[] jArr) {
        Swapn(jArr, 1, 0, 1);
        Swapn(jArr, 1, 2, 3);
        Swapn(jArr, 1, 4, 5);
        Swapn(jArr, 1, 6, 7);
        Swapn(jArr, 2, 0, 2);
        Swapn(jArr, 2, 1, 3);
        Swapn(jArr, 2, 4, 6);
        Swapn(jArr, 2, 5, 7);
        Swapn(jArr, 4, 0, 4);
        Swapn(jArr, 4, 1, 5);
        Swapn(jArr, 4, 2, 6);
        Swapn(jArr, 4, 3, 7);
    }

    private static void brAesCtBitsliceSbox(int[] r37) {
        int r12 = r37[7];
        int r32 = r37[6];
        int r52 = r37[5];
        int r72 = r37[4];
        int r92 = r37[3];
        int r11 = r37[2];
        int r13 = r37[1];
        int r15 = r37[0];
        int r16 = r72 ^ r11;
        int r17 = r12 ^ r13;
        int r18 = r12 ^ r72;
        int r19 = r12 ^ r11;
        int r53 = r52 ^ r32;
        int r20 = r53 ^ r15;
        int r73 = r20 ^ r72;
        int r21 = r17 ^ r16;
        int r22 = r20 ^ r12;
        int r132 = r20 ^ r13;
        int r23 = r132 ^ r19;
        int r93 = r92 ^ r21;
        int r112 = r11 ^ r93;
        int r33 = r32 ^ r93;
        int r94 = r112 ^ r15;
        int r24 = r112 ^ r53;
        int r25 = r33 ^ r18;
        int r26 = r15 ^ r25;
        int r27 = r24 ^ r25;
        int r54 = r53 ^ r25;
        int r30 = r21 & r112;
        int r31 = (r23 & r94) ^ r30;
        int r322 = r17 & r54;
        int r332 = (r132 & r20) ^ r322;
        int r34 = r18 & r25;
        int r35 = (r16 & r27) ^ r34;
        int r342 = (r19 & r24) ^ r34;
        int r36 = (r31 ^ r35) ^ r33;
        int r28 = (((r73 & r15) ^ r30) ^ r342) ^ (r24 ^ r19);
        int r29 = (r332 ^ r35) ^ (r17 ^ r54);
        int r14 = (((r22 & r26) ^ r322) ^ r342) ^ (r12 ^ r54);
        int r302 = r36 ^ r28;
        int r38 = r36 & r29;
        int r312 = r14 ^ r38;
        int r323 = (r302 & r312) ^ r28;
        int r39 = ((r28 ^ r38) & (r29 ^ r14)) ^ r14;
        int r110 = r14 & (r312 ^ r39);
        int r282 = r110 ^ (r29 ^ r39);
        int r111 = r302 ^ (r323 & (r312 ^ r110));
        int r292 = r111 ^ r282;
        int r303 = r323 ^ r39;
        int r313 = r323 ^ r111;
        int r333 = r39 ^ r282;
        int r343 = r303 ^ r292;
        int r152 = r15 & r39;
        int r55 = r313 & r54;
        int r202 = r111 & r20;
        int r262 = r323 & r26;
        int r272 = r343 & r27;
        int r232 = r282 & r23;
        int r310 = r39 & r73;
        int r74 = r313 & r17;
        int r113 = r111 & r132;
        int r172 = r303 & r18;
        int r162 = r343 & r16;
        int r182 = r292 & r19;
        int r173 = r172 ^ r162;
        int r114 = r262 ^ r113;
        int r192 = (r333 & r21) ^ r232;
        int r115 = (r333 & r112) ^ r55;
        int r163 = r162 ^ r182;
        int r183 = (r152 ^ r74) ^ r115;
        int r212 = r202 ^ r173;
        int r56 = r55 ^ ((r303 & r25) ^ r272);
        int r142 = r173 ^ r183;
        int r133 = (r323 & r22) ^ r183;
        int r122 = (r272 ^ (r292 & r24)) ^ r212;
        int r184 = r192 ^ r212;
        int r193 = r202 ^ r56;
        int r134 = r133 ^ r122;
        int r95 = (r282 & r94) ^ r184;
        int r75 = (r74 ^ r114) ^ (~r122);
        int r116 = r114 ^ (~r142);
        int r123 = r193 ^ r134;
        int r117 = r115 ^ r95;
        int r311 = (r232 ^ r310) ^ r134;
        int r135 = r193 ^ (~r117);
        int r124 = r163 ^ (~r123);
        r37[7] = r56 ^ r184;
        r37[6] = r135;
        r37[5] = r124;
        r37[4] = r117;
        r37[3] = r95 ^ (r152 ^ r262);
        r37[2] = r311;
        r37[1] = r75;
        r37[0] = r116;
    }

    private void brAesCtOrtho(int[] r92) {
        Swapn32(r92, 1, 0, 1);
        Swapn32(r92, 1, 2, 3);
        Swapn32(r92, 1, 4, 5);
        Swapn32(r92, 1, 6, 7);
        Swapn32(r92, 2, 0, 2);
        Swapn32(r92, 2, 1, 3);
        Swapn32(r92, 2, 4, 6);
        Swapn32(r92, 2, 5, 7);
        Swapn32(r92, 4, 0, 4);
        Swapn32(r92, 4, 1, 5);
        Swapn32(r92, 4, 2, 6);
        Swapn32(r92, 4, 3, 7);
    }

    private int brDec32Le(byte[] bArr, int r52) {
        return (bArr[r52 + 3] << 24) | (bArr[r52] & 255) | ((bArr[r52 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[r52 + 2] << 16) & 16711680);
    }

    private void brEnc32Le(byte[] bArr, int r52, int r6) {
        for (int r02 = 0; r02 < 4; r02++) {
            bArr[r6 + r02] = (byte) (r52 >> (r02 << 3));
        }
    }

    private void brRangeDec32Le(byte[] bArr, int[] r72, int r82) {
        for (int r02 = 0; r02 < r72.length; r02++) {
            int r12 = (r02 << 2) + r82;
            r72[r02] = (bArr[r12 + 3] << 24) | (bArr[r12] & 255) | ((bArr[r12 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((bArr[r12 + 2] << 16) & 16711680);
        }
    }

    private void mixColumns(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        long j18 = (j10 >>> 16) | (j10 << 48);
        long j19 = (j11 >>> 16) | (j11 << 48);
        long j20 = (j12 >>> 16) | (j12 << 48);
        long j21 = (j13 >>> 16) | (j13 << 48);
        long j22 = (j14 >>> 16) | (j14 << 48);
        long j23 = (j15 >>> 16) | (j15 << 48);
        long j24 = (j16 >>> 16) | (j16 << 48);
        long j25 = (j17 >>> 16) | (j17 << 48);
        long j26 = j17 ^ j25;
        long j27 = j10 ^ j18;
        jArr[0] = (j26 ^ j18) ^ rotr32(j27);
        long j28 = j11 ^ j19;
        jArr[1] = (((j27 ^ j17) ^ j25) ^ j19) ^ rotr32(j28);
        long j29 = j12 ^ j20;
        jArr[2] = (j28 ^ j20) ^ rotr32(j29);
        long j30 = ((j29 ^ j17) ^ j25) ^ j21;
        long j31 = j13 ^ j21;
        jArr[3] = j30 ^ rotr32(j31);
        long j32 = ((j31 ^ j17) ^ j25) ^ j22;
        long j33 = j14 ^ j22;
        jArr[4] = j32 ^ rotr32(j33);
        long j34 = j33 ^ j23;
        long j35 = j15 ^ j23;
        jArr[5] = j34 ^ rotr32(j35);
        long j36 = j35 ^ j24;
        long j37 = j16 ^ j24;
        jArr[6] = j36 ^ rotr32(j37);
        jArr[7] = (j37 ^ j25) ^ rotr32(j26);
    }

    private void mixColumns32(int[] r28) {
        int r22 = r28[0];
        int r42 = r28[1];
        int r6 = r28[2];
        int r82 = r28[3];
        int r10 = r28[4];
        int r12 = r28[5];
        int r14 = r28[6];
        int r16 = r28[7];
        int r17 = (r22 >>> 8) | (r22 << 24);
        int r18 = (r42 >>> 8) | (r42 << 24);
        int r19 = (r6 >>> 8) | (r6 << 24);
        int r20 = (r82 >>> 8) | (r82 << 24);
        int r21 = (r10 >>> 8) | (r10 << 24);
        int r222 = (r12 >>> 8) | (r12 << 24);
        int r23 = (r14 >>> 8) | (r14 << 24);
        int r24 = (r16 >>> 8) | (r16 << 24);
        int r15 = r16 ^ r24;
        int r25 = r22 ^ r17;
        r28[0] = (r15 ^ r17) ^ rotr16(r25);
        int r13 = ((r25 ^ r16) ^ r24) ^ r18;
        int r26 = r42 ^ r18;
        r28[1] = r13 ^ rotr16(r26);
        int r110 = r26 ^ r19;
        int r27 = r6 ^ r19;
        r28[2] = r110 ^ rotr16(r27);
        int r111 = ((r27 ^ r16) ^ r24) ^ r20;
        int r29 = r82 ^ r20;
        r28[3] = r111 ^ rotr16(r29);
        int r112 = ((r29 ^ r16) ^ r24) ^ r21;
        int r210 = r10 ^ r21;
        r28[4] = r112 ^ rotr16(r210);
        int r113 = r210 ^ r222;
        int r211 = r12 ^ r222;
        r28[5] = r113 ^ rotr16(r211);
        int r114 = r211 ^ r23;
        int r212 = r14 ^ r23;
        r28[6] = r114 ^ rotr16(r212);
        r28[7] = (r212 ^ r24) ^ rotr16(r15);
    }

    private int rotr16(int r22) {
        return (r22 >>> 16) | (r22 << 16);
    }

    private long rotr32(long j10) {
        return (j10 >>> 32) | (j10 << 32);
    }

    private void shiftRows(long[] jArr) {
        for (int r02 = 0; r02 < jArr.length; r02++) {
            long j10 = jArr[r02];
            jArr[r02] = ((j10 & 1152640029630136320L) << 4) | (65535 & j10) | ((4293918720L & j10) >>> 4) | ((983040 & j10) << 12) | ((280375465082880L & j10) >>> 8) | ((1095216660480L & j10) << 8) | (((-1152921504606846976L) & j10) >>> 12);
        }
    }

    private void shiftRows32(int[] r52) {
        for (int r02 = 0; r02 < 8; r02++) {
            int r12 = r52[r02];
            r52[r02] = ((r12 & 1056964608) << 2) | (r12 & 255) | ((64512 & r12) >>> 2) | ((r12 & 768) << 6) | ((15728640 & r12) >>> 4) | ((983040 & r12) << 4) | (((-1073741824) & r12) >>> 6);
        }
    }

    public static void xor(byte[] bArr, int r52, byte[] bArr2, int r72, byte[] bArr3, int r92, int r10) {
        for (int r02 = 0; r02 < r10; r02++) {
            bArr3[r92 + r02] = (byte) (bArr[r52 + r02] ^ bArr2[r72 + r02]);
        }
    }

    public void haraka256Perm(byte[] bArr) {
        int[] r12 = new int[8];
        interleaveConstant32(r12, this.buffer, 0);
        for (int r22 = 0; r22 < 5; r22++) {
            for (int r42 = 0; r42 < 2; r42++) {
                brAesCtBitsliceSbox(r12);
                shiftRows32(r12);
                mixColumns32(r12);
                addRoundKey32(r12, this.haraka256_rc[(r22 << 1) + r42]);
            }
            for (int r43 = 0; r43 < 8; r43++) {
                int r6 = r12[r43];
                r12[r43] = ((r6 & 1077952576) >>> 1) | ((-2122219135) & r6) | ((33686018 & r6) << 1) | ((67372036 & r6) << 2) | ((134744072 & r6) << 3) | ((269488144 & r6) >>> 3) | ((538976288 & r6) >>> 2);
            }
        }
        brAesCtOrtho(r12);
        for (int r32 = 0; r32 < 4; r32++) {
            int r02 = r32 << 1;
            int r44 = r32 << 2;
            brEnc32Le(bArr, r12[r02], r44);
            brEnc32Le(bArr, r12[r02 + 1], r44 + 16);
        }
    }

    public void haraka512Perm(byte[] bArr) {
        int[] r22 = new int[16];
        long[] jArr = new long[8];
        brRangeDec32Le(this.buffer, r22, 0);
        for (int r52 = 0; r52 < 4; r52++) {
            brAesCt64InterleaveIn(jArr, r52, r22, r52 << 2);
        }
        brAesCt64Ortho(jArr);
        for (int r53 = 0; r53 < 5; r53++) {
            for (int r92 = 0; r92 < 2; r92++) {
                brAesCt64BitsliceSbox(jArr);
                shiftRows(jArr);
                mixColumns(jArr);
                addRoundKey(jArr, this.haraka512_rc[(r53 << 1) + r92]);
            }
            for (int r93 = 0; r93 < 8; r93++) {
                long j10 = jArr[r93];
                jArr[r93] = ((j10 & (-8934996522953571328L)) >>> 3) | ((281479271743489L & j10) << 5) | ((562958543486978L & j10) << 12) | ((1125917086973956L & j10) >>> 1) | ((2251834173947912L & j10) << 6) | ((9007336695791648L & j10) << 9) | ((18014673391583296L & j10) >>> 4) | ((36029346783166592L & j10) << 3) | ((2377936887688995072L & j10) >>> 5) | ((148621055480562192L & j10) << 2) | ((576469548530665472L & j10) << 4) | ((1152939097061330944L & j10) >>> 12) | ((4611756388245323776L & j10) >>> 10);
            }
        }
        brAesCt64Ortho(jArr);
        for (int r32 = 0; r32 < 4; r32++) {
            brAesCt64InterleaveOut(r22, jArr, r32);
        }
        for (int r33 = 0; r33 < 16; r33++) {
            for (int r42 = 0; r42 < 4; r42++) {
                bArr[(r33 << 2) + r42] = (byte) ((r22[r33] >>> (r42 << 3)) & 255);
            }
        }
    }

    public void interleaveConstant(long[] jArr, byte[] bArr, int r42) {
        int[] r02 = new int[16];
        brRangeDec32Le(bArr, r02, r42);
        for (int r32 = 0; r32 < 4; r32++) {
            brAesCt64InterleaveIn(jArr, r32, r02, r32 << 2);
        }
        brAesCt64Ortho(jArr);
    }

    public void interleaveConstant32(int[] r52, byte[] bArr, int r72) {
        for (int r02 = 0; r02 < 4; r02++) {
            int r12 = r02 << 1;
            int r22 = (r02 << 2) + r72;
            r52[r12] = brDec32Le(bArr, r22);
            r52[r12 + 1] = brDec32Le(bArr, r22 + 16);
        }
        brAesCtOrtho(r52);
    }

    public void reset() {
        this.off = 0;
        Arrays.clear(this.buffer);
    }
}
