package org.bouncycastle.pqc.crypto.falcon;

import androidx.appcompat.widget.v;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.location.LocationRequestCompat;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
class FalconKeyGen {
    private short[] REV10 = {0, 512, 256, 768, 128, 640, 384, 896, 64, 576, 320, 832, 192, 704, 448, 960, 32, 544, 288, 800, 160, 672, 416, 928, 96, 608, 352, 864, 224, 736, 480, 992, 16, 528, PassportService.EF_DG16, 784, 144, 656, 400, 912, 80, 592, 336, 848, 208, 720, 464, 976, 48, 560, 304, 816, 176, 688, 432, 944, 112, 624, 368, 880, 240, 752, 496, 1008, 8, 520, PassportService.EF_DG8, 776, 136, 648, 392, 904, 72, 584, 328, 840, 200, 712, 456, 968, 40, 552, 296, 808, 168, 680, 424, 936, 104, 616, 360, 872, 232, 744, 488, 1000, 24, 536, 280, 792, 152, 664, 408, 920, 88, 600, 344, 856, 216, 728, 472, 984, 56, 568, 312, 824, 184, 696, 440, 952, 120, 632, 376, 888, 248, 760, 504, 1016, 4, 516, PassportService.EF_DG4, 772, 132, 644, 388, 900, 68, 580, 324, 836, 196, 708, 452, 964, 36, 548, 292, 804, 164, 676, 420, 932, 100, 612, 356, 868, 228, 740, 484, 996, 20, 532, 276, 788, 148, 660, 404, 916, 84, 596, 340, 852, 212, 724, 468, 980, 52, 564, 308, 820, 180, 692, 436, 948, 116, 628, 372, 884, 244, 756, 500, 1012, 12, 524, PassportService.EF_DG12, 780, 140, 652, 396, 908, 76, 588, 332, 844, 204, 716, 460, 972, 44, 556, 300, 812, 172, 684, 428, 940, 108, 620, 364, 876, 236, 748, 492, 1004, 28, 540, 284, 796, 156, 668, 412, 924, 92, 604, 348, 860, 220, 732, 476, 988, 60, 572, 316, 828, 188, 700, 444, 956, 124, 636, 380, 892, 252, 764, 508, 1020, 2, 514, PassportService.EF_DG2, 770, 130, 642, 386, 898, 66, 578, 322, 834, 194, 706, 450, 962, 34, 546, 290, 802, 162, 674, 418, 930, 98, 610, 354, 866, 226, 738, 482, 994, 18, 530, 274, 786, 146, 658, 402, 914, 82, 594, 338, 850, 210, 722, 466, 978, 50, 562, 306, 818, 178, 690, 434, 946, 114, 626, 370, 882, 242, 754, 498, 1010, 10, 522, PassportService.EF_DG10, 778, 138, 650, 394, 906, 74, 586, 330, 842, 202, 714, 458, 970, 42, 554, 298, 810, 170, 682, 426, 938, 106, 618, 362, 874, 234, 746, 490, 1002, 26, 538, 282, 794, 154, 666, 410, 922, 90, 602, 346, 858, 218, 730, 474, 986, 58, 570, 314, 826, 186, 698, 442, 954, 122, 634, 378, 890, 250, 762, 506, 1018, 6, 518, PassportService.EF_DG6, 774, 134, 646, 390, 902, 70, 582, 326, 838, 198, 710, 454, 966, 38, 550, 294, 806, 166, 678, 422, 934, 102, 614, 358, 870, 230, 742, 486, 998, 22, 534, 278, 790, 150, 662, 406, 918, 86, 598, 342, 854, 214, 726, 470, 982, 54, 566, 310, 822, 182, 694, 438, 950, 118, 630, 374, 886, 246, 758, 502, 1014, 14, 526, PassportService.EF_DG14, 782, 142, 654, 398, 910, 78, 590, 334, 846, 206, 718, 462, 974, 46, 558, 302, 814, 174, 686, 430, 942, 110, 622, 366, 878, 238, 750, 494, 1006, 30, 542, PassportService.EF_COM, 798, 158, 670, 414, 926, 94, 606, 350, 862, 222, 734, 478, 990, 62, 574, 318, 830, 190, 702, 446, 958, 126, 638, 382, 894, 254, 766, 510, 1022, 1, 513, PassportService.EF_DG1, 769, 129, 641, 385, 897, 65, 577, 321, 833, 193, 705, 449, 961, 33, 545, 289, 801, 161, 673, 417, 929, 97, 609, 353, 865, 225, 737, 481, 993, 17, 529, 273, 785, 145, 657, 401, 913, 81, 593, 337, 849, 209, 721, 465, 977, 49, 561, 305, 817, 177, 689, 433, 945, 113, 625, 369, 881, 241, 753, 497, 1009, 9, 521, PassportService.EF_DG9, 777, 137, 649, 393, 905, 73, 585, 329, 841, 201, 713, 457, 969, 41, 553, 297, 809, 169, 681, 425, 937, 105, 617, 361, 873, 233, 745, 489, 1001, 25, 537, 281, 793, 153, 665, 409, 921, 89, 601, 345, 857, 217, 729, 473, 985, 57, 569, 313, 825, 185, 697, 441, 953, 121, 633, 377, 889, 249, 761, 505, 1017, 5, 517, PassportService.EF_DG5, 773, 133, 645, 389, 901, 69, 581, 325, 837, 197, 709, 453, 965, 37, 549, 293, 805, 165, 677, 421, 933, 101, 613, 357, 869, 229, 741, 485, 997, 21, 533, 277, 789, 149, 661, 405, 917, 85, 597, 341, 853, 213, 725, 469, 981, 53, 565, 309, 821, 181, 693, 437, 949, 117, 629, 373, 885, 245, 757, 501, 1013, 13, 525, PassportService.EF_DG13, 781, 141, 653, 397, 909, 77, 589, 333, 845, 205, 717, 461, 973, 45, 557, 301, 813, 173, 685, 429, 941, 109, 621, 365, 877, 237, 749, 493, 1005, 29, 541, 285, 797, 157, 669, 413, 925, 93, 605, 349, 861, 221, 733, 477, 989, 61, 573, 317, 829, 189, 701, 445, 957, 125, 637, 381, 893, 253, 765, 509, 1021, 3, 515, PassportService.EF_DG3, 771, 131, 643, 387, 899, 67, 579, 323, 835, 195, 707, 451, 963, 35, 547, 291, 803, 163, 675, 419, 931, 99, 611, 355, 867, 227, 739, 483, 995, 19, 531, 275, 787, 147, 659, 403, 915, 83, 595, 339, 851, 211, 723, 467, 979, 51, 563, 307, 819, 179, 691, 435, 947, 115, 627, 371, 883, 243, 755, 499, 1011, 11, 523, PassportService.EF_DG11, 779, 139, 651, 395, 907, 75, 587, 331, 843, 203, 715, 459, 971, 43, 555, 299, 811, 171, 683, 427, 939, 107, 619, 363, 875, 235, 747, 491, 1003, 27, 539, 283, 795, 155, 667, 411, 923, 91, 603, 347, 859, 219, 731, 475, 987, 59, 571, 315, 827, 187, 699, 443, 955, 123, 635, 379, 891, 251, 763, 507, 1019, 7, 519, PassportService.EF_DG7, 775, 135, 647, 391, 903, 71, 583, 327, 839, 199, 711, 455, 967, 39, 551, 295, 807, 167, 679, 423, 935, 103, 615, 359, 871, 231, 743, 487, 999, 23, 535, 279, 791, 151, 663, 407, 919, 87, 599, 343, 855, 215, 727, 471, 983, 55, 567, 311, 823, 183, 695, 439, 951, 119, 631, 375, 887, 247, 759, 503, 1015, 15, 527, PassportService.EF_DG15, 783, 143, 655, 399, 911, 79, 591, 335, 847, 207, 719, 463, 975, 47, 559, 303, 815, 175, 687, 431, 943, 111, 623, 367, 879, 239, 751, 495, 1007, 31, 543, 287, 799, 159, 671, 415, 927, 
    95, 607, 351, 863, 223, 735, 479, 991, 63, 575, 319, 831, 191, 703, 447, 959, 127, 639, 383, 895, 255, 767, 511, 1023};
    final long[] gauss_1024_12289 = {1283868770400643928L, 6416574995475331444L, 4078260278032692663L, 2353523259288686585L, 1227179971273316331L, 575931623374121527L, 242543240509105209L, 91437049221049666L, 30799446349977173L, 9255276791179340L, 2478152334826140L, 590642893610164L, 125206034929641L, 23590435911403L, 3948334035941L, 586753615614L, 77391054539L, 9056793210L, 940121950, 86539696, 7062824, 510971, 32764, 1862, 94, 4, 0};
    final int[] MAX_BL_SMALL = {1, 1, 2, 2, 4, 7, 14, 27, 53, 106, 209};
    final int[] MAX_BL_LARGE = {2, 2, 5, 7, 12, 21, 40, 78, 157, 308};
    final int[] bitlength_avg = {4, 11, 24, 50, 102, 202, TypedValues.CycleType.TYPE_CURVE_FIT, 794, 1577, 3138, 6308};
    final int[] bitlength_std = {0, 1, 1, 1, 1, 2, 4, 5, 8, 13, 25};
    final int DEPTH_INT_FG = 4;
    FPREngine fpr = new FPREngine();
    FalconSmallPrimeList primes = new FalconSmallPrimeList();
    FalconFFT fft = new FalconFFT();
    FalconCodec codec = new FalconCodec();
    FalconVrfy vrfy = new FalconVrfy();

    private static int mkn(int r12) {
        return 1 << r12;
    }

