package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PathParser {
    private static final String LOGTAG = "PathParser";

    public static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;
    }

    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        public PathDataNode(char c10, float[] fArr) {
            this.mType = c10;
            this.mParams = fArr;
        }

        public PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void addCommand(Path path, float[] fArr, char c10, char c11, float[] fArr2) {
            int r19;
            int r24;
            float f;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            char c12 = c11;
            float f17 = fArr[0];
            float f18 = fArr[1];
            float f19 = fArr[2];
            float f20 = fArr[3];
            float f21 = fArr[4];
            float f22 = fArr[5];
            switch (c12) {
                case 'A':
                case 'a':
                    r19 = 7;
                    break;
                case 'C':
                case 'c':
                    r19 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    r19 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    r19 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    r19 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f21, f22);
                    f17 = f21;
                    f19 = f17;
                    f18 = f22;
                    f20 = f18;
                    r19 = 2;
                    break;
            }
            float f23 = f17;
            float f24 = f18;
            float f25 = f21;
            float f26 = f22;
            int r72 = 0;
            char c13 = c10;
            while (r72 < fArr2.length) {
                if (c12 != 'A') {
                    if (c12 == 'C') {
                        r24 = r72;
                        int r73 = r24 + 2;
                        int r82 = r24 + 3;
                        int r92 = r24 + 4;
                        int r11 = r24 + 5;
                        path.cubicTo(fArr2[r24 + 0], fArr2[r24 + 1], fArr2[r73], fArr2[r82], fArr2[r92], fArr2[r11]);
                        f23 = fArr2[r92];
                        float f27 = fArr2[r11];
                        float f28 = fArr2[r73];
                        float f29 = fArr2[r82];
                        f24 = f27;
                        f20 = f29;
                        f19 = f28;
                    } else if (c12 == 'H') {
                        r24 = r72;
                        int r74 = r24 + 0;
                        path.lineTo(fArr2[r74], f24);
                        f23 = fArr2[r74];
                    } else if (c12 == 'Q') {
                        r24 = r72;
                        int r75 = r24 + 0;
                        int r12 = r24 + 1;
                        int r32 = r24 + 2;
                        int r52 = r24 + 3;
                        path.quadTo(fArr2[r75], fArr2[r12], fArr2[r32], fArr2[r52]);
                        float f30 = fArr2[r75];
                        float f31 = fArr2[r12];
                        f23 = fArr2[r32];
                        f24 = fArr2[r52];
                        f19 = f30;
                        f20 = f31;
                    } else if (c12 == 'V') {
                        r24 = r72;
                        int r76 = r24 + 0;
                        path.lineTo(f23, fArr2[r76]);
                        f24 = fArr2[r76];
                    } else if (c12 != 'a') {
                        if (c12 != 'c') {
                            if (c12 == 'h') {
                                int r02 = r72 + 0;
                                path.rLineTo(fArr2[r02], 0.0f);
                                f23 += fArr2[r02];
                            } else if (c12 != 'q') {
                                if (c12 == 'v') {
                                    int r03 = r72 + 0;
                                    path.rLineTo(0.0f, fArr2[r03]);
                                    f12 = fArr2[r03];
                                } else if (c12 == 'L') {
                                    int r04 = r72 + 0;
                                    int r42 = r72 + 1;
                                    path.lineTo(fArr2[r04], fArr2[r42]);
                                    f23 = fArr2[r04];
                                    f24 = fArr2[r42];
                                } else if (c12 == 'M') {
                                    f23 = fArr2[r72 + 0];
                                    f24 = fArr2[r72 + 1];
                                    if (r72 > 0) {
                                        path.lineTo(f23, f24);
                                    } else {
                                        path.moveTo(f23, f24);
                                        r24 = r72;
                                        f26 = f24;
                                        f25 = f23;
                                    }
                                } else if (c12 == 'S') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        f23 = (f23 * 2.0f) - f19;
                                        f24 = (f24 * 2.0f) - f20;
                                    }
                                    float f32 = f24;
                                    int r83 = r72 + 0;
                                    int r93 = r72 + 1;
                                    int r13 = r72 + 2;
                                    int r14 = r72 + 3;
                                    path.cubicTo(f23, f32, fArr2[r83], fArr2[r93], fArr2[r13], fArr2[r14]);
                                    f = fArr2[r83];
                                    f10 = fArr2[r93];
                                    f23 = fArr2[r13];
                                    f24 = fArr2[r14];
                                    f19 = f;
                                    f20 = f10;
                                } else if (c12 == 'T') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f23 = (f23 * 2.0f) - f19;
                                        f24 = (f24 * 2.0f) - f20;
                                    }
                                    int r05 = r72 + 0;
                                    int r22 = r72 + 1;
                                    path.quadTo(f23, f24, fArr2[r05], fArr2[r22]);
                                    float f33 = fArr2[r05];
                                    float f34 = fArr2[r22];
                                    r24 = r72;
                                    f20 = f24;
                                    f19 = f23;
                                    f23 = f33;
                                    f24 = f34;
                                } else if (c12 == 'l') {
                                    int r06 = r72 + 0;
                                    int r43 = r72 + 1;
                                    path.rLineTo(fArr2[r06], fArr2[r43]);
                                    f23 += fArr2[r06];
                                    f12 = fArr2[r43];
                                } else if (c12 == 'm') {
                                    float f35 = fArr2[r72 + 0];
                                    f23 += f35;
                                    float f36 = fArr2[r72 + 1];
                                    f24 += f36;
                                    if (r72 > 0) {
                                        path.rLineTo(f35, f36);
                                    } else {
                                        path.rMoveTo(f35, f36);
                                        r24 = r72;
                                        f26 = f24;
                                        f25 = f23;
                                    }
                                } else if (c12 == 's') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        float f37 = f23 - f19;
                                        f13 = f24 - f20;
                                        f14 = f37;
                                    } else {
                                        f14 = 0.0f;
                                        f13 = 0.0f;
                                    }
                                    int r132 = r72 + 0;
                                    int r142 = r72 + 1;
                                    int r15 = r72 + 2;
                                    int r222 = r72 + 3;
                                    path.rCubicTo(f14, f13, fArr2[r132], fArr2[r142], fArr2[r15], fArr2[r222]);
                                    f = fArr2[r132] + f23;
                                    f10 = fArr2[r142] + f24;
                                    f23 += fArr2[r15];
                                    f11 = fArr2[r222];
                                } else if (c12 == 't') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f15 = f23 - f19;
                                        f16 = f24 - f20;
                                    } else {
                                        f16 = 0.0f;
                                        f15 = 0.0f;
                                    }
                                    int r16 = r72 + 0;
                                    int r33 = r72 + 1;
                                    path.rQuadTo(f15, f16, fArr2[r16], fArr2[r33]);
                                    float f38 = f15 + f23;
                                    float f39 = f16 + f24;
                                    f23 += fArr2[r16];
                                    f24 += fArr2[r33];
                                    f20 = f39;
                                    f19 = f38;
                                }
                                f24 += f12;
                            } else {
                                int r07 = r72 + 0;
                                int r23 = r72 + 1;
                                int r44 = r72 + 2;
                                int r6 = r72 + 3;
                                path.rQuadTo(fArr2[r07], fArr2[r23], fArr2[r44], fArr2[r6]);
                                f = fArr2[r07] + f23;
                                f10 = fArr2[r23] + f24;
                                f23 += fArr2[r44];
                                f11 = fArr2[r6];
                            }
                            r24 = r72;
                        } else {
                            int r133 = r72 + 2;
                            int r143 = r72 + 3;
                            int r152 = r72 + 4;
                            int r223 = r72 + 5;
                            path.rCubicTo(fArr2[r72 + 0], fArr2[r72 + 1], fArr2[r133], fArr2[r143], fArr2[r152], fArr2[r223]);
                            f = fArr2[r133] + f23;
                            f10 = fArr2[r143] + f24;
                            f23 += fArr2[r152];
                            f11 = fArr2[r223];
                        }
                        f24 += f11;
                        f19 = f;
                        f20 = f10;
                        r24 = r72;
                    } else {
                        int r134 = r72 + 5;
                        int r144 = r72 + 6;
                        r24 = r72;
                        drawArc(path, f23, f24, fArr2[r134] + f23, fArr2[r144] + f24, fArr2[r72 + 0], fArr2[r72 + 1], fArr2[r72 + 2], fArr2[r72 + 3] != 0.0f, fArr2[r72 + 4] != 0.0f);
                        f23 += fArr2[r134];
                        f24 += fArr2[r144];
                    }
                    r72 = r24 + r19;
                    c13 = c11;
                    c12 = c13;
                } else {
                    r24 = r72;
                    int r135 = r24 + 5;
                    int r145 = r24 + 6;
                    drawArc(path, f23, f24, fArr2[r135], fArr2[r145], fArr2[r24 + 0], fArr2[r24 + 1], fArr2[r24 + 2], fArr2[r24 + 3] != 0.0f, fArr2[r24 + 4] != 0.0f);
                    f23 = fArr2[r135];
                    f24 = fArr2[r145];
                }
                f20 = f24;
                f19 = f23;
                r72 = r24 + r19;
                c13 = c11;
                c12 = c13;
            }
            fArr[0] = f23;
            fArr[1] = f24;
            fArr[2] = f19;
            fArr[3] = f20;
            fArr[4] = f25;
            fArr[5] = f26;
        }

        private static void arcToBezier(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
            double d19 = d12;
            int r42 = (int) Math.ceil(Math.abs((d18 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d16);
            double dSin = Math.sin(d16);
            double dCos2 = Math.cos(d17);
            double dSin2 = Math.sin(d17);
            double d20 = -d19;
            double d21 = d20 * dCos;
            double d22 = d13 * dSin;
            double d23 = (d21 * dSin2) - (d22 * dCos2);
            double d24 = d20 * dSin;
            double d25 = d13 * dCos;
            double d26 = (dCos2 * d25) + (dSin2 * d24);
            double d27 = d18 / r42;
            double d28 = d17;
            double d29 = d26;
            double d30 = d23;
            int r22 = 0;
            double d31 = d14;
            double d32 = d15;
            while (r22 < r42) {
                double d33 = d28 + d27;
                double dSin3 = Math.sin(d33);
                double dCos3 = Math.cos(d33);
                double d34 = (((d19 * dCos) * dCos3) + d10) - (d22 * dSin3);
                double d35 = (d25 * dSin3) + (d19 * dSin * dCos3) + d11;
                double d36 = (d21 * dSin3) - (d22 * dCos3);
                double d37 = (dCos3 * d25) + (dSin3 * d24);
                double d38 = d33 - d28;
                double dTan = Math.tan(d38 / 2.0d);
                double dSqrt = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d38)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d30 * dSqrt) + d31), (float) ((d29 * dSqrt) + d32), (float) (d34 - (dSqrt * d36)), (float) (d35 - (dSqrt * d37)), (float) d34, (float) d35);
                r22++;
                d27 = d27;
                dSin = dSin;
                d31 = d34;
                d24 = d24;
                dCos = dCos;
                d28 = d33;
                d29 = d37;
                d30 = d36;
                r42 = r42;
                d32 = d35;
                d19 = d12;
            }
        }

        private static void drawArc(Path path, float f, float f10, float f11, float f12, float f13, float f14, float f15, boolean z10, boolean z11) {
            double d10;
            double d11;
            double radians = Math.toRadians(f15);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d12 = f;
            double d13 = d12 * dCos;
            double d14 = f10;
            double d15 = f13;
            double d16 = ((d14 * dSin) + d13) / d15;
            double d17 = f14;
            double d18 = ((d14 * dCos) + ((-f) * dSin)) / d17;
            double d19 = f12;
            double d20 = ((d19 * dSin) + (f11 * dCos)) / d15;
            double d21 = ((d19 * dCos) + ((-f11) * dSin)) / d17;
            double d22 = d16 - d20;
            double d23 = d18 - d21;
            double d24 = (d16 + d20) / 2.0d;
            double d25 = (d18 + d21) / 2.0d;
            double d26 = (d23 * d23) + (d22 * d22);
            if (d26 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d27 = (1.0d / d26) - 0.25d;
            if (d27 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d26);
                float fSqrt = (float) (Math.sqrt(d26) / 1.99999d);
                drawArc(path, f, f10, f11, f12, f13 * fSqrt, f14 * fSqrt, f15, z10, z11);
                return;
            }
            double dSqrt = Math.sqrt(d27);
            double d28 = d22 * dSqrt;
            double d29 = dSqrt * d23;
            if (z10 == z11) {
                d10 = d24 - d29;
                d11 = d25 + d28;
            } else {
                d10 = d24 + d29;
                d11 = d25 - d28;
            }
            double dAtan2 = Math.atan2(d18 - d11, d16 - d10);
            double dAtan22 = Math.atan2(d21 - d11, d20 - d10) - dAtan2;
            if (z11 != (dAtan22 >= 0.0d)) {
                dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
            }
            double d30 = d10 * d15;
            double d31 = d11 * d17;
            arcToBezier(path, (d30 * dCos) - (d31 * dSin), (d31 * dCos) + (d30 * dSin), d15, d17, d12, d14, radians, dAtan2, dAtan22);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c10 = 'm';
            for (int r22 = 0; r22 < pathDataNodeArr.length; r22++) {
                PathDataNode pathDataNode = pathDataNodeArr[r22];
                addCommand(path, fArr, c10, pathDataNode.mType, pathDataNode.mParams);
                c10 = pathDataNodeArr[r22].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.mType = pathDataNode.mType;
            int r02 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (r02 >= fArr.length) {
                    return;
                }
                this.mParams[r02] = (pathDataNode2.mParams[r02] * f) + ((1.0f - f) * fArr[r02]);
                r02++;
            }
        }
    }

    private PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c10, float[] fArr) {
        arrayList.add(new PathDataNode(c10, fArr));
    }

    public static boolean canMorph(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int r12 = 0; r12 < pathDataNodeArr.length; r12++) {
            PathDataNode pathDataNode = pathDataNodeArr[r12];
            char c10 = pathDataNode.mType;
            PathDataNode pathDataNode2 = pathDataNodeArr2[r12];
            if (c10 != pathDataNode2.mType || pathDataNode.mParams.length != pathDataNode2.mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] copyOfRange(float[] fArr, int r32, int r42) {
        if (r32 > r42) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (r32 < 0 || r32 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int r43 = r42 - r32;
        int r02 = Math.min(r43, length - r32);
        float[] fArr2 = new float[r43];
        System.arraycopy(fArr, r32, fArr2, 0, r02);
        return fArr2;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int r32 = 1;
        int r42 = 0;
        while (r32 < str.length()) {
            int r33 = nextStart(str, r32);
            String strTrim = str.substring(r42, r33).trim();
            if (strTrim.length() > 0) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            r42 = r33;
            r32 = r33 + 1;
        }
        if (r32 - r42 == 1 && r42 < str.length()) {
            addNode(arrayList, str.charAt(r42), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathDataNodeArrCreateNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(pathDataNodeArrCreateNodesFromPathData, path);
            return path;
        } catch (RuntimeException e10) {
            throw new RuntimeException(b.e("Error in parsing ", str), e10);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int r12 = 0; r12 < pathDataNodeArr.length; r12++) {
            pathDataNodeArr2[r12] = new PathDataNode(pathDataNodeArr[r12]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        if (r2 == false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0038 A[LOOP:0: B:3:0x0007->B:24:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void extract(java.lang.String r8, int r9, androidx.core.graphics.PathParser.ExtractFloatResult r10) {
        /*
            r0 = 0
            r10.mEndWithNegOrDot = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3b
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L33
            r6 = 69
            if (r5 == r6) goto L31
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L31
            switch(r5) {
                case 44: goto L33;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L2f
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L35
        L27:
            r10.mEndWithNegOrDot = r7
            goto L33
        L2a:
            if (r1 == r9) goto L2f
            if (r2 != 0) goto L2f
            goto L27
        L2f:
            r2 = 0
            goto L35
        L31:
            r2 = 1
            goto L35
        L33:
            r2 = 0
            r4 = 1
        L35:
            if (r4 == 0) goto L38
            goto L3b
        L38:
            int r1 = r1 + 1
            goto L7
        L3b:
            r10.mEndPosition = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.extract(java.lang.String, int, androidx.core.graphics.PathParser$ExtractFloatResult):void");
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int r42 = 1;
            int r52 = 0;
            while (r42 < length) {
                extract(str, r42, extractFloatResult);
                int r6 = extractFloatResult.mEndPosition;
                if (r42 < r6) {
                    fArr[r52] = Float.parseFloat(str.substring(r42, r6));
                    r52++;
                }
                r42 = extractFloatResult.mEndWithNegOrDot ? r6 : r6 + 1;
            }
            return copyOfRange(fArr, 0, r52);
        } catch (NumberFormatException e10) {
            throw new RuntimeException(androidx.browser.browseractions.a.a("error in parsing \"", str, "\""), e10);
        }
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr3 == null) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
        }
        if (pathDataNodeArr.length != pathDataNodeArr2.length || pathDataNodeArr2.length != pathDataNodeArr3.length) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
        }
        if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
            return false;
        }
        for (int r12 = 0; r12 < pathDataNodeArr.length; r12++) {
            pathDataNodeArr[r12].interpolatePathDataNode(pathDataNodeArr2[r12], pathDataNodeArr3[r12], f);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int nextStart(java.lang.String r3, int r4) {
        /*
        L0:
            int r0 = r3.length()
            if (r4 >= r0) goto L26
            char r0 = r3.charAt(r4)
            int r1 = r0 + (-65)
            int r2 = r0 + (-90)
            int r2 = r2 * r1
            if (r2 <= 0) goto L1a
            int r1 = r0 + (-97)
            int r2 = r0 + (-122)
            int r2 = r2 * r1
            if (r2 > 0) goto L23
        L1a:
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L23
            r1 = 69
            if (r0 == r1) goto L23
            return r4
        L23:
            int r4 = r4 + 1
            goto L0
        L26:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.nextStart(java.lang.String, int):int");
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int r12 = 0; r12 < pathDataNodeArr2.length; r12++) {
            pathDataNodeArr[r12].mType = pathDataNodeArr2[r12].mType;
            int r22 = 0;
            while (true) {
                float[] fArr = pathDataNodeArr2[r12].mParams;
                if (r22 < fArr.length) {
                    pathDataNodeArr[r12].mParams[r22] = fArr[r22];
                    r22++;
                }
            }
        }
    }
}
