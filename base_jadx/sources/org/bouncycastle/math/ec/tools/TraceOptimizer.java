package org.bouncycastle.math.ec.tools;

import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.bouncycastle.asn1.x9.ECNamedCurveTable;
import org.bouncycastle.asn1.x9.X9ECParametersHolder;
import org.bouncycastle.crypto.ec.CustomNamedCurves;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
public class TraceOptimizer {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final SecureRandom R = new SecureRandom();

    private static int calculateTrace(ECFieldElement eCFieldElement) {
        int fieldSize = eCFieldElement.getFieldSize();
        int r12 = 31 - Integers.numberOfLeadingZeros(fieldSize);
        int r42 = 1;
        ECFieldElement eCFieldElementAdd = eCFieldElement;
        while (r12 > 0) {
            eCFieldElementAdd = eCFieldElementAdd.squarePow(r42).add(eCFieldElementAdd);
            r12--;
            r42 = fieldSize >>> r12;
            if ((r42 & 1) != 0) {
                eCFieldElementAdd = eCFieldElementAdd.square().add(eCFieldElement);
            }
        }
        if (eCFieldElementAdd.isZero()) {
            return 0;
        }
        if (eCFieldElementAdd.isOne()) {
            return 1;
        }
        throw new IllegalStateException("Internal error in trace calculation");
    }

    private static List enumToList(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    public static void implPrintNonZeroTraceBits(ECCurve eCCurve) {
        PrintStream printStream;
        StringBuilder sb2;
        int fieldSize = eCCurve.getFieldSize();
        ArrayList arrayList = new ArrayList();
        for (int r32 = 0; r32 < fieldSize; r32++) {
            if ((r32 & 1) != 0 || r32 == 0) {
                if (calculateTrace(eCCurve.fromBigInteger(ONE.shiftLeft(r32))) != 0) {
                    arrayList.add(Integers.valueOf(r32));
                    printStream = System.out;
                    sb2 = new StringBuilder(" ");
                    sb2.append(r32);
                    printStream.print(sb2.toString());
                }
            } else if (arrayList.contains(Integers.valueOf(r32 >>> 1))) {
                arrayList.add(Integers.valueOf(r32));
                printStream = System.out;
                sb2 = new StringBuilder(" ");
                sb2.append(r32);
                printStream.print(sb2.toString());
            }
        }
        System.out.println();
        for (int r33 = 0; r33 < 1000; r33++) {
            BigInteger bigInteger = new BigInteger(fieldSize, R);
            int r52 = calculateTrace(eCCurve.fromBigInteger(bigInteger));
            int r72 = 0;
            for (int r6 = 0; r6 < arrayList.size(); r6++) {
                if (bigInteger.testBit(((Integer) arrayList.get(r6)).intValue())) {
                    r72 ^= 1;
                }
            }
            if (r52 != r72) {
                throw new IllegalStateException("Optimized-trace sanity check failed");
            }
        }
    }

    public static void main(String[] strArr) {
        TreeSet treeSet = new TreeSet(enumToList(ECNamedCurveTable.getNames()));
        treeSet.addAll(enumToList(CustomNamedCurves.getNames()));
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            X9ECParametersHolder byNameLazy = CustomNamedCurves.getByNameLazy(str);
            if (byNameLazy == null) {
                byNameLazy = ECNamedCurveTable.getByNameLazy(str);
            }
            if (byNameLazy != null) {
                ECCurve curve = byNameLazy.getCurve();
                if (ECAlgorithms.isF2mCurve(curve)) {
                    System.out.print(str + ":");
                    implPrintNonZeroTraceBits(curve);
                }
            }
        }
    }

    public static void printNonZeroTraceBits(ECCurve eCCurve) {
        if (!ECAlgorithms.isF2mCurve(eCCurve)) {
            throw new IllegalArgumentException("Trace only defined over characteristic-2 fields");
        }
        implPrintNonZeroTraceBits(eCCurve);
    }
}