    private long toUnsignedLong(int r52) {
        return r52 & BodyPartID.bodyIdMax;
    }

    public long get_rng_u64(SHAKE256 shake256) {
        shake256.inner_shake256_extract(new byte[8], 0, 8);
        return ((r1[7] & 255) << 56) | (r1[0] & 255) | ((r1[1] & 255) << 8) | ((r1[2] & 255) << 16) | ((r1[3] & 255) << 24) | ((r1[4] & 255) << 32) | ((r1[5] & 255) << 40) | ((r1[6] & 255) << 48);
    }

    public void keygen(SHAKE256 shake256, byte[] bArr, int r24, byte[] bArr2, int r26, byte[] bArr3, int r28, byte[] bArr4, int r30, short[] sArr, int r32, int r33) {
        int r22;
        short[] sArr2;
        int r16;
        int r34;
        byte b10;
        int r12 = r24;
        byte[] bArr5 = bArr2;
        int r10 = r26;
        int r92 = r33;
        int r82 = mkn(r33);
        short[] sArr3 = sArr;
        while (true) {
            FalconFPR[] falconFPRArr = new FalconFPR[r82 * 3];
            poly_small_mkgauss(shake256, bArr, r12, r92);
            poly_small_mkgauss(shake256, bArr5, r10, r92);
            int r02 = 1 << (this.codec.max_fg_bits[r92] - 1);
            for (int r13 = 0; r13 < r82; r13++) {
                byte b11 = bArr[r12 + r13];
                if (b11 >= r02 || b11 <= (r34 = -r02) || (b10 = bArr5[r10 + r13]) >= r02 || b10 <= r34) {
                    r02 = -1;
                    break;
                }
            }
            if (r02 >= 0) {
                int r03 = poly_small_sqnorm(bArr, r12, r92);
                int r14 = poly_small_sqnorm(bArr5, r10, r92);
                if ((((-((r03 | r14) >>> 31)) | (r03 + r14)) & BodyPartID.bodyIdMax) < 16823) {
                    int r52 = r82 + 0;
                    int r18 = r52 + r82;
                    poly_small_to_fp(falconFPRArr, 0, bArr, r24, r33);
                    poly_small_to_fp(falconFPRArr, r52, bArr2, r26, r33);
                    this.fft.FFT(falconFPRArr, 0, r92);
                    this.fft.FFT(falconFPRArr, r52, r92);
                    this.fft.poly_invnorm2_fft(falconFPRArr, r18, falconFPRArr, 0, falconFPRArr, r52, r33);
                    this.fft.poly_adj_fft(falconFPRArr, 0, r92);
                    this.fft.poly_adj_fft(falconFPRArr, r52, r92);
                    this.fft.poly_mulconst(falconFPRArr, 0, this.fpr.fpr_q, r92);
                    this.fft.poly_mulconst(falconFPRArr, r52, this.fpr.fpr_q, r92);
                    this.fft.poly_mul_autoadj_fft(falconFPRArr, 0, falconFPRArr, r18, r33);
                    this.fft.poly_mul_autoadj_fft(falconFPRArr, r52, falconFPRArr, r18, r33);
                    this.fft.iFFT(falconFPRArr, 0, r92);
                    this.fft.iFFT(falconFPRArr, r52, r92);
                    FalconFPR falconFPRFpr_add = this.fpr.fpr_zero;
                    for (int r15 = 0; r15 < r82; r15++) {
                        FPREngine fPREngine = this.fpr;
                        FalconFPR falconFPRFpr_add2 = fPREngine.fpr_add(falconFPRFpr_add, fPREngine.fpr_sqr(falconFPRArr[0 + r15]));
                        FPREngine fPREngine2 = this.fpr;
                        falconFPRFpr_add = fPREngine2.fpr_add(falconFPRFpr_add2, fPREngine2.fpr_sqr(falconFPRArr[r52 + r15]));
                    }
                    FPREngine fPREngine3 = this.fpr;
                    if (fPREngine3.fpr_lt(falconFPRFpr_add, fPREngine3.fpr_bnorm_max)) {
                        short[] sArr4 = new short[r82 * 2];
                        if (sArr3 == null) {
                            r16 = r52;
                            sArr2 = sArr4;
                            r22 = 0;
                        } else {
                            r22 = r32;
                            sArr2 = sArr3;
                            r16 = 0;
                        }
                        int r19 = r82;
                        int r102 = r92;
                        if (this.vrfy.compute_public(sArr2, r22, bArr, r24, bArr2, r26, r33, sArr4, r16) != 0) {
                            int r83 = r19 * 28;
                            if (r102 <= 2) {
                                r83 *= 3;
                            }
                            if (solve_NTRU(r33, bArr3, r28, bArr4, r30, bArr, r24, bArr2, r26, (1 << (this.codec.max_FG_bits[r102] - 1)) - 1, new int[r83], 0) != 0) {
                                return;
                            }
                        }
                        r12 = r24;
                        bArr5 = bArr2;
                        r10 = r26;
                        r92 = r33;
                        sArr3 = sArr2;
                        r82 = r19;
                    }
                }
            }
            r10 = r26;
        }
    }

    public void make_fg(int[] r15, int r16, byte[] bArr, int r18, byte[] bArr2, int r20, int r21, int r22, int r23) {
        int r02 = mkn(r21);
        int r10 = r16 + r02;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int r24 = falconSmallPrimeArr[0].f11875p;
        for (int r32 = 0; r32 < r02; r32++) {
            r15[r16 + r32] = modp_set(bArr[r18 + r32], r24);
            r15[r10 + r32] = modp_set(bArr2[r20 + r32], r24);
        }
        if (r22 != 0 || r23 == 0) {
            int r42 = 0;
            while (r42 < r22) {
                int r102 = r42 + 1;
                make_fg_step(r15, r16, r21 - r42, r42, r42 != 0 ? 1 : 0, (r102 < r22 || r23 != 0) ? 1 : 0);
                r42 = r102;
            }
            return;
        }
        int r11 = falconSmallPrimeArr[0].f11875p;
        int r12 = modp_ninv31(r11);
        int r13 = r10 + r02;
        modp_mkgm2(r15, r13, r15, r13 + r02, r21, falconSmallPrimeArr[0].f11874g, r11, r12);
        modp_NTT2(r15, r16, r15, r13, r21, r11, r12);
        modp_NTT2(r15, r10, r15, r13, r21, r11, r12);
    }

    public void make_fg_step(int[] r32, int r33, int r34, int r35, int r36, int r37) {
        int r30;
        int r29;
        int r352;
        int r25;
        int r302;
        int r252;
        int r27;
        int r14 = 1 << r34;
        int r15 = r14 >> 1;
        int[] r02 = this.MAX_BL_SMALL;
        int r92 = r02[r35];
        int r82 = r02[r35 + 1];
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int r03 = r15 * r82;
        int r17 = r33 + r03;
        int r72 = r17 + r03;
        int r04 = r14 * r92;
        int r18 = r72 + r04;
        int r19 = r18 + r04;
        int r20 = r19 + r14;
        int r21 = r20 + r14;
        System.arraycopy(r32, r33, r32, r72, r14 * 2 * r92);
        int r6 = 0;
        while (r6 < r92) {
            int r52 = falconSmallPrimeArr[r6].f11875p;
            int r42 = modp_ninv31(r52);
            int r38 = modp_R2(r52, r42);
            int r26 = r6;
            int r23 = r72;
            int r272 = r82;
            modp_mkgm2(r32, r19, r32, r20, r34, falconSmallPrimeArr[r6].f11874g, r52, r42);
            int r83 = r23 + r26;
            int r12 = r83;
            int r05 = 0;
            while (r05 < r14) {
                r32[r21 + r05] = r32[r12];
                r05++;
                r12 += r92;
            }
            if (r36 == 0) {
                modp_NTT2(r32, r21, r32, r19, r34, r52, r42);
            }
            int r28 = r33 + r26;
            int r13 = r28;
            int r06 = 0;
            while (r06 < r15) {
                int r22 = r21 + (r06 << 1);
                r32[r13] = modp_montymul(modp_montymul(r32[r22 + 0], r32[r22 + 1], r52, r42), r38, r52, r42);
                r06++;
                r13 += r272;
            }
            if (r36 != 0) {
                r29 = r38;
                r352 = r42;
                r25 = r52;
                r30 = r272;
                modp_iNTT2_ext(r32, r83, r92, r32, r20, r34, r52, r352);
            } else {
                r30 = r272;
                r29 = r38;
                r352 = r42;
                r25 = r52;
            }
            int r84 = r18 + r26;
            int r16 = r84;
            int r07 = 0;
            while (r07 < r14) {
                r32[r21 + r07] = r32[r16];
                r07++;
                r16 += r92;
            }
            if (r36 == 0) {
                modp_NTT2(r32, r21, r32, r19, r34, r25, r352);
            }
            int r24 = r17 + r26;
            int r110 = r24;
            int r08 = 0;
            while (r08 < r15) {
                int r210 = r21 + (r08 << 1);
                int r62 = r352;
                int r73 = r25;
                r32[r110] = modp_montymul(modp_montymul(r32[r210 + 0], r32[r210 + 1], r73, r62), r29, r73, r62);
                r08++;
                r110 += r30;
            }
            int r63 = r352;
            int r74 = r25;
            int r53 = r30;
            if (r36 != 0) {
                r252 = r63;
                r27 = r74;
                r302 = r53;
                modp_iNTT2_ext(r32, r84, r92, r32, r20, r34, r74, r252);
            } else {
                r302 = r53;
                r252 = r63;
                r27 = r74;
            }
            if (r37 == 0) {
                int r292 = r34 - 1;
                int r39 = r302;
                int r75 = r27;
                int r85 = r252;
                modp_iNTT2_ext(r32, r28, r39, r32, r20, r292, r75, r85);
                modp_iNTT2_ext(r32, r24, r39, r32, r20, r292, r75, r85);
            }
            r6 = r26 + 1;
            r72 = r23;
            r82 = r302;
        }
        int r232 = r72;
        int r353 = r92;
        zint_rebuild_CRT(r32, r232, r92, r92, r14, falconSmallPrimeArr, 1, r32, r19);
        zint_rebuild_CRT(r32, r18, r353, r353, r14, falconSmallPrimeArr, 1, r32, r19);
        int r93 = r353;
        int r86 = r82;
        while (r93 < r86) {
            int r76 = falconSmallPrimeArr[r93].f11875p;
            int r64 = modp_ninv31(r76);
            int r54 = modp_R2(r76, r64);
            int r43 = r353;
            int r242 = modp_Rx(r43, r76, r64, r54);
            int r273 = r86;
            modp_mkgm2(r32, r19, r32, r20, r34, falconSmallPrimeArr[r93].f11874g, r76, r64);
            int r87 = r232;
            int r77 = 0;
            while (r77 < r14) {
                r32[r21 + r77] = zint_mod_small_signed(r32, r87, r43, r76, r64, r54, r242);
                r77++;
                r87 += r43;
            }
            modp_NTT2(r32, r21, r32, r19, r34, r76, r64);
            int r88 = r33 + r93;
            int r111 = r88;
            int r09 = 0;
            while (r09 < r15) {
                int r211 = r21 + (r09 << 1);
                r32[r111] = modp_montymul(modp_montymul(r32[r211 + 0], r32[r211 + 1], r76, r64), r54, r76, r64);
                r09++;
                r111 += r273;
            }
            int r55 = r54;
            int r65 = r64;
            int r78 = r76;
            int r253 = r18;
            int r44 = 0;
            while (r44 < r14) {
                int r354 = r55;
                r32[r21 + r44] = zint_mod_small_signed(r32, r253, r43, r78, r65, r354, r242);
                r44++;
                r253 += r43;
                r55 = r354;
                r65 = r65;
                r78 = r78;
            }
            int r355 = r55;
            int r362 = r65;
            int r303 = r78;
            modp_NTT2(r32, r21, r32, r19, r34, r303, r362);
            int r243 = r17 + r93;
            int r112 = r243;
            int r010 = 0;
            while (r010 < r15) {
                int r212 = r21 + (r010 << 1);
                r32[r112] = modp_montymul(modp_montymul(r32[r212 + 0], r32[r212 + 1], r303, r362), r355, r303, r362);
                r010++;
                r112 += r273;
            }
            if (r37 == 0) {
                int r254 = r34 - 1;
                modp_iNTT2_ext(r32, r88, r273, r32, r20, r254, r303, r362);
                modp_iNTT2_ext(r32, r243, r273, r32, r20, r254, r303, r362);
            }
            r93++;
            r353 = r43;
            r86 = r273;
        }
    }

