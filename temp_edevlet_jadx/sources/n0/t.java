package n0;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import o0.c;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f10517a = c.a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f10518b = c.a.a("id", "layers", "w", "h", "p", "u");

    /* renamed from: c, reason: collision with root package name */
    public static final c.a f10519c = c.a.a("list");

    /* renamed from: d, reason: collision with root package name */
    public static final c.a f10520d = c.a.a("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0046. Please report as an issue. */
    public static d0.f a(o0.d dVar) throws IOException, NumberFormatException {
        float f;
        HashMap map;
        ArrayList arrayList;
        SparseArrayCompat<i0.d> sparseArrayCompat;
        int r25;
        LongSparseArray<l0.e> longSparseArray;
        float f10;
        float f11;
        int r252;
        float f12;
        LongSparseArray<l0.e> longSparseArray2;
        float f13;
        float f14;
        HashMap map2;
        ArrayList arrayList2;
        SparseArrayCompat<i0.d> sparseArrayCompat2;
        float f15;
        float f16;
        LongSparseArray<l0.e> longSparseArray3;
        float fC = p0.g.c();
        LongSparseArray<l0.e> longSparseArray4 = new LongSparseArray<>();
        ArrayList arrayList3 = new ArrayList();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        HashMap map5 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        SparseArrayCompat<i0.d> sparseArrayCompat3 = new SparseArrayCompat<>();
        d0.f fVar = new d0.f();
        dVar.b();
        int i10 = 0;
        float fG = 0.0f;
        float fG2 = 0.0f;
        float fG3 = 0.0f;
        int i11 = 0;
        while (dVar.e()) {
            float f17 = fG;
            switch (dVar.n(f10517a)) {
                case 0:
                    f14 = fC;
                    map2 = map5;
                    arrayList2 = arrayList4;
                    sparseArrayCompat2 = sparseArrayCompat3;
                    f15 = fG2;
                    f16 = fG3;
                    longSparseArray3 = longSparseArray4;
                    i11 = dVar.i();
                    longSparseArray4 = longSparseArray3;
                    fG = f17;
                    fC = f14;
                    fG2 = f15;
                    arrayList4 = arrayList2;
                    fG3 = f16;
                    map5 = map2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    break;
                case 1:
                    f14 = fC;
                    map2 = map5;
                    arrayList2 = arrayList4;
                    sparseArrayCompat2 = sparseArrayCompat3;
                    f15 = fG2;
                    f16 = fG3;
                    longSparseArray3 = longSparseArray4;
                    i10 = dVar.i();
                    longSparseArray4 = longSparseArray3;
                    fG = f17;
                    fC = f14;
                    fG2 = f15;
                    arrayList4 = arrayList2;
                    fG3 = f16;
                    map5 = map2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    break;
                case 2:
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    longSparseArray = longSparseArray4;
                    fG2 = (float) dVar.g();
                    fG = f17;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 3:
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    longSparseArray = longSparseArray4;
                    fG3 = ((float) dVar.g()) - 0.01f;
                    fG = f17;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 4:
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    longSparseArray = longSparseArray4;
                    fG = (float) dVar.g();
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 5:
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    f10 = fG2;
                    f11 = fG3;
                    longSparseArray = longSparseArray4;
                    String[] strArrSplit = dVar.j().split("\\.");
                    int r22 = Integer.parseInt(strArrSplit[0]);
                    int r82 = Integer.parseInt(strArrSplit[1]);
                    if (!(r22 >= 4 && (r22 > 4 || (r82 >= 4 && (r82 > 4 || Integer.parseInt(strArrSplit[2]) >= 0))))) {
                        fVar.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 6:
                    f = fC;
                    LongSparseArray<l0.e> longSparseArray5 = longSparseArray4;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    f10 = fG2;
                    f11 = fG3;
                    dVar.a();
                    int r12 = 0;
                    while (dVar.e()) {
                        l0.e eVarA = s.a(dVar, fVar);
                        if (eVarA.f9298e == 3) {
                            r12++;
                        }
                        arrayList3.add(eVarA);
                        LongSparseArray<l0.e> longSparseArray6 = longSparseArray5;
                        longSparseArray6.put(eVarA.f9297d, eVarA);
                        if (r12 > 4) {
                            p0.c.b("You have " + r12 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        longSparseArray5 = longSparseArray6;
                    }
                    longSparseArray = longSparseArray5;
                    dVar.c();
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 7:
                    arrayList = arrayList4;
                    f10 = fG2;
                    f11 = fG3;
                    dVar.a();
                    while (dVar.e()) {
                        ArrayList arrayList5 = new ArrayList();
                        LongSparseArray longSparseArray7 = new LongSparseArray();
                        dVar.b();
                        HashMap map6 = map5;
                        String strJ = null;
                        String strJ2 = null;
                        int i12 = 0;
                        int i13 = 0;
                        while (dVar.e()) {
                            SparseArrayCompat<i0.d> sparseArrayCompat4 = sparseArrayCompat3;
                            int r83 = dVar.n(f10518b);
                            if (r83 != 0) {
                                r252 = i10;
                                if (r83 == 1) {
                                    dVar.a();
                                    while (dVar.e()) {
                                        l0.e eVarA2 = s.a(dVar, fVar);
                                        longSparseArray7.put(eVarA2.f9297d, eVarA2);
                                        arrayList5.add(eVarA2);
                                        fC = fC;
                                        longSparseArray4 = longSparseArray4;
                                    }
                                    f12 = fC;
                                    longSparseArray2 = longSparseArray4;
                                    dVar.c();
                                } else if (r83 == 2) {
                                    i12 = dVar.i();
                                } else if (r83 == 3) {
                                    i13 = dVar.i();
                                } else if (r83 == 4) {
                                    strJ2 = dVar.j();
                                } else if (r83 != 5) {
                                    dVar.o();
                                    dVar.p();
                                    f12 = fC;
                                    longSparseArray2 = longSparseArray4;
                                } else {
                                    dVar.j();
                                }
                                fC = f12;
                                sparseArrayCompat3 = sparseArrayCompat4;
                                i10 = r252;
                                longSparseArray4 = longSparseArray2;
                            } else {
                                r252 = i10;
                                strJ = dVar.j();
                            }
                            sparseArrayCompat3 = sparseArrayCompat4;
                            i10 = r252;
                        }
                        float f18 = fC;
                        LongSparseArray<l0.e> longSparseArray8 = longSparseArray4;
                        SparseArrayCompat<i0.d> sparseArrayCompat5 = sparseArrayCompat3;
                        int r253 = i10;
                        dVar.d();
                        if (strJ2 != null) {
                            map4.put(strJ, new d0.n(i12, i13, strJ, strJ2));
                        } else {
                            map3.put(strJ, arrayList5);
                        }
                        fC = f18;
                        map5 = map6;
                        sparseArrayCompat3 = sparseArrayCompat5;
                        i10 = r253;
                        longSparseArray4 = longSparseArray8;
                    }
                    f = fC;
                    map = map5;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    dVar.c();
                    longSparseArray = longSparseArray4;
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 8:
                    f10 = fG2;
                    f11 = fG3;
                    dVar.b();
                    while (dVar.e()) {
                        if (dVar.n(f10519c) != 0) {
                            dVar.o();
                            dVar.p();
                        } else {
                            dVar.a();
                            while (dVar.e()) {
                                c.a aVar = k.f10500a;
                                dVar.b();
                                String strJ3 = null;
                                String strJ4 = null;
                                String strJ5 = null;
                                while (dVar.e()) {
                                    int r14 = dVar.n(k.f10500a);
                                    ArrayList arrayList6 = arrayList4;
                                    if (r14 != 0) {
                                        if (r14 == 1) {
                                            strJ4 = dVar.j();
                                        } else if (r14 == 2) {
                                            strJ5 = dVar.j();
                                        } else if (r14 != 3) {
                                            dVar.o();
                                            dVar.p();
                                        } else {
                                            dVar.g();
                                        }
                                        arrayList4 = arrayList6;
                                    } else {
                                        strJ3 = dVar.j();
                                    }
                                }
                                dVar.d();
                                map5.put(strJ4, new i0.c(strJ3, strJ4, strJ5));
                                arrayList4 = arrayList4;
                            }
                            dVar.c();
                        }
                    }
                    arrayList = arrayList4;
                    dVar.d();
                    f = fC;
                    map = map5;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    longSparseArray = longSparseArray4;
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 9:
                    f10 = fG2;
                    f11 = fG3;
                    dVar.a();
                    while (dVar.e()) {
                        c.a aVar2 = j.f10498a;
                        ArrayList arrayList7 = new ArrayList();
                        dVar.b();
                        double dG = 0.0d;
                        String strJ6 = null;
                        String strJ7 = null;
                        char cCharAt = 0;
                        while (dVar.e()) {
                            int r122 = dVar.n(j.f10498a);
                            if (r122 == 0) {
                                cCharAt = dVar.j().charAt(0);
                            } else if (r122 == 1) {
                                dVar.g();
                            } else if (r122 == 2) {
                                dG = dVar.g();
                            } else if (r122 == 3) {
                                strJ6 = dVar.j();
                            } else if (r122 == 4) {
                                strJ7 = dVar.j();
                            } else if (r122 != 5) {
                                dVar.o();
                                dVar.p();
                            } else {
                                dVar.b();
                                while (dVar.e()) {
                                    if (dVar.n(j.f10499b) != 0) {
                                        dVar.o();
                                        dVar.p();
                                    } else {
                                        dVar.a();
                                        while (dVar.e()) {
                                            arrayList7.add((k0.m) g.a(dVar, fVar));
                                        }
                                        dVar.c();
                                    }
                                }
                                dVar.d();
                            }
                        }
                        dVar.d();
                        i0.d dVar2 = new i0.d(arrayList7, cCharAt, dG, strJ6, strJ7);
                        sparseArrayCompat3.put(dVar2.hashCode(), dVar2);
                    }
                    dVar.c();
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    longSparseArray = longSparseArray4;
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                case 10:
                    dVar.a();
                    while (dVar.e()) {
                        dVar.b();
                        String strJ8 = null;
                        float fG4 = 0.0f;
                        float fG5 = 0.0f;
                        while (dVar.e()) {
                            int r123 = dVar.n(f10520d);
                            float f19 = fG3;
                            if (r123 != 0) {
                                if (r123 == 1) {
                                    f13 = fG2;
                                    fG4 = (float) dVar.g();
                                } else if (r123 != 2) {
                                    dVar.o();
                                    dVar.p();
                                } else {
                                    f13 = fG2;
                                    fG5 = (float) dVar.g();
                                }
                                fG2 = f13;
                            } else {
                                strJ8 = dVar.j();
                            }
                            fG3 = f19;
                        }
                        dVar.d();
                        arrayList4.add(new i0.h(strJ8, fG4, fG5));
                        fG2 = fG2;
                        fG3 = fG3;
                    }
                    f10 = fG2;
                    f11 = fG3;
                    dVar.c();
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    longSparseArray = longSparseArray4;
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
                default:
                    f = fC;
                    map = map5;
                    arrayList = arrayList4;
                    sparseArrayCompat = sparseArrayCompat3;
                    r25 = i10;
                    f10 = fG2;
                    f11 = fG3;
                    longSparseArray = longSparseArray4;
                    dVar.o();
                    dVar.p();
                    fG = f17;
                    fG2 = f10;
                    fG3 = f11;
                    longSparseArray4 = longSparseArray;
                    fC = f;
                    arrayList4 = arrayList;
                    map5 = map;
                    sparseArrayCompat3 = sparseArrayCompat;
                    i10 = r25;
                    break;
            }
        }
        float f20 = fC;
        fVar.f4528j = new Rect(0, 0, (int) (i11 * f20), (int) (i10 * f20));
        fVar.f4529k = fG2;
        fVar.f4530l = fG3;
        fVar.f4531m = fG;
        fVar.f4527i = arrayList3;
        fVar.f4526h = longSparseArray4;
        fVar.f4522c = map3;
        fVar.f4523d = map4;
        fVar.f4525g = sparseArrayCompat3;
        fVar.f4524e = map5;
        fVar.f = arrayList4;
        return fVar;
    }
}
