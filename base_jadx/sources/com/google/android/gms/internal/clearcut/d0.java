package com.google.android.gms.internal.clearcut;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import kc.a;
import org.json.JSONObject;
import p4.a5;
import p4.a6;
import p4.a7;
import p4.a9;
import p4.b5;
import p4.b6;
import p4.b7;
import p4.b9;
import p4.c5;
import p4.c6;
import p4.c8;
import p4.c9;
import p4.d5;
import p4.d6;
import p4.d9;
import p4.e5;
import p4.e6;
import p4.e7;
import p4.e8;
import p4.e9;
import p4.f5;
import p4.f6;
import p4.f7;
import p4.f8;
import p4.g5;
import p4.g6;
import p4.g8;
import p4.g9;
import p4.h5;
import p4.h6;
import p4.h7;
import p4.h8;
import p4.h9;
import p4.i5;
import p4.i6;
import p4.i7;
import p4.i8;
import p4.j5;
import p4.j6;
import p4.j7;
import p4.j8;
import p4.k5;
import p4.k6;
import p4.k7;
import p4.k9;
import p4.l5;
import p4.l6;
import p4.l7;
import p4.l8;
import p4.l9;
import p4.m5;
import p4.m6;
import p4.m8;
import p4.n5;
import p4.n6;
import p4.n7;
import p4.n8;
import p4.o8;
import p4.p5;
import p4.p6;
import p4.p8;
import p4.q5;
import p4.q6;
import p4.q8;
import p4.r4;
import p4.r5;
import p4.r6;
import p4.r7;
import p4.r8;
import p4.s4;
import p4.s5;
import p4.s6;
import p4.s7;
import p4.s8;
import p4.t4;
import p4.t5;
import p4.t6;
import p4.t7;
import p4.t8;
import p4.u4;
import p4.u5;
import p4.u6;
import p4.u7;
import p4.u8;
import p4.v4;
import p4.v5;
import p4.v6;
import p4.v7;
import p4.v8;
import p4.w4;
import p4.w5;
import p4.w6;
import p4.w7;
import p4.w8;
import p4.x4;
import p4.x5;
import p4.x6;
import p4.x7;
import p4.x8;
import p4.y4;
import p4.y5;
import p4.y7;
import p4.y8;
import p4.z4;
import p4.z5;
import p4.z6;
import p4.z8;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;

/* loaded from: classes.dex */
public final class d0 implements com.google.android.gms.internal.vision.r0, l7.j, a.c {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3066a = {1, 10, 100, 1000, ModuleDescriptor.MODULE_VERSION, 100000, 1000000, 10000000, 100000000, 1000000000};

    /* renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f3067b = new kotlinx.coroutines.internal.u("REMOVE_PREPARED");

    /* renamed from: c, reason: collision with root package name */
    public static final d0 f3068c = new d0();

    /* renamed from: d, reason: collision with root package name */
    public static final d0 f3069d = new d0();

    /* renamed from: e, reason: collision with root package name */
    public static r0.g1 f3070e = new r0.g();
    public static r0.k0 f;

    public /* synthetic */ d0() {
    }

    public static final void A(Object obj, p9.d completion, x9.p pVar) {
        Object objJ;
        kotlin.jvm.internal.h.f(completion, "completion");
        try {
            kotlin.jvm.internal.z.c(2, pVar);
            objJ = pVar.mo7invoke(obj, completion);
            if (objJ == q9.a.COROUTINE_SUSPENDED) {
                return;
            }
        } catch (Throwable th2) {
            objJ = c5.w.j(th2);
        }
        completion.resumeWith(objJ);
    }

    public static final Object B(kotlinx.coroutines.internal.r rVar, kotlinx.coroutines.internal.r rVar2, x9.p pVar) throws Throwable {
        Object rVar3;
        Object objX;
        try {
            kotlin.jvm.internal.z.c(2, pVar);
            rVar3 = pVar.mo7invoke(rVar2, rVar);
        } catch (Throwable th2) {
            rVar3 = new nc.r(false, th2);
        }
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        if (rVar3 == aVar || (objX = rVar.X(rVar3)) == c5.e0.f) {
            return aVar;
        }
        if (objX instanceof nc.r) {
            throw ((nc.r) objX).f10837a;
        }
        return c5.e0.f(objX);
    }