    public int mkgauss(SHAKE256 shake256, int r18) {
        int r12 = 1 << (10 - r18);
        int r52 = 0;
        for (int r42 = 0; r42 < r12; r42++) {
            long j10 = get_rng_u64(shake256);
            int r10 = (int) (j10 >>> 63);
            int r72 = (int) (((j10 & LocationRequestCompat.PASSIVE_INTERVAL) - this.gauss_1024_12289[0]) >>> 63);
            long j11 = LocationRequestCompat.PASSIVE_INTERVAL & get_rng_u64(shake256);
            int r6 = 1;
            int r92 = 0;
            while (true) {
                long[] jArr = this.gauss_1024_12289;
                if (r6 < jArr.length) {
                    int r13 = ((int) ((j11 - jArr[r6]) >>> 63)) ^ 1;
                    r92 |= (-((r72 ^ 1) & r13)) & r6;
                    r72 |= r13;
                    r6++;
                }
            }
            r52 += ((-r10) ^ r92) + r10;
        }
        return r52;
    }

    public void modp_NTT2(int[] r10, int r11, int[] r12, int r13, int r14, int r15, int r16) {
        modp_NTT2_ext(r10, r11, 1, r12, r13, r14, r15, r16);
    }

    public void modp_NTT2_ext(int[] r18, int r19, int r20, int[] r21, int r22, int r23, int r24, int r25) {
        if (r23 == 0) {
            return;
        }
        int r26 = mkn(r23);
        int r32 = 1;
        int r42 = r26;
        while (r32 < r26) {
            int r52 = r42 >> 1;
            int r72 = 0;
            int r82 = 0;
            while (r72 < r32) {
                int r92 = r21[r22 + r32 + r72];
                int r10 = (r82 * r20) + r19;
                int r11 = (r52 * r20) + r10;
                int r12 = 0;
                while (r12 < r52) {
                    int r13 = r18[r10];
                    int r14 = modp_montymul(r18[r11], r92, r24, r25);
                    r18[r10] = modp_add(r13, r14, r24);
                    r18[r11] = modp_sub(r13, r14, r24);
                    r12++;
                    r10 += r20;
                    r11 += r20;
                }
                r72++;
                r82 += r42;
            }
            r32 <<= 1;
            r42 = r52;
        }
    }

    public int modp_R(int r22) {
        return Integer.MIN_VALUE - r22;
    }

    public int modp_R2(int r22, int r32) {
        int r02 = modp_R(r22);
        int r03 = modp_add(r02, r02, r22);
        int r04 = modp_montymul(r03, r03, r22, r32);
        int r05 = modp_montymul(r04, r04, r22, r32);
        int r06 = modp_montymul(r05, r05, r22, r32);
        int r07 = modp_montymul(r06, r06, r22, r32);
        int r33 = modp_montymul(r07, r07, r22, r32);
        return (r33 + (r22 & (-(r33 & 1)))) >>> 1;
    }

    public int modp_Rx(int r42, int r52, int r6, int r72) {
        int r43 = r42 - 1;
        int r02 = modp_R(r52);
        int r12 = 0;
        while (true) {
            int r22 = 1 << r12;
            if (r22 > r43) {
                return r02;
            }
            if ((r22 & r43) != 0) {
                r02 = modp_montymul(r02, r72, r52, r6);
            }
            r72 = modp_montymul(r72, r72, r52, r6);
            r12++;
        }
    }

    public int modp_add(int r12, int r22, int r32) {
        int r13 = (r12 + r22) - r32;
        return r13 + ((-(r13 >>> 31)) & r32);
    }

    public int modp_div(int r6, int r72, int r82, int r92, int r10) {
        int r02 = r82 - 2;
        for (int r12 = 30; r12 >= 0; r12--) {
            int r102 = modp_montymul(r10, r10, r82, r92);
            r10 = r102 ^ ((-(1 & (r02 >>> r12))) & (modp_montymul(r102, r72, r82, r92) ^ r102));
        }
        return modp_montymul(r6, modp_montymul(r10, 1, r82, r92), r82, r92);
    }

    public void modp_iNTT2(int[] r10, int r11, int[] r12, int r13, int r14, int r15, int r16) {
        modp_iNTT2_ext(r10, r11, 1, r12, r13, r14, r15, r16);
    }

    public void modp_iNTT2_ext(int[] r18, int r19, int r20, int[] r21, int r22, int r23, int r24, int r25) {
        if (r23 == 0) {
            return;
        }
        int r32 = mkn(r23);
        int r52 = r32;
        int r6 = 1;
        while (r52 > 1) {
            r52 >>= 1;
            int r82 = r6 << 1;
            int r92 = 0;
            int r10 = 0;
            while (r92 < r52) {
                int r11 = r21[r22 + r52 + r92];
                int r12 = (r10 * r20) + r19;
                int r13 = (r6 * r20) + r12;
                int r14 = 0;
                while (r14 < r6) {
                    int r15 = r18[r12];
                    int r72 = r18[r13];
                    r18[r12] = modp_add(r15, r72, r24);
                    r18[r13] = modp_montymul(modp_sub(r15, r72, r24), r11, r24, r25);
                    r14++;
                    r12 += r20;
                    r13 += r20;
                }
                r92++;
                r10 += r82;
            }
            r6 = r82;
        }
        int r42 = 1 << (31 - r23);
        int r53 = r19;
        int r73 = 0;
        while (r73 < r32) {
            r18[r53] = modp_montymul(r18[r53], r42, r24, r25);
            r73++;
            r53 += r20;
        }
    }

    public void modp_mkgm2(int[] r13, int r14, int[] r15, int r16, int r17, int r18, int r19, int r20) {
        int r92 = mkn(r17);
        int r12 = modp_R2(r19, r20);
        int r10 = modp_montymul(r18, r12, r19, r20);
        for (int r02 = r17; r02 < 10; r02++) {
            r10 = modp_montymul(r10, r10, r19, r20);
        }
        int r03 = modp_div(r12, r10, r19, r20, modp_R(r19));
        int r11 = 10 - r17;
        int r110 = modp_R(r19);
        int r22 = r110;
        for (int r32 = 0; r32 < r92; r32++) {
            short s7 = this.REV10[r32 << r11];
            r13[r14 + s7] = r110;
            r15[r16 + s7] = r22;
            r110 = modp_montymul(r110, r10, r19, r20);
            r22 = modp_montymul(r22, r03, r19, r20);
        }
    }

    public int modp_montymul(int r52, int r6, int r72, int r82) {
        long unsignedLong = toUnsignedLong(r52) * toUnsignedLong(r6);
        int unsignedLong2 = ((int) (((((r82 * unsignedLong) & toUnsignedLong(Integer.MAX_VALUE)) * r72) + unsignedLong) >>> 31)) - r72;
        return unsignedLong2 + ((-(unsignedLong2 >>> 31)) & r72);
    }

    public int modp_ninv31(int r32) {
        int r02 = 2 - r32;
        int r12 = (2 - (r32 * r02)) * r02;
        int r03 = (2 - (r32 * r12)) * r12;
        int r13 = (2 - (r32 * r03)) * r03;
        return (-((2 - (r32 * r13)) * r13)) & Integer.MAX_VALUE;
    }

    public int modp_norm(int r22, int r32) {
        return r22 - (r32 & (((r22 - ((r32 + 1) >>> 1)) >>> 31) - 1));
    }

    public void modp_poly_rec_res(int[] r6, int r72, int r82, int r92, int r10, int r11) {
        int r83 = 1 << (r82 - 1);
        for (int r12 = 0; r12 < r83; r12++) {
            int r22 = (r12 << 1) + r72;
            r6[r72 + r12] = modp_montymul(modp_montymul(r6[r22 + 0], r6[r22 + 1], r92, r10), r11, r92, r10);
        }
    }

    public int modp_set(int r22, int r32) {
        return r22 + (r32 & (-(r22 >>> 31)));
    }

    public int modp_sub(int r12, int r22, int r32) {
        int r13 = r12 - r22;
        return r13 + ((-(r13 >>> 31)) & r32);
    }

    public void poly_big_to_fp(FalconFPR[] falconFPRArr, int r18, int[] r19, int r20, int r21, int r22, int r23) {
        int r24 = mkn(r23);
        if (r21 == 0) {
            for (int r32 = 0; r32 < r24; r32++) {
                falconFPRArr[r18 + r32] = this.fpr.fpr_zero;
            }
            return;
        }
        int r42 = r20;
        int r52 = 0;
        while (r52 < r24) {
            int r6 = -(r19[(r42 + r21) - 1] >>> 30);
            int r72 = r6 >>> 1;
            int r82 = r6 & 1;
            FPREngine fPREngine = this.fpr;
            FalconFPR falconFPRFpr_add = fPREngine.fpr_zero;
            FalconFPR falconFPRFpr_mul = fPREngine.fpr_one;
            int r11 = 0;
            while (r11 < r21) {
                int r12 = (r19[r42 + r11] ^ r72) + r82;
                r82 = r12 >>> 31;
                int r122 = r12 & Integer.MAX_VALUE;
                FPREngine fPREngine2 = this.fpr;
                falconFPRFpr_add = fPREngine2.fpr_add(falconFPRFpr_add, fPREngine2.fpr_mul(fPREngine2.fpr_of(r122 - ((r122 << 1) & r6)), falconFPRFpr_mul));
                r11++;
                FPREngine fPREngine3 = this.fpr;
                falconFPRFpr_mul = fPREngine3.fpr_mul(falconFPRFpr_mul, fPREngine3.fpr_ptwo31);
            }
            falconFPRArr[r18 + r52] = falconFPRFpr_add;
            r52++;
            r42 += r22;
        }
    }

    public int poly_big_to_small(byte[] bArr, int r6, int[] r72, int r82, int r92, int r10) {
        int r102 = mkn(r10);
        for (int r12 = 0; r12 < r102; r12++) {
            int r22 = zint_one_to_plain(r72, r82 + r12);
            if (r22 < (-r92) || r22 > r92) {
                return 0;
            }
            bArr[r6 + r12] = (byte) r22;
        }
        return 1;
    }

    public void poly_small_mkgauss(SHAKE256 shake256, byte[] bArr, int r82, int r92) {
        int r32;
        int r02 = mkn(r92);
        int r22 = 0;
        for (int r12 = 0; r12 < r02; r12++) {
            while (true) {
                r32 = mkgauss(shake256, r92);
                if (r32 >= -127 && r32 <= 127) {
                    if (r12 != r02 - 1) {
                        r22 ^= r32 & 1;
                        break;
                    } else if (((r32 & 1) ^ r22) == 0) {
                    }
                }
            }
            bArr[r82 + r12] = (byte) r32;
        }
    }

    public int poly_small_sqnorm(byte[] bArr, int r6, int r72) {
        int r73 = mkn(r72);
        int r12 = 0;
        int r22 = 0;
        for (int r02 = 0; r02 < r73; r02++) {
            byte b10 = bArr[r6 + r02];
            r12 += b10 * b10;
            r22 |= r12;
        }
        return (-(r22 >>> 31)) | r12;
    }

    public void poly_small_to_fp(FalconFPR[] falconFPRArr, int r72, byte[] bArr, int r92, int r10) {
        int r102 = mkn(r10);
        for (int r02 = 0; r02 < r102; r02++) {
            falconFPRArr[r72 + r02] = this.fpr.fpr_of(bArr[r92 + r02]);
        }
    }

    public void poly_sub_scaled(int[] r18, int r19, int r20, int r21, int[] r22, int r23, int r24, int r25, int[] r26, int r27, int r28, int r29, int r30) {
        int r02 = mkn(r30);
        for (int r210 = 0; r210 < r02; r210++) {
            int r32 = -r26[r27 + r210];
            int r42 = (r210 * r21) + r19;
            int r16 = r23;
            for (int r15 = 0; r15 < r02; r15++) {
                zint_add_scaled_mul_small(r18, r42, r20, r22, r16, r24, r32, r28, r29);
                if (r210 + r15 == r02 - 1) {
                    r32 = -r32;
                    r42 = r19;
                } else {
                    r42 += r21;
                }
                r16 += r25;
            }
        }
    }

    public void poly_sub_scaled_ntt(int[] r27, int r28, int r29, int r30, int[] r31, int r32, int r33, int r34, int[] r35, int r36, int r37, int r38, int r39, int[] r40, int r41) {
        int r92 = r33;
        int r11 = mkn(r39);
        int r12 = r92 + 1;
        int r13 = r41 + mkn(r39);
        int r14 = r13 + mkn(r39);
        int r15 = (r11 * r12) + r14;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int r82 = 0;
        while (r82 < r12) {
            int r72 = falconSmallPrimeArr[r82].f11875p;
            int r6 = modp_ninv31(r72);
            int r52 = modp_R2(r72, r6);
            int r18 = modp_Rx(r92, r72, r6, r52);
            int r22 = r82;
            modp_mkgm2(r40, r41, r40, r13, r39, falconSmallPrimeArr[r82].f11874g, r72, r6);
            for (int r02 = 0; r02 < r11; r02++) {
                r40[r15 + r02] = modp_set(r35[r36 + r02], r72);
            }
            modp_NTT2(r40, r15, r40, r41, r39, r72, r6);
            int r19 = r14 + r22;
            int r24 = r32;
            int r23 = r19;
            int r73 = 0;
            while (r73 < r11) {
                r40[r23] = zint_mod_small_signed(r31, r24, r33, r72, r6, r52, r18);
                r73++;
                r24 += r34;
                r23 += r12;
            }
            modp_NTT2_ext(r40, r19, r12, r40, r41, r39, r72, r6);
            int r16 = r19;
            int r03 = 0;
            while (r03 < r11) {
                r40[r16] = modp_montymul(modp_montymul(r40[r15 + r03], r40[r16], r72, r6), r52, r72, r6);
                r03++;
                r16 += r12;
            }
            modp_iNTT2_ext(r40, r19, r12, r40, r13, r39, r72, r6);
            r82 = r22 + 1;
            r92 = r33;
        }
        zint_rebuild_CRT(r40, r14, r12, r12, r11, falconSmallPrimeArr, 1, r40, r15);
        int r93 = r28;
        int r132 = 0;
        while (r132 < r11) {
            zint_sub_scaled(r27, r93, r29, r40, r14, r12, r37, r38);
            r132++;
            r93 += r30;
            r14 += r12;
        }
    }

    public int solve_NTRU(int r20, byte[] bArr, int r22, byte[] bArr2, int r24, byte[] bArr3, int r26, byte[] bArr4, int r28, int r29, int[] r30, int r31) {
        byte[] bArr5;
        int r14;
        int r10 = mkn(r20);
        if (solve_NTRU_deepest(r20, bArr3, r26, bArr4, r28, r30, r31) == 0) {
            return 0;
        }
        int r02 = r20;
        if (r20 <= 2) {
            while (true) {
                int r12 = r02 - 1;
                if (r02 <= 0) {
                    break;
                }
                if (solve_NTRU_intermediate(r20, bArr3, r26, bArr4, r28, r12, r30, r31) == 0) {
                    return 0;
                }
                r02 = r12;
            }
        } else {
            while (true) {
                int r142 = r02 - 1;
                if (r02 > 2) {
                    if (solve_NTRU_intermediate(r20, bArr3, r26, bArr4, r28, r142, r30, r31) == 0) {
                        return 0;
                    }
                    r02 = r142;
                } else if (solve_NTRU_binary_depth1(r20, bArr3, r26, bArr4, r28, r30, r31) == 0 || solve_NTRU_binary_depth0(r20, bArr3, r26, bArr4, r28, r30, r31) == 0) {
                    return 0;
                }
            }
        }
        if (bArr2 == null) {
            bArr5 = new byte[r10];
            r14 = 0;
        } else {
            bArr5 = bArr2;
            r14 = r24;
        }
        if (poly_big_to_small(bArr, r22, r30, r31, r29, r20) == 0) {
            return 0;
        }
        int r15 = r31 + r10;
        if (poly_big_to_small(bArr5, r14, r30, r15, r29, r20) == 0) {
            return 0;
        }
        int r16 = r15 + r10;
        int r17 = r16 + r10;
        int r18 = r17 + r10;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int r82 = falconSmallPrimeArr[0].f11875p;
        int r72 = modp_ninv31(r82);
        modp_mkgm2(r30, r18, r30, r31, r20, falconSmallPrimeArr[0].f11874g, r82, r72);
        for (int r03 = 0; r03 < r10; r03++) {
            r30[r31 + r03] = modp_set(bArr5[r14 + r03], r82);
        }
        for (int r04 = 0; r04 < r10; r04++) {
            r30[r15 + r04] = modp_set(bArr3[r26 + r04], r82);
            r30[r16 + r04] = modp_set(bArr4[r28 + r04], r82);
            r30[r17 + r04] = modp_set(bArr[r22 + r04], r82);
        }
        modp_NTT2(r30, r15, r30, r18, r20, r82, r72);
        modp_NTT2(r30, r16, r30, r18, r20, r82, r72);
        modp_NTT2(r30, r17, r30, r18, r20, r82, r72);
        modp_NTT2(r30, r31, r30, r18, r20, r82, r72);
        int r05 = modp_montymul(12289, 1, r82, r72);
        for (int r32 = 0; r32 < r10; r32++) {
            if (modp_sub(modp_montymul(r30[r15 + r32], r30[r31 + r32], r82, r72), modp_montymul(r30[r16 + r32], r30[r17 + r32], r82, r72), r82) != r05) {
                return 0;
            }
        }
        return 1;
    }