    public static final FragmentViewBindingDelegate C(Fragment fragment, x9.l viewBindingFactory) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(viewBindingFactory, "viewBindingFactory");
        return new FragmentViewBindingDelegate(fragment, viewBindingFactory);
    }

    public static long D(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static String E(x xVar) {
        String str;
        c0.c cVar = new c0.c(xVar);
        StringBuilder sb2 = new StringBuilder(xVar.size());
        int r52 = 0;
        while (true) {
            Object obj = cVar.f1343a;
            if (r52 >= ((x) obj).size()) {
                return sb2.toString();
            }
            int r22 = ((x) obj).w(r52);
            if (r22 == 34) {
                str = "\\\"";
            } else if (r22 == 39) {
                str = "\\'";
            } else if (r22 != 92) {
                switch (r22) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (r22 < 32 || r22 > 126) {
                            sb2.append('\\');
                            sb2.append((char) (((r22 >>> 6) & 3) + 48));
                            sb2.append((char) (((r22 >>> 3) & 7) + 48));
                            r22 = (r22 & 7) + 48;
                        }
                        sb2.append((char) r22);
                        continue;
                        r52++;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb2.append(str);
            r52++;
        }
    }

    public static int F(int r12) {
        return (-(r12 & 1)) ^ (r12 >>> 1);
    }

    public static nc.u1 a() {
        return new nc.u1(null);
    }

    public static final String c(Method method) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        kotlin.jvm.internal.h.e(parameterTypes, "parameterTypes");
        sb2.append(m9.k.v0(parameterTypes, "", "(", ")", ga.y0.f6141a, 24));
        Class<?> returnType = method.getReturnType();
        kotlin.jvm.internal.h.e(returnType, "returnType");
        sb2.append(sa.d.b(returnType));
        return sb2.toString();
    }

    public static final void e(uc.a aVar, uc.c cVar, String str) {
        uc.d.f17929j.getClass();
        Logger logger = uc.d.f17928i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cVar.f);
        sb2.append(' ');
        String str2 = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        kotlin.jvm.internal.h.e(str2, "java.lang.String.format(format, *args)");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(aVar.f17919c);
        logger.fine(sb2.toString());
    }

    public static final void f(Object obj, AbstractCollection abstractCollection) {
        if (obj != null) {
            abstractCollection.add(obj);
        }
    }

    public static final void g(int r12) {
        if (!(r12 >= 1)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Integer.valueOf(r12), "Expected positive parallelism level, but got ").toString());
        }
    }

    public static final List i(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return m9.v.f10173a;
        }
        if (size == 1) {
            return b8.f.S(m9.t.a1(arrayList));
        }
        arrayList.trimToSize();
        return arrayList;
    }

    public static final na.h j(na.h first, na.h second) {
        kotlin.jvm.internal.h.f(first, "first");
        kotlin.jvm.internal.h.f(second, "second");
        return first.isEmpty() ? second : second.isEmpty() ? first : new na.k(first, second);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        if (r0.m0(r4) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final fc.h k(fc.h r4, java.util.HashSet r5) {
        /*
            dc.p r0 = dc.p.f4850a
            cc.c1 r1 = r0.V(r4)
            boolean r2 = r5.add(r1)
            r3 = 0
            if (r2 != 0) goto Le
            return r3
        Le:
            ma.w0 r2 = dc.b.a.x(r1)
            if (r2 == 0) goto L62
            cc.e0 r1 = dc.b.a.u(r2)
            fc.h r5 = k(r1, r5)
            if (r5 == 0) goto L60
            cc.c1 r2 = r0.V(r1)
            boolean r2 = dc.b.a.K(r2)
            if (r2 != 0) goto L38
            boolean r2 = r1 instanceof fc.i
            if (r2 == 0) goto L36
            r2 = r1
            fc.i r2 = (fc.i) r2
            boolean r2 = dc.b.a.Q(r2)
            if (r2 == 0) goto L36
            goto L38
        L36:
            r2 = 0
            goto L39
        L38:
            r2 = 1
        L39:
            boolean r3 = r5 instanceof fc.i
            if (r3 == 0) goto L53
            r3 = r5
            fc.i r3 = (fc.i) r3
            boolean r3 = dc.b.a.Q(r3)
            if (r3 == 0) goto L53
            boolean r3 = dc.b.a.P(r4)
            if (r3 == 0) goto L53
            if (r2 == 0) goto L53
            fc.h r4 = r0.n0(r1)
            goto L97
        L53:
            boolean r1 = dc.b.a.P(r5)
            if (r1 != 0) goto L7c
            boolean r4 = r0.m0(r4)
            if (r4 != 0) goto L93
            goto L7c
        L60:
            r4 = r3
            goto L97
        L62:
            boolean r1 = dc.b.a.K(r1)
            if (r1 == 0) goto L97
            cc.m0 r1 = dc.b.a.y(r4)
            if (r1 != 0) goto L6f
            return r3
        L6f:
            fc.h r5 = k(r1, r5)
            if (r5 != 0) goto L76
            return r3
        L76:
            boolean r1 = dc.b.a.P(r4)
            if (r1 != 0) goto L7e
        L7c:
            r4 = r5
            goto L97
        L7e:
            boolean r1 = dc.b.a.P(r5)
            if (r1 == 0) goto L85
            goto L97
        L85:
            boolean r1 = r5 instanceof fc.i
            if (r1 == 0) goto L93
            r1 = r5
            fc.i r1 = (fc.i) r1
            boolean r1 = dc.b.a.Q(r1)
            if (r1 == 0) goto L93
            goto L97
        L93:
            fc.h r4 = r0.n0(r5)
        L97:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.d0.k(fc.h, java.util.HashSet):fc.h");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArrayList m(ArrayList arrayList, Collection oldValueParameters, ma.a newOwner) {
        kotlin.jvm.internal.h.f(oldValueParameters, "oldValueParameters");
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        arrayList.size();
        oldValueParameters.size();
        ArrayList arrayListA1 = m9.t.A1(arrayList, oldValueParameters);
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayListA1));
        Iterator it = arrayListA1.iterator();
        while (it.hasNext()) {
            l9.g gVar = (l9.g) it.next();
            cc.e0 e0Var = (cc.e0) gVar.f9582a;
            ma.a1 a1Var = (ma.a1) gVar.f9583b;
            int index = a1Var.getIndex();
            na.h annotations = a1Var.getAnnotations();
            lb.f name = a1Var.getName();
            kotlin.jvm.internal.h.e(name, "oldParameter.name");
            boolean zT0 = a1Var.t0();
            boolean zW = a1Var.W();
            boolean zT = a1Var.T();
            cc.e0 e0VarG = a1Var.g0() != null ? sb.b.j(newOwner).m().g(e0Var) : null;
            ma.r0 source = a1Var.getSource();
            kotlin.jvm.internal.h.e(source, "oldParameter.source");
            arrayList2.add(new pa.v0(newOwner, null, index, annotations, name, e0Var, zT0, zW, zT, e0VarG, source));
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.View] */
    public static final ViewGroup n(ViewGroup viewGroup) {
        ViewGroup viewGroup2 = null;
        while (!(viewGroup instanceof CoordinatorLayout)) {
            if (viewGroup instanceof FrameLayout) {
                if (viewGroup.getId() == 16908290) {
                    return viewGroup;
                }
                viewGroup2 = viewGroup;
            }
            Object parent = viewGroup.getParent();
            viewGroup = parent instanceof View ? (View) parent : 0;
            if (viewGroup == 0) {
                return viewGroup2;
            }
        }
        return viewGroup;
    }

    public static final String o(long j10) {
        StringBuilder sb2;
        long j11;
        long j12;
        long j13;
        if (j10 > -999500000) {
            if (j10 > -999500) {
                if (j10 <= 0) {
                    sb2 = new StringBuilder();
                    j13 = j10 - 500;
                } else if (j10 < 999500) {
                    sb2 = new StringBuilder();
                    j13 = j10 + 500;
                } else if (j10 < 999500000) {
                    sb2 = new StringBuilder();
                    j12 = j10 + 500000;
                } else {
                    sb2 = new StringBuilder();
                    j11 = j10 + 500000000;
                }
                sb2.append(j13 / 1000);
                sb2.append(" µs");
                String str = String.format("%6s", Arrays.copyOf(new Object[]{sb2.toString()}, 1));
                kotlin.jvm.internal.h.e(str, "java.lang.String.format(format, *args)");
                return str;
            }
            sb2 = new StringBuilder();
            j12 = j10 - 500000;
            sb2.append(j12 / 1000000);
            sb2.append(" ms");
            String str2 = String.format("%6s", Arrays.copyOf(new Object[]{sb2.toString()}, 1));
            kotlin.jvm.internal.h.e(str2, "java.lang.String.format(format, *args)");
            return str2;
        }
        sb2 = new StringBuilder();
        j11 = j10 - 500000000;
        sb2.append(j11 / 1000000000);
        sb2.append(" s ");
        String str22 = String.format("%6s", Arrays.copyOf(new Object[]{sb2.toString()}, 1));
        kotlin.jvm.internal.h.e(str22, "java.lang.String.format(format, *args)");
        return str22;
    }

    public static final da.d p(Annotation annotation) {
        kotlin.jvm.internal.h.f(annotation, "<this>");
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        kotlin.jvm.internal.h.e(clsAnnotationType, "this as java.lang.annota…otation).annotationType()");
        da.d dVarA = kotlin.jvm.internal.w.a(clsAnnotationType);
        kotlin.jvm.internal.h.d(dVarA, "null cannot be cast to non-null type kotlin.reflect.KClass<out T of kotlin.jvm.JvmClassMappingKt.<get-annotationClass>>");
        return dVarA;
    }

    public static final Class q(da.d dVar) {
        kotlin.jvm.internal.h.f(dVar, "<this>");
        Class<?> clsG = ((kotlin.jvm.internal.b) dVar).g();
        kotlin.jvm.internal.h.d(clsG, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return clsG;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class r(da.d dVar) {
        kotlin.jvm.internal.h.f(dVar, "<this>");
        Class<?> clsG = ((kotlin.jvm.internal.b) dVar).g();
        if (!clsG.isPrimitive()) {
            return clsG;
        }
        String name = clsG.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (!name.equals("double")) {
                }
                break;
            case 104431:
                if (!name.equals("int")) {
                }
                break;
            case 3039496:
                if (!name.equals("byte")) {
                }
                break;
            case 3052374:
                if (!name.equals("char")) {
                }
                break;
            case 3327612:
                if (!name.equals("long")) {
                }
                break;
            case 3625364:
                if (!name.equals("void")) {
                }
                break;
            case 64711720:
                if (!name.equals(TypedValues.Custom.S_BOOLEAN)) {
                }
                break;
            case 97526364:
                if (!name.equals(TypedValues.Custom.S_FLOAT)) {
                }
                break;
            case 109413500:
                if (!name.equals("short")) {
                }
                break;
        }
        return clsG;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final Class s(da.d dVar) {
        kotlin.jvm.internal.h.f(dVar, "<this>");
        Class<?> clsG = ((kotlin.jvm.internal.b) dVar).g();
        if (clsG.isPrimitive()) {
            return clsG;
        }
        String name = clsG.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    public static final String t(JSONObject jSONObject, String str) {
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.getString(str);
    }

    public static final nc.j u(p9.d dVar) {
        if (!(dVar instanceof kotlinx.coroutines.internal.g)) {
            return new nc.j(1, dVar);
        }
        nc.j jVarI = ((kotlinx.coroutines.internal.g) dVar).i();
        if (jVarI == null || !jVarI.t()) {
            jVarI = null;
        }
        return jVarI == null ? new nc.j(2, dVar) : jVarI;
    }

    public static final za.x v(ma.e eVar) {
        ma.e eVar2;
        kotlin.jvm.internal.h.f(eVar, "<this>");
        int r02 = sb.b.f15372a;
        Iterator<cc.e0> it = eVar.q().M0().l().iterator();
        while (true) {
            if (!it.hasNext()) {
                eVar2 = null;
                break;
            }
            cc.e0 next = it.next();
            if (!ja.k.x(next)) {
                ma.g gVarN = next.M0().n();
                boolean z10 = true;
                if (!ob.i.n(gVarN, 1) && !ob.i.n(gVarN, 3)) {
                    z10 = false;
                }
                if (z10) {
                    kotlin.jvm.internal.h.d(gVarN, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    eVar2 = (ma.e) gVarN;
                    break;
                }
            }
        }
        if (eVar2 == null) {
            return null;
        }
        vb.i iVarN = eVar2.N();
        za.x xVar = iVarN instanceof za.x ? (za.x) iVarN : null;
        return xVar == null ? v(eVar2) : xVar;
    }

    public static boolean w(Context context) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        String MANUFACTURER = Build.MANUFACTURER;
        kotlin.jvm.internal.h.e(MANUFACTURER, "MANUFACTURER");
        if (!mc.j.x("xiaomi", MANUFACTURER)) {
            return true;
        }
        try {
            Object systemService = context.getSystemService("appops");
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.app.AppOpsManager");
            AppOpsManager appOpsManager = (AppOpsManager) systemService;
            Class<?> cls = appOpsManager.getClass();
            Class<?> cls2 = Integer.TYPE;
            Method declaredMethod = cls.getDeclaredMethod("checkOpNoThrow", cls2, cls2, String.class);
            kotlin.jvm.internal.h.e(declaredMethod, "appOpsManager.javaClass.…:class.java\n            )");
            declaredMethod.setAccessible(true);
            objInvoke = declaredMethod.invoke(appOpsManager, 10016, Integer.valueOf(Process.myUid()), context.getPackageName());
            kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type kotlin.Int");
        } catch (Exception unused) {
        }
        return 1 != ((Integer) objInvoke).intValue();
    }

    public static final void x(View view) {
        Object systemService = view.getContext().getSystemService("input_method");
        kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static final boolean y(cc.e0 e0Var) {
        ma.g gVarN = e0Var.M0().n();
        ma.w0 w0Var = gVarN instanceof ma.w0 ? (ma.w0) gVarN : null;
        if (w0Var == null) {
            return false;
        }
        return z(c5.y.p(w0Var));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean z(cc.e0 r4) {
        /*
            cc.c1 r0 = r4.M0()
            ma.g r0 = r0.n()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L27
            boolean r3 = ob.k.b(r0)
            if (r3 == 0) goto L22
            ma.e r0 = (ma.e) r0
            lb.c r0 = sb.b.g(r0)
            lb.c r3 = ja.o.f8360g
            boolean r0 = kotlin.jvm.internal.h.a(r0, r3)
            if (r0 != 0) goto L22
            r0 = 1
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 != r2) goto L27
            r0 = 1
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 != 0) goto L30
            boolean r4 = y(r4)
            if (r4 == 0) goto L31
        L30:
            r1 = 1
        L31:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.d0.z(cc.e0):boolean");
    }

    @Override // com.google.android.gms.internal.vision.r0
    public byte[] b(byte[] bArr, int r22, int r32) {
        return Arrays.copyOfRange(bArr, r22, r32 + r22);
    }

    @Override // kc.a.c
    public Iterable d(Object obj) {
        da.m<Object>[] mVarArr = la.k.f9633h;
        return ((ma.b) obj).a().e();
    }

    @Override // l7.j
    public Object h() {
        return new ConcurrentHashMap();
    }

    public void l(u6.a aVar) {
        aVar.a(r7.class, u4.f12706a);
        aVar.a(g9.class, e6.f12319a);
        aVar.a(s7.class, v4.f12744a);
        aVar.a(v7.class, x4.f12768a);
        aVar.a(t7.class, w4.f12759a);
        aVar.a(u7.class, y4.f12786a);
        aVar.a(w6.class, p4.f4.f12341a);
        aVar.a(v6.class, p4.e4.f12317a);
        aVar.a(h7.class, p4.o4.f12540a);
        aVar.a(d9.class, c6.f12288a);
        aVar.a(u6.class, p4.d4.f12300a);
        aVar.a(t6.class, p4.c4.f12282a);
        aVar.a(f8.class, e5.f12318a);
        aVar.a(l9.class, p4.k4.f12450a);
        aVar.a(e7.class, p4.l4.f12475a);
        aVar.a(b7.class, p4.j4.f12428a);
        aVar.a(g8.class, f5.f12342a);
        aVar.a(a9.class, z5.f12805a);
        aVar.a(b9.class, a6.f12250a);
        aVar.a(c8.class, c5.f12283a);
        aVar.a(k9.class, p4.p3.f12593a);
        aVar.a(e8.class, d5.f12301a);
        aVar.a(h8.class, g5.f12357a);
        aVar.a(l8.class, j5.f12429a);
        aVar.a(j8.class, i5.f12401a);
        aVar.a(i8.class, h5.f12387a);
        aVar.a(q8.class, p5.f12596a);
        aVar.a(r8.class, q5.f12616a);
        aVar.a(t8.class, s5.f12673a);
        aVar.a(s8.class, r5.f12640a);
        aVar.a(y7.class, b5.f12271a);
        aVar.a(u8.class, t5.f12685a);
        aVar.a(v8.class, u5.f12736a);
        aVar.a(w8.class, v5.f12745a);
        aVar.a(x8.class, w5.f12760a);
        aVar.a(z8.class, x5.f12769a);
        aVar.a(y8.class, y5.f12787a);
        aVar.a(p8.class, k5.f12451a);
        aVar.a(l7.class, s4.f12672a);
        aVar.a(n8.class, m5.f12503a);
        aVar.a(m8.class, l5.f12480a);
        aVar.a(o8.class, n5.f12523a);
        aVar.a(c9.class, b6.f12272a);
        aVar.a(h9.class, f6.f12343a);
        aVar.a(k6.class, p4.u3.f12705a);
        aVar.a(i6.class, p4.s3.f12671a);
        aVar.a(h6.class, p4.r3.f12638a);
        aVar.a(j6.class, p4.t3.f12683a);
        aVar.a(m6.class, p4.w3.f12758a);
        aVar.a(l6.class, p4.v3.f12743a);
        aVar.a(n6.class, p4.x3.f12767a);
        aVar.a(p6.class, p4.y3.f12785a);
        aVar.a(q6.class, p4.z3.f12803a);
        aVar.a(r6.class, p4.a4.f12248a);
        aVar.a(s6.class, p4.b4.f12270a);
        aVar.a(p4.p2.class, p4.l3.f12474a);
        aVar.a(p4.r2.class, p4.o3.f12539a);
        aVar.a(p4.q2.class, p4.n3.f12516a);
        aVar.a(j7.class, p4.q4.f12615a);
        aVar.a(x6.class, p4.g4.f12356a);
        aVar.a(p4.v1.class, p4.t2.f12682a);
        aVar.a(p4.u1.class, p4.u2.f12704a);
        aVar.a(z6.class, p4.h4.f12381a);
        aVar.a(p4.x1.class, p4.v2.f12742a);
        aVar.a(p4.w1.class, p4.w2.f12757a);
        aVar.a(p4.d2.class, p4.z2.f12802a);
        aVar.a(p4.c2.class, p4.a3.f12247a);
        aVar.a(p4.b2.class, p4.x2.f12763a);
        aVar.a(p4.a2.class, p4.y2.f12778a);
        aVar.a(p4.f2.class, p4.b3.f12269a);
        aVar.a(p4.e2.class, p4.c3.f12281a);
        aVar.a(p4.h2.class, p4.d3.f12299a);
        aVar.a(p4.g2.class, p4.e3.f12316a);
        aVar.a(p4.o2.class, p4.j3.f12427a);
        aVar.a(p4.n2.class, p4.k3.f12449a);
        aVar.a(p4.j2.class, p4.f3.f12340a);
        aVar.a(p4.i2.class, p4.g3.f12355a);
        aVar.a(p4.m2.class, p4.h3.f12380a);
        aVar.a(p4.k2.class, p4.i3.f12399a);
        aVar.a(e9.class, d6.f12303a);
        aVar.a(i7.class, p4.p4.f12595a);
        aVar.a(n7.class, t4.f12684a);
        aVar.a(g6.class, p4.q3.f12614a);
        aVar.a(f7.class, p4.m4.f12502a);
        aVar.a(k7.class, r4.f12639a);
        aVar.a(a7.class, p4.i4.f12400a);
        aVar.a(x7.class, a5.f12249a);
        aVar.a(w7.class, z4.f12804a);
        aVar.a(p4.t1.class, p4.s2.f12670a);
    }

    public /* synthetic */ d0(Object obj) {
    }
}