    public int solve_NTRU_binary_depth0(int r27, byte[] bArr, int r29, byte[] bArr2, int r31, int[] r32, int r33) {
        int[] r11 = r32;
        int r12 = r33;
        int r14 = 1 << r27;
        int r15 = r14 >> 1;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int r82 = falconSmallPrimeArr[0].f11875p;
        int r72 = modp_ninv31(r82);
        int r6 = modp_R2(r82, r72);
        int r17 = r12 + r15;
        int r52 = r17 + r15;
        int r18 = r52 + r14;
        int r19 = r18 + r14;
        int r20 = r19 + r14;
        int r21 = r72;
        modp_mkgm2(r32, r19, r32, r20, r27, falconSmallPrimeArr[0].f11874g, r82, r21);
        for (int r02 = 0; r02 < r15; r02++) {
            int r13 = r12 + r02;
            r11[r13] = modp_set(zint_one_to_plain(r11, r13), r82);
            int r16 = r17 + r02;
            r11[r16] = modp_set(zint_one_to_plain(r11, r16), r82);
        }
        int r83 = r27 - 1;
        modp_NTT2(r32, r33, r32, r19, r83, r82, r21);
        modp_NTT2(r32, r17, r32, r19, r83, r82, r21);
        for (int r03 = 0; r03 < r14; r03++) {
            r11[r52 + r03] = modp_set(bArr[r29 + r03], r82);
            r11[r18 + r03] = modp_set(bArr2[r31 + r03], r82);
        }
        modp_NTT2(r32, r52, r32, r19, r27, r82, r21);
        modp_NTT2(r32, r18, r32, r19, r27, r82, r21);
        int r04 = 0;
        while (r04 < r14) {
            int r53 = r52 + r04;
            int r110 = r53 + 0;
            int r22 = r11[r110];
            int r54 = r53 + 1;
            int r42 = r11[r54];
            int r62 = r18 + r04;
            int r73 = r62 + 0;
            int r84 = r11[r73];
            int r63 = r62 + 1;
            int r34 = r11[r63];
            int r192 = r04 >> 1;
            int r25 = r15;
            int r10 = r21;
            int r152 = modp_montymul(r11[r12 + r192], r6, r82, r10);
            int r212 = r14;
            int r142 = modp_montymul(r11[r17 + r192], r6, r82, r10);
            r11[r110] = modp_montymul(r34, r152, r82, r10);
            r11[r54] = modp_montymul(r84, r152, r82, r10);
            r11[r73] = modp_montymul(r42, r142, r82, r10);
            r11[r63] = modp_montymul(r22, r142, r82, r10);
            r04 += 2;
            r14 = r212;
            r15 = r25;
            r12 = r33;
            r21 = r10;
        }
        int r252 = r15;
        int r102 = r21;
        int r213 = r14;
        modp_iNTT2(r32, r52, r32, r20, r27, r82, r102);
        modp_iNTT2(r32, r18, r32, r20, r27, r82, r102);
        int r153 = r33 + r213;
        int r172 = r153 + r213;
        System.arraycopy(r11, r52, r11, r33, r213 * 2);
        int r182 = r172 + r213;
        int r193 = r182 + r213;
        int r202 = r193 + r213;
        int r222 = r202 + r213;
        modp_mkgm2(r32, r172, r32, r182, r27, FalconSmallPrimeList.PRIMES[0].f11874g, r82, r102);
        modp_NTT2(r32, r33, r32, r172, r27, r82, r102);
        modp_NTT2(r32, r153, r32, r172, r27, r82, r102);
        int r85 = r202 + 0;
        int r23 = r222 + 0;
        int r05 = modp_set(bArr[r29 + 0], r82);
        r11[r23] = r05;
        r11[r85] = r05;
        for (int r35 = 1; r35 < r213; r35++) {
            int r111 = r29 + r35;
            r11[r202 + r35] = modp_set(bArr[r111], r82);
            r11[(r222 + r213) - r35] = modp_set(-bArr[r111], r82);
        }
        modp_NTT2(r32, r202, r32, r172, r27, r82, r102);
        modp_NTT2(r32, r222, r32, r172, r27, r82, r102);
        for (int r06 = 0; r06 < r213; r06++) {
            int r112 = modp_montymul(r11[r222 + r06], r6, r82, r102);
            r11[r182 + r06] = modp_montymul(r112, r11[r33 + r06], r82, r102);
            r11[r193 + r06] = modp_montymul(r112, r11[r202 + r06], r82, r102);
        }
        int r07 = modp_set(bArr2[r31 + 0], r82);
        r11[r23] = r07;
        r11[r85] = r07;
        for (int r36 = 1; r36 < r213; r36++) {
            int r113 = r31 + r36;
            r11[r202 + r36] = modp_set(bArr2[r113], r82);
            r11[(r222 + r213) - r36] = modp_set(-bArr2[r113], r82);
        }
        modp_NTT2(r32, r202, r32, r172, r27, r82, r102);
        modp_NTT2(r32, r222, r32, r172, r27, r82, r102);
        for (int r08 = 0; r08 < r213; r08++) {
            int r114 = modp_montymul(r11[r222 + r08], r6, r82, r102);
            int r24 = r182 + r08;
            r11[r24] = modp_add(r11[r24], modp_montymul(r114, r11[r153 + r08], r82, r102), r82);
            int r26 = r193 + r08;
            r11[r26] = modp_add(r11[r26], modp_montymul(r114, r11[r202 + r08], r82, r102), r82);
        }
        modp_mkgm2(r32, r172, r32, r202, r27, FalconSmallPrimeList.PRIMES[0].f11874g, r82, r102);
        modp_iNTT2(r32, r182, r32, r202, r27, r82, r102);
        modp_iNTT2(r32, r193, r32, r202, r27, r82, r102);
        for (int r09 = 0; r09 < r213; r09++) {
            int r28 = r182 + r09;
            r11[r172 + r09] = modp_norm(r11[r28], r82);
            r11[r28] = modp_norm(r11[r193 + r09], r82);
        }
        FalconFPR[] falconFPRArr = new FalconFPR[r213 * 3];
        int r43 = r213 + 0;
        int r010 = r43 + r213;
        for (int r115 = 0; r115 < r213; r115++) {
            falconFPRArr[r010 + r115] = this.fpr.fpr_of(r11[r182 + r115]);
        }
        this.fft.FFT(falconFPRArr, r010, r27);
        System.arraycopy(falconFPRArr, r010, falconFPRArr, r43, r252);
        int r86 = r43 + r252;
        int r011 = 0;
        while (r011 < r213) {
            falconFPRArr[r86 + r011] = this.fpr.fpr_of(r11[r172 + r011]);
            r011++;
            r11 = r32;
        }
        this.fft.FFT(falconFPRArr, r86, r27);
        this.fft.poly_div_autoadj_fft(falconFPRArr, r86, falconFPRArr, r43, r27);
        this.fft.iFFT(falconFPRArr, r86, r27);
        for (int r012 = 0; r012 < r213; r012++) {
            r32[r172 + r012] = modp_set((int) this.fpr.fpr_rint(falconFPRArr[r86 + r012]), r82);
        }
        modp_mkgm2(r32, r182, r32, r193, r27, FalconSmallPrimeList.PRIMES[0].f11874g, r82, r102);
        for (int r013 = 0; r013 < r213; r013++) {
            r32[r202 + r013] = modp_set(bArr[r29 + r013], r82);
            r32[r222 + r013] = modp_set(bArr2[r31 + r013], r82);
        }
        modp_NTT2(r32, r172, r32, r182, r27, r82, r102);
        modp_NTT2(r32, r202, r32, r182, r27, r82, r102);
        modp_NTT2(r32, r222, r32, r182, r27, r82, r102);
        for (int r014 = 0; r014 < r213; r014++) {
            int r116 = modp_montymul(r32[r172 + r014], r6, r82, r102);
            int r210 = r33 + r014;
            r32[r210] = modp_sub(r32[r210], modp_montymul(r116, r32[r202 + r014], r82, r102), r82);
            int r211 = r153 + r014;
            r32[r211] = modp_sub(r32[r211], modp_montymul(r116, r32[r222 + r014], r82, r102), r82);
        }
        modp_iNTT2(r32, r33, r32, r193, r27, r82, r102);
        modp_iNTT2(r32, r153, r32, r193, r27, r82, r102);
        for (int r015 = 0; r015 < r213; r015++) {
            int r117 = r33 + r015;
            r32[r117] = modp_norm(r32[r117], r82);
            int r118 = r153 + r015;
            r32[r118] = modp_norm(r32[r118], r82);
        }
        return 1;
    }

    public int solve_NTRU_binary_depth1(int r36, byte[] bArr, int r38, byte[] bArr2, int r40, int[] r41, int r42) {
        int r13;
        int r25;
        FalconKeyGen falconKeyGen = this;
        int r12 = r42;
        int r92 = 1 << r36;
        int r15 = r36 - 1;
        int r14 = 1 << r15;
        int r82 = r14 >> 1;
        int[] r02 = falconKeyGen.MAX_BL_SMALL;
        int r72 = r02[1];
        int r6 = r02[2];
        int r52 = falconKeyGen.MAX_BL_LARGE[1];
        int r03 = r6 * r82;
        int r16 = r12 + r03;
        int r43 = r16 + r03;
        int r32 = r52 * r14;
        int r22 = r43 + r32;
        int r04 = 0;
        while (r04 < r52) {
            int r17 = FalconSmallPrimeList.PRIMES[r04].f11875p;
            int r132 = falconKeyGen.modp_ninv31(r17);
            int r172 = r15;
            int r152 = falconKeyGen.modp_R2(r17, r132);
            int r19 = falconKeyGen.modp_Rx(r6, r17, r132, r152);
            int r20 = r43 + r04;
            int r21 = r22 + r04;
            int r222 = r92;
            int r23 = r12;
            int r24 = r16;
            int r93 = 0;
            while (true) {
                r25 = r04;
                if (r93 < r82) {
                    int r18 = r17;
                    int r26 = r82;
                    int r83 = r52;
                    int r29 = r6;
                    r41[r20] = zint_mod_small_signed(r41, r23, r6, r18, r132, r152, r19);
                    r41[r21] = zint_mod_small_signed(r41, r24, r29, r18, r132, r152, r19);
                    r93++;
                    r23 += r29;
                    r24 += r29;
                    r20 += r83;
                    r21 += r83;
                    r52 = r83;
                    r32 = r32;
                    r43 = r43;
                    r17 = r18;
                    r04 = r25;
                    r82 = r26;
                    r14 = r14;
                    r22 = r22;
                    r6 = r29;
                    r72 = r72;
                }
            }
            r04 = r25 + 1;
            r15 = r172;
            r92 = r222;
            r82 = r82;
            r14 = r14;
            falconKeyGen = this;
        }
        int r10 = r32;
        int r262 = r82;
        int r223 = r92;
        int r27 = r14;
        int r173 = r15;
        int r84 = r52;
        System.arraycopy(r41, r43, r41, r12, r10);
        int r133 = r12 + r10;
        System.arraycopy(r41, r22, r41, r133, r10);
        int r102 = r10 + r133;
        int r142 = r72;
        int r153 = r142 * r27;
        int r94 = r102 + r153;
        int r162 = r94 + r153;
        int r73 = 0;
        while (r73 < r84) {
            FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
            int r62 = falconSmallPrimeArr[r73].f11875p;
            int r44 = modp_ninv31(r62);
            int r28 = r162 + r223;
            int r110 = r28 + r27;
            int r182 = r153;
            int r154 = r110 + r223;
            int r202 = r94;
            int r232 = modp_R2(r62, r44);
            int r242 = r44;
            int r252 = r102;
            int r282 = r62;
            int r30 = r142;
            int r143 = r73;
            int r192 = r133;
            int r134 = r262;
            int r263 = r84;
            modp_mkgm2(r41, r162, r41, r28, r36, falconSmallPrimeArr[r73].f11874g, r282, r242);
            int r85 = r223;
            for (int r111 = 0; r111 < r85; r111++) {
                r41[r110 + r111] = modp_set(bArr[r38 + r111], r282);
                r41[r154 + r111] = modp_set(bArr2[r40 + r111], r282);
            }
            modp_NTT2(r41, r110, r41, r162, r36, r282, r242);
            modp_NTT2(r41, r154, r41, r162, r36, r282, r242);
            int r63 = r36;
            int r74 = r173;
            while (r63 > r74) {
                int r174 = r63;
                modp_poly_rec_res(r41, r110, r63, r282, r242, r232);
                modp_poly_rec_res(r41, r154, r174, r282, r242, r232);
                r63 = r174 - 1;
            }
            int r64 = r162 + r27;
            int r53 = r27;
            System.arraycopy(r41, r28, r41, r64, r53);
            int r45 = r64 + r53;
            System.arraycopy(r41, r110, r41, r45, r53);
            int r95 = r45 + r53;
            System.arraycopy(r41, r154, r41, r95, r53);
            int r155 = r95 + r53;
            int r175 = r155 + r134;
            int r212 = r12 + r143;
            int r224 = r192 + r143;
            int r05 = r212;
            int r210 = r224;
            int r112 = 0;
            while (r112 < r134) {
                r41[r155 + r112] = r41[r05];
                r41[r175 + r112] = r41[r210];
                r112++;
                r05 += r263;
                r210 += r263;
            }
            int r272 = r74 - 1;
            int r122 = r53;
            modp_NTT2(r41, r155, r41, r162, r272, r282, r242);
            modp_NTT2(r41, r175, r41, r162, r272, r282, r242);
            int r06 = r212;
            int r211 = r224;
            int r113 = 0;
            while (r113 < r134) {
                int r33 = r113 << 1;
                int r46 = r45 + r33;
                int r54 = r41[r46 + 0];
                int r47 = r41[r46 + 1];
                int r34 = r33 + r95;
                int r75 = r41[r34 + 0];
                int r35 = r41[r34 + 1];
                int r65 = r41[r155 + r113];
                int r273 = r155;
                int r156 = r282;
                int r342 = r242;
                int r243 = r85;
                int r86 = r232;
                int r66 = modp_montymul(r65, r86, r156, r342);
                int r332 = r122;
                int r123 = modp_montymul(r41[r175 + r113], r86, r156, r342);
                r41[r06 + 0] = modp_montymul(r35, r66, r156, r342);
                r41[r06 + r263] = modp_montymul(r75, r66, r156, r342);
                r41[r211 + 0] = modp_montymul(r47, r123, r156, r342);
                r41[r211 + r263] = modp_montymul(r54, r123, r156, r342);
                r113++;
                int r37 = r263 << 1;
                r06 += r37;
                r211 += r37;
                r282 = r156;
                r155 = r273;
                r122 = r332;
                r232 = r86;
                r85 = r243;
                r242 = r342;
                r134 = r134;
            }
            int r333 = r122;
            int r233 = r134;
            int r135 = r242;
            int r157 = r282;
            int r244 = r85;
            modp_iNTT2_ext(r41, r212, r263, r41, r64, r74, r157, r135);
            modp_iNTT2_ext(r41, r224, r263, r41, r64, r74, r157, r135);
            if (r143 < r30) {
                modp_iNTT2(r41, r45, r41, r64, r74, r157, r135);
                modp_iNTT2(r41, r95, r41, r64, r74, r157, r135);
                int r07 = r252 + r143;
                int r213 = r202 + r143;
                r13 = r333;
                int r114 = 0;
                while (r114 < r13) {
                    r41[r07] = r41[r45 + r114];
                    r41[r213] = r41[r95 + r114];
                    r114++;
                    r07 += r30;
                    r213 += r30;
                }
            } else {
                r13 = r333;
            }
            r73 = r143 + 1;
            r142 = r30;
            r223 = r244;
            r27 = r13;
            r153 = r182;
            r133 = r192;
            r94 = r202;
            r102 = r252;
            r84 = r263;
            r173 = r74;
            r12 = r42;
            r262 = r233;
        }
        int r253 = r102;
        int r193 = r133;
        int r322 = r173;
        int r234 = r262;
        int r136 = r27;
        int r264 = r84;
        int r87 = r142;
        int r124 = r136 << 1;
        FalconSmallPrime[] falconSmallPrimeArr2 = FalconSmallPrimeList.PRIMES;
        zint_rebuild_CRT(r41, r42, r264, r264, r124, falconSmallPrimeArr2, 1, r41, r162);
        zint_rebuild_CRT(r41, r253, r87, r87, r124, falconSmallPrimeArr2, 1, r41, r162);
        FalconFPR[] falconFPRArr = new FalconFPR[r136];
        FalconFPR[] falconFPRArr2 = new FalconFPR[r136];
        poly_big_to_fp(falconFPRArr, 0, r41, r42, r264, r264, r322);
        poly_big_to_fp(falconFPRArr2, 0, r41, r193, r264, r264, r322);
        System.arraycopy(r41, r253, r41, r42, r87 * 2 * r136);
        FalconFPR[] falconFPRArr3 = new FalconFPR[r136];
        FalconFPR[] falconFPRArr4 = new FalconFPR[r136];
        poly_big_to_fp(falconFPRArr3, 0, r41, r42, r87, r87, r322);
        poly_big_to_fp(falconFPRArr4, 0, r41, r42 + r153, r87, r87, r322);
        this.fft.FFT(falconFPRArr, 0, r322);
        this.fft.FFT(falconFPRArr2, 0, r322);
        this.fft.FFT(falconFPRArr3, 0, r322);
        this.fft.FFT(falconFPRArr4, 0, r322);
        FalconFPR[] falconFPRArr5 = new FalconFPR[r136];
        FalconFPR[] falconFPRArr6 = new FalconFPR[r234];
        this.fft.poly_add_muladj_fft(falconFPRArr5, 0, falconFPRArr, 0, falconFPRArr2, 0, falconFPRArr3, 0, falconFPRArr4, 0, r322);
        this.fft.poly_invnorm2_fft(falconFPRArr6, 0, falconFPRArr3, 0, falconFPRArr4, 0, r322);
        this.fft.poly_mul_autoadj_fft(falconFPRArr5, 0, falconFPRArr6, 0, r322);
        this.fft.iFFT(falconFPRArr5, 0, r322);
        for (int r115 = 0; r115 < r136; r115++) {
            FalconFPR falconFPR = falconFPRArr5[r115];
            FPREngine fPREngine = this.fpr;
            if (fPREngine.fpr_lt(falconFPR, fPREngine.fpr_ptwo63m1)) {
                FPREngine fPREngine2 = this.fpr;
                if (fPREngine2.fpr_lt(fPREngine2.fpr_mtwo63m1, falconFPR)) {
                    FPREngine fPREngine3 = this.fpr;
                    falconFPRArr5[r115] = fPREngine3.fpr_of(fPREngine3.fpr_rint(falconFPR));
                }
            }
            return 0;
        }
        this.fft.FFT(falconFPRArr5, 0, r322);
        this.fft.poly_mul_fft(falconFPRArr3, 0, falconFPRArr5, 0, r322);
        this.fft.poly_mul_fft(falconFPRArr4, 0, falconFPRArr5, 0, r322);
        this.fft.poly_sub(falconFPRArr, 0, falconFPRArr3, 0, r322);
        this.fft.poly_sub(falconFPRArr2, 0, falconFPRArr4, 0, r322);
        this.fft.iFFT(falconFPRArr, 0, r322);
        this.fft.iFFT(falconFPRArr2, 0, r322);
        int r08 = r42 + r136;
        for (int r116 = 0; r116 < r136; r116++) {
            r41[r42 + r116] = (int) this.fpr.fpr_rint(falconFPRArr[r116]);
            r41[r08 + r116] = (int) this.fpr.fpr_rint(falconFPRArr2[r116]);
        }
        return 1;
    }

    public int solve_NTRU_deepest(int r21, byte[] bArr, int r23, byte[] bArr2, int r25, int[] r26, int r27) {
        int r15 = this.MAX_BL_SMALL[r21];
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int r11 = r27 + r15;
        int r16 = r11 + r15;
        int r17 = r16 + r15;
        int r18 = r17 + r15;
        make_fg(r26, r16, bArr, r23, bArr2, r25, r21, r21, 0);
        zint_rebuild_CRT(r26, r16, r15, r15, 2, falconSmallPrimeArr, 0, r26, r18);
        return (zint_bezout(r26, r11, r26, r27, r26, r16, r26, r17, r15, r26, r18) != 0 && zint_mul_small(r26, r27, r15, 12289) == 0 && zint_mul_small(r26, r11, r15, 12289) == 0) ? 1 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0495 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int solve_NTRU_intermediate(int r40, byte[] r41, int r42, byte[] r43, int r44, int r45, int[] r46, int r47) {
        /*
            Method dump skipped, instructions count: 1295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.falcon.FalconKeyGen.solve_NTRU_intermediate(int, byte[], int, byte[], int, int, int[], int):int");
    }

    public void zint_add_mul_small(int[] r92, int r10, int[] r11, int r12, int r13, int r14) {
        int r15 = 0;
        for (int r02 = 0; r02 < r13; r02++) {
            int r22 = r10 + r02;
            long unsignedLong = (toUnsignedLong(r11[r12 + r02]) * toUnsignedLong(r14)) + toUnsignedLong(r92[r22]) + toUnsignedLong(r15);
            r92[r22] = ((int) unsignedLong) & Integer.MAX_VALUE;
            r15 = (int) (unsignedLong >>> 31);
        }
        r92[r10 + r13] = r15;
    }

    public void zint_add_scaled_mul_small(int[] r16, int r17, int r18, int[] r19, int r20, int r21, int r22, int r23, int r24) {
        if (r21 == 0) {
            return;
        }
        int r25 = (-(r19[(r20 + r21) - 1] >>> 30)) >>> 1;
        int r32 = 0;
        int r6 = r23;
        int r42 = 0;
        while (r6 < r18) {
            int r72 = r6 - r23;
            int r73 = r72 < r21 ? r19[r20 + r72] : r25;
            int r12 = r17 + r6;
            long unsignedLong = (toUnsignedLong(r32 | ((r73 << r24) & Integer.MAX_VALUE)) * r22) + toUnsignedLong(r16[r12]) + r42;
            r16[r12] = ((int) unsignedLong) & Integer.MAX_VALUE;
            r42 = (int) (unsignedLong >>> 31);
            r6++;
            r32 = r73 >>> (31 - r24);
        }
    }

    public int zint_bezout(int[] r47, int r48, int[] r49, int r50, int[] r51, int r52, int[] r53, int r54, int r55, int[] r56, int r57) {
        FalconKeyGen falconKeyGen = this;
        int r11 = r55;
        int[] r82 = r56;
        if (r11 == 0) {
            return 0;
        }
        int r6 = r57 + r11;
        int r72 = r6 + r11;
        int r58 = r72 + r11;
        int r35 = r52 + 0;
        int r36 = falconKeyGen.modp_ninv31(r51[r35]);
        int r37 = r54 + 0;
        int r38 = falconKeyGen.modp_ninv31(r53[r37]);
        System.arraycopy(r51, r52, r82, r72, r11);
        System.arraycopy(r53, r54, r82, r58, r11);
        r47[r48 + 0] = 1;
        r49[r50 + 0] = 0;
        for (int r02 = 1; r02 < r11; r02++) {
            r47[r48 + r02] = 0;
            r49[r50 + r02] = 0;
        }
        System.arraycopy(r53, r54, r82, r57, r11);
        System.arraycopy(r51, r52, r82, r6, r11);
        r82[r6 + 0] = r82[r0] - 1;
        int r32 = (r11 * 62) + 30;
        for (int r42 = 30; r32 >= r42; r42 = 30) {
            int r12 = -1;
            int r16 = r11;
            int r22 = -1;
            int r17 = 0;
            int r18 = 0;
            int r19 = 0;
            int r20 = 0;
            while (true) {
                int r21 = r16 - 1;
                if (r16 <= 0) {
                    break;
                }
                int r162 = r82[r72 + r21];
                int r222 = r82[r58 + r21];
                r18 ^= (r18 ^ r162) & r22;
                r17 ^= (r17 ^ r162) & r12;
                r20 ^= (r20 ^ r222) & r22;
                r19 ^= (r19 ^ r222) & r12;
                int r13 = ((((r162 | r222) + Integer.MAX_VALUE) >>> 31) - 1) & r22;
                r16 = r21;
                int r45 = r22;
                r22 = r13;
                r12 = r45;
            }
            int r43 = ~r12;
            long unsignedLong = (falconKeyGen.toUnsignedLong(r18 & r43) << 31) + falconKeyGen.toUnsignedLong(r17 | (r18 & r12));
            long unsignedLong2 = (falconKeyGen.toUnsignedLong(r20 & r43) << 31) + falconKeyGen.toUnsignedLong(r19 | (r20 & r12));
            int r03 = r82[r72 + 0];
            int r14 = r82[r58 + 0];
            long j10 = 0;
            long j11 = 0;
            long j12 = 1;
            long j13 = 1;
            int r23 = 0;
            while (r23 < 31) {
                long j14 = unsignedLong2 - unsignedLong;
                int r40 = r32;
                int r44 = (int) ((j14 ^ ((unsignedLong ^ unsignedLong2) & (unsignedLong ^ j14))) >>> 63);
                int r33 = (r03 >> r23) & 1;
                int r28 = r33 & (r14 >> r23) & 1;
                int r29 = r6;
                int r62 = r28 & r44;
                int r46 = r28 & (~r44);
                int r34 = (r33 ^ 1) | r62;
                int r04 = r03 - ((-r62) & r14);
                long j15 = unsignedLong - (unsignedLong2 & (-falconKeyGen.toUnsignedLong(r62)));
                long j16 = -r62;
                long j17 = j12 - (j11 & j16);
                long j18 = j10 - (j13 & j16);
                int r15 = r14 - ((-r46) & r04);
                long j19 = unsignedLong2 - (j15 & (-falconKeyGen.toUnsignedLong(r46)));
                long j20 = -r46;
                long j21 = j11 - (j17 & j20);
                long j22 = j13 - (j18 & j20);
                r03 = r04 + ((r34 - 1) & r04);
                long j23 = r34;
                long j24 = j23 - 1;
                j12 = j17 + (j17 & j24);
                j10 = j18 + (j18 & j24);
                unsignedLong = j15 ^ ((j15 ^ (j15 >> 1)) & (-falconKeyGen.toUnsignedLong(r34)));
                r14 = r15 + ((-r34) & r15);
                long j25 = -j23;
                j11 = j21 + (j21 & j25);
                j13 = j22 + (j22 & j25);
                unsignedLong2 = j19 ^ ((falconKeyGen.toUnsignedLong(r34) - 1) & (j19 ^ (j19 >> 1)));
                r23++;
                r6 = r29;
                r32 = r40;
            }
            int r402 = r32;
            int r292 = r6;
            int r05 = zint_co_reduce(r56, r72, r56, r58, r55, j12, j10, j11, j13);
            long j26 = -(r05 & 1);
            long j27 = j12 - ((j12 + j12) & j26);
            long j28 = j10 - ((j10 + j10) & j26);
            long j29 = -(r05 >>> 1);
            long j30 = j11 - ((j11 + j11) & j29);
            long j31 = j13 - ((j13 + j13) & j29);
            zint_co_reduce_mod(r47, r48, r56, r57, r53, r54, r55, r38, j27, j28, j30, j31);
            zint_co_reduce_mod(r49, r50, r56, r292, r51, r52, r55, r36, j27, j28, j30, j31);
            r32 = r402 - 30;
            falconKeyGen = this;
            r11 = r55;
            r82 = r56;
            r58 = r58;
            r6 = r292;
            r72 = r72;
        }
        int r442 = r72;
        int r06 = r56[r442 + 0] ^ 1;
        for (int r24 = 1; r24 < r55; r24++) {
            r06 |= r56[r442 + r24];
        }
        return (1 - ((r06 | (-r06)) >>> 31)) & r51[r35] & r53[r37];
    }

    public int zint_co_reduce(int[] r26, int r27, int[] r28, int r29, int r30, long j10, long j11, long j12, long j13) {
        long j14 = 0;
        int r82 = 0;
        long j15 = 0;
        while (r82 < r30) {
            int r17 = r27 + r82;
            int r18 = r29 + r82;
            long j16 = r26[r17];
            long j17 = r28[r18];
            long jB = v.b(j17, j11, j16 * j10, j14);
            int r16 = r82;
            long jB2 = v.b(j17, j13, j16 * j12, j15);
            if (r16 > 0) {
                r26[r17 - 1] = ((int) jB) & Integer.MAX_VALUE;
                r28[r18 - 1] = ((int) jB2) & Integer.MAX_VALUE;
            }
            j14 = jB >> 31;
            j15 = jB2 >> 31;
            r82 = r16 + 1;
        }
        r26[(r27 + r30) - 1] = (int) j14;
        r28[(r29 + r30) - 1] = (int) j15;
        int r72 = (int) (j14 >>> 63);
        int r6 = (int) (j15 >>> 63);
        zint_negate(r26, r27, r30, r72);
        zint_negate(r28, r29, r30, r6);
        return (r6 << 1) | r72;
    }

    public void zint_co_reduce_mod(int[] r31, int r32, int[] r33, int r34, int[] r35, int r36, int r37, int r38, long j10, long j11, long j12, long j13) {
        long j14 = j10;
        int r10 = r31[r32 + 0];
        int r12 = r33[r34 + 0];
        int r13 = (((((int) j11) * r12) + (((int) j14) * r10)) * r38) & Integer.MAX_VALUE;
        int r102 = (((r12 * ((int) j13)) + (r10 * ((int) j12))) * r38) & Integer.MAX_VALUE;
        long j15 = 0;
        long j16 = 0;
        int r11 = 0;
        while (r11 < r37) {
            int r122 = r32 + r11;
            long j17 = j15;
            int r24 = r34 + r11;
            long j18 = r31[r122];
            long j19 = r33[r24];
            int r25 = r36 + r11;
            long jB = v.b(r35[r25], toUnsignedLong(r13), (j19 * j11) + (j18 * j14), j17);
            long jB2 = v.b(r35[r25], toUnsignedLong(r102), (j19 * j13) + (j18 * j12), j16);
            if (r11 > 0) {
                r31[r122 - 1] = ((int) jB) & Integer.MAX_VALUE;
                r33[r24 - 1] = ((int) jB2) & Integer.MAX_VALUE;
            }
            j15 = jB >> 31;
            j16 = jB2 >> 31;
            r11++;
            j14 = j10;
        }
        long j20 = j15;
        r31[(r32 + r37) - 1] = (int) j20;
        long j21 = j16;
        r33[(r34 + r37) - 1] = (int) j21;
        zint_finish_mod(r31, r32, r37, r35, r36, (int) (j20 >>> 63));
        zint_finish_mod(r33, r34, r37, r35, r36, (int) (j21 >>> 63));
    }

    public void zint_finish_mod(int[] r72, int r82, int r92, int[] r10, int r11, int r12) {
        int r22 = 0;
        for (int r13 = 0; r13 < r92; r13++) {
            r22 = ((r72[r82 + r13] - r10[r11 + r13]) - r22) >>> 31;
        }
        int r14 = (-r12) >>> 1;
        int r23 = -((1 - r22) | r12);
        for (int r02 = 0; r02 < r92; r02++) {
            int r32 = r82 + r02;
            int r42 = (r72[r32] - ((r10[r11 + r02] ^ r14) & r23)) - r12;
            r72[r32] = Integer.MAX_VALUE & r42;
            r12 = r42 >>> 31;
        }
    }

    public int zint_mod_small_signed(int[] r12, int r22, int r32, int r42, int r52, int r6, int r72) {
        if (r32 == 0) {
            return 0;
        }
        return modp_sub(zint_mod_small_unsigned(r12, r22, r32, r42, r52, r6), (-(r12[(r22 + r32) - 1] >>> 30)) & r72, r42);
    }

    public int zint_mod_small_unsigned(int[] r42, int r52, int r6, int r72, int r82, int r92) {
        int r02 = 0;
        while (true) {
            int r12 = r6 - 1;
            if (r6 <= 0) {
                return r02;
            }
            int r62 = modp_montymul(r02, r92, r72, r82);
            int r03 = r42[r52 + r12] - r72;
            r02 = modp_add(r62, r03 + ((-(r03 >>> 31)) & r72), r72);
            r6 = r12;
        }
    }

    public int zint_mul_small(int[] r82, int r92, int r10, int r11) {
        int r12 = 0;
        for (int r02 = 0; r02 < r10; r02++) {
            int r22 = r92 + r02;
            long unsignedLong = (toUnsignedLong(r82[r22]) * toUnsignedLong(r11)) + r12;
            r82[r22] = ((int) unsignedLong) & Integer.MAX_VALUE;
            r12 = (int) (unsignedLong >> 31);
        }
        return r12;
    }

    public void zint_negate(int[] r52, int r6, int r72, int r82) {
        int r02 = (-r82) >>> 1;
        for (int r12 = 0; r12 < r72; r12++) {
            int r22 = r6 + r12;
            int r32 = (r52[r22] ^ r02) + r82;
            r52[r22] = Integer.MAX_VALUE & r32;
            r82 = r32 >>> 31;
        }
    }

    public void zint_norm_zero(int[] r12, int r13, int[] r14, int r15, int r16) {
        int r02 = 0;
        int r22 = r16;
        int r17 = 0;
        while (true) {
            int r32 = r22 - 1;
            if (r22 <= 0) {
                zint_sub(r12, r13, r14, r15, r16, r02 >>> 31);
                return;
            }
            int r23 = r12[r13 + r32];
            int r42 = r14[r15 + r32];
            int r18 = ((r17 << 30) | (r42 >>> 1)) - r23;
            r02 |= ((-(r18 >>> 31)) | ((-r18) >>> 31)) & ((r02 & 1) - 1);
            r22 = r32;
            r17 = r42 & 1;
        }
    }

    public int zint_one_to_plain(int[] r12, int r22) {
        int r13 = r12[r22 + 0];
        return r13 | ((1073741824 & r13) << 1);
    }

    public void zint_rebuild_CRT(int[] r20, int r21, int r22, int r23, int r24, FalconSmallPrime[] falconSmallPrimeArr, int r26, int[] r27, int r28) {
        r27[r28 + 0] = falconSmallPrimeArr[0].f11875p;
        int r13 = r22;
        int r12 = 1;
        while (r12 < r13) {
            FalconSmallPrime falconSmallPrime = falconSmallPrimeArr[r12];
            int r14 = falconSmallPrime.f11875p;
            int r15 = falconSmallPrime.f11876s;
            int r6 = modp_ninv31(r14);
            int r16 = modp_R2(r14, r6);
            int r17 = r21;
            int r52 = 0;
            while (r52 < r24) {
                int r25 = r17;
                int r132 = r6;
                zint_add_mul_small(r20, r25, r27, r28, r12, modp_montymul(r15, modp_sub(r20[r17 + r12], zint_mod_small_unsigned(r20, r25, r12, r14, r6, r16), r14), r14, r132));
                r52++;
                r17 += r23;
                r6 = r132;
            }
            r27[r28 + r12] = zint_mul_small(r27, r28, r12, r14);
            r12++;
            r13 = r22;
        }
        if (r26 != 0) {
            int r62 = r21;
            int r11 = 0;
            while (r11 < r24) {
                zint_norm_zero(r20, r62, r27, r28, r22);
                r11++;
                r62 += r23;
            }
        }
    }

    public int zint_sub(int[] r72, int r82, int[] r92, int r10, int r11, int r12) {
        int r122 = -r12;
        int r13 = 0;
        for (int r02 = 0; r02 < r11; r02++) {
            int r22 = r82 + r02;
            int r32 = r72[r22];
            int r42 = (r32 - r92[r10 + r02]) - r13;
            r13 = r42 >>> 31;
            r72[r22] = r32 ^ (((r42 & Integer.MAX_VALUE) ^ r32) & r122);
        }
        return r13;
    }

    public void zint_sub_scaled(int[] r11, int r12, int r13, int[] r14, int r15, int r16, int r17, int r18) {
        if (r16 == 0) {
            return;
        }
        int r19 = (-(r14[(r15 + r16) - 1] >>> 30)) >>> 1;
        int r22 = 0;
        int r52 = r17;
        int r32 = 0;
        while (r52 < r13) {
            int r6 = r52 - r17;
            int r62 = r6 < r16 ? r14[r6 + r15] : r19;
            int r72 = r12 + r52;
            int r92 = (r11[r72] - (r22 | ((r62 << r18) & Integer.MAX_VALUE))) - r32;
            r11[r72] = r92 & Integer.MAX_VALUE;
            r32 = r92 >>> 31;
            r52++;
            r22 = r62 >>> (31 - r18);
        }
    }
}
