package a6;

import android.os.Bundle;
import androidx.appcompat.widget.v;
import androidx.core.location.LocationRequestCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.view.ComponentActivity;
import androidx.view.SavedStateRegistry;
import c5.p2;
import c5.q2;
import c5.r2;
import c6.h;
import c8.a;
import cc.l1;
import cc.m0;
import cc.p1;
import cc.y;
import com.bumptech.glide.manager.q;
import com.google.android.gms.internal.clearcut.l;
import com.google.android.gms.internal.measurement.q9;
import com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar;
import fc.k;
import fc.n;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import kotlin.jvm.internal.z;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.w;
import l7.j;
import l9.m;
import ma.b0;
import ma.g;
import nc.e0;
import nc.g0;
import p4.g7;
import p9.e;
import p9.f;
import r0.b1;
import r0.f1;
import r0.s0;
import r0.u0;
import r0.v0;
import s4.b9;
import s4.ca;
import vb.i;
import x9.p;

/* loaded from: classes2.dex */
public /* synthetic */ class a implements h, p2, q, l, ca, j, r3.q {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ a f110a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ a f111b = new a();

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f112c = {"ad_activeview", "ad_click", "ad_exposure", "ad_query", "ad_reward", "adunit_exposure", "app_background", "app_clear_data", "app_exception", "app_remove", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "app_upgrade", "app_update", "ga_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "session_start_with_rollout", "user_engagement", "ad_impression", "screen_view", "ga_extra_parameter", "firebase_campaign"};

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f113d = {"ad_impression"};

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f114e = {"_aa", "_ac", "_xa", "_aq", "_ar", "_xu", "_ab", "_cd", "_ae", "_ui", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "_ug", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_ssr", "_e", "_ai", "_vs", "_ep", "_cmp"};
    public static final String[] f = {"purchase", "refund", "add_payment_info", "add_shipping_info", "add_to_cart", "add_to_wishlist", "begin_checkout", "remove_from_cart", "select_item", "select_promotion", "view_cart", "view_item", "view_item_list", "view_promotion", "ecommerce_purchase", "purchase_refund", "set_checkout_option", "checkout_progress", "select_content", "view_search_results"};

    /* renamed from: g, reason: collision with root package name */
    public static final a f115g = new a();

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ a f116h = new a();

    /* renamed from: j, reason: collision with root package name */
    public static final Object[] f117j = new Object[0];

    /* renamed from: k, reason: collision with root package name */
    public static final u f118k = new u("REMOVED_TASK");

    /* renamed from: l, reason: collision with root package name */
    public static final u f119l = new u("CLOSED_EMPTY");

    public static boolean A(n nVar, fc.h hVar, fc.h hVar2) {
        if (hVar == hVar2) {
            return true;
        }
        m0 m0VarD = nVar.d(hVar);
        m0 m0VarD2 = nVar.d(hVar2);
        if (m0VarD != null && m0VarD2 != null) {
            return z(nVar, m0VarD, m0VarD2);
        }
        y yVarN = nVar.n(hVar);
        y yVarN2 = nVar.n(hVar2);
        return yVarN != null && yVarN2 != null && z(nVar, nVar.e(yVarN), nVar.e(yVarN2)) && z(nVar, nVar.c(yVarN), nVar.c(yVarN2));
    }

    public static p1 B(List list, l1 l1Var, ma.j jVar, List list2) {
        if (l1Var == null) {
            d(1);
            throw null;
        }
        if (jVar == null) {
            d(2);
            throw null;
        }
        if (list2 == null) {
            d(3);
            throw null;
        }
        p1 p1VarC = C(list, l1Var, jVar, list2, null);
        if (p1VarC != null) {
            return p1VarC;
        }
        throw new AssertionError("Substitution failed");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static cc.p1 C(java.util.List r16, cc.l1 r17, ma.j r18, java.util.List r19, boolean[] r20) {
        /*
            r0 = r17
            r1 = r19
            r2 = 0
            if (r0 == 0) goto Le8
            if (r18 == 0) goto Le3
            if (r1 == 0) goto Ldd
            java.util.HashMap r10 = new java.util.HashMap
            r10.<init>()
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            java.util.Iterator r12 = r16.iterator()
            r13 = 0
            r8 = 0
        L1b:
            boolean r3 = r12.hasNext()
            if (r3 == 0) goto L5c
            java.lang.Object r3 = r12.next()
            r14 = r3
            ma.w0 r14 = (ma.w0) r14
            na.h r4 = r14.getAnnotations()
            boolean r5 = r14.A()
            cc.t1 r6 = r14.I()
            lb.f r7 = r14.getName()
            int r15 = r8 + 1
            bc.l r9 = r14.d0()
            r3 = r18
            pa.t0 r3 = pa.t0.N0(r3, r4, r5, r6, r7, r8, r9)
            cc.c1 r4 = r14.i()
            cc.k1 r5 = new cc.k1
            cc.m0 r6 = r3.q()
            r5.<init>(r6)
            r10.put(r4, r5)
            r11.put(r14, r3)
            r1.add(r3)
            r8 = r15
            goto L1b
        L5c:
            cc.e1$a r1 = cc.e1.f2291b
            cc.d1 r1 = new cc.d1
            r1.<init>(r10, r13)
            cc.p1 r3 = cc.p1.f(r0, r1)
            cc.m1 r4 = new cc.m1
            r4.<init>(r0)
            cc.p1 r0 = cc.p1.f(r4, r1)
            java.util.Iterator r1 = r16.iterator()
        L74:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto Ldc
            java.lang.Object r4 = r1.next()
            ma.w0 r4 = (ma.w0) r4
            java.lang.Object r5 = r11.get(r4)
            pa.t0 r5 = (pa.t0) r5
            java.util.List r4 = r4.getUpperBounds()
            java.util.Iterator r4 = r4.iterator()
        L8e:
            boolean r6 = r4.hasNext()
            r7 = 1
            if (r6 == 0) goto Ld6
            java.lang.Object r6 = r4.next()
            cc.e0 r6 = (cc.e0) r6
            cc.c1 r8 = r6.M0()
            ma.g r8 = r8.n()
            boolean r9 = r8 instanceof ma.w0
            if (r9 == 0) goto Lb6
            ma.w0 r8 = (ma.w0) r8
            java.lang.String r9 = "typeParameter"
            kotlin.jvm.internal.h.f(r8, r9)
            boolean r8 = c5.y.q(r8, r2, r2)
            if (r8 == 0) goto Lb6
            r8 = r3
            goto Lb7
        Lb6:
            r8 = r0
        Lb7:
            cc.t1 r9 = cc.t1.OUT_VARIANCE
            cc.e0 r8 = r8.k(r6, r9)
            if (r8 != 0) goto Lc0
            return r2
        Lc0:
            if (r8 == r6) goto Lc6
            if (r20 == 0) goto Lc6
            r20[r13] = r7
        Lc6:
            r5.M0()
            boolean r6 = c5.v.y(r8)
            if (r6 == 0) goto Ld0
            goto L8e
        Ld0:
            java.util.ArrayList r6 = r5.f12995m
            r6.add(r8)
            goto L8e
        Ld6:
            r5.M0()
            r5.f12996n = r7
            goto L74
        Ldc:
            return r3
        Ldd:
            r0 = 8
            d(r0)
            throw r2
        Le3:
            r0 = 7
            d(r0)
            throw r2
        Le8:
            r0 = 6
            d(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: a6.a.C(java.util.List, cc.l1, ma.j, java.util.List, boolean[]):cc.p1");
    }

    public static final String D(char c10, Locale locale) {
        String strValueOf = String.valueOf(c10);
        kotlin.jvm.internal.h.d(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        kotlin.jvm.internal.h.e(upperCase, "this as java.lang.String).toUpperCase(locale)");
        if (upperCase.length() <= 1) {
            String strValueOf2 = String.valueOf(c10);
            kotlin.jvm.internal.h.d(strValueOf2, "null cannot be cast to non-null type java.lang.String");
            String upperCase2 = strValueOf2.toUpperCase(Locale.ROOT);
            kotlin.jvm.internal.h.e(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            return !kotlin.jvm.internal.h.a(upperCase, upperCase2) ? upperCase : String.valueOf(Character.toTitleCase(c10));
        }
        if (c10 == 329) {
            return upperCase;
        }
        char cCharAt = upperCase.charAt(0);
        String strSubstring = upperCase.substring(1);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.h.e(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return cCharAt + lowerCase;
    }

    public static final Object[] E(Collection collection) {
        kotlin.jvm.internal.h.f(collection, "collection");
        int size = collection.size();
        Object[] objArr = f117j;
        if (size == 0) {
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return objArr;
        }
        Object[] objArrCopyOf = new Object[size];
        int r02 = 0;
        while (true) {
            int r22 = r02 + 1;
            objArrCopyOf[r02] = it.next();
            if (r22 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int r03 = ((r22 * 3) + 1) >>> 1;
                if (r03 <= r22) {
                    r03 = 2147483645;
                    if (r22 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, r03);
                kotlin.jvm.internal.h.e(objArrCopyOf, "copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, r22);
                kotlin.jvm.internal.h.e(objArrCopyOf2, "copyOf(result, size)");
                return objArrCopyOf2;
            }
            r02 = r22;
        }
    }

    public static final Object[] F(Collection collection, Object[] objArr) throws NegativeArraySizeException {
        Object[] objArrCopyOf;
        kotlin.jvm.internal.h.f(collection, "collection");
        objArr.getClass();
        int size = collection.size();
        int r22 = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArrCopyOf = objArr;
        } else {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            kotlin.jvm.internal.h.d(objNewInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf = (Object[]) objNewInstance;
        }
        while (true) {
            int r32 = r22 + 1;
            objArrCopyOf[r22] = it.next();
            if (r32 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int r23 = ((r32 * 3) + 1) >>> 1;
                if (r23 <= r32) {
                    r23 = 2147483645;
                    if (r32 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, r23);
                kotlin.jvm.internal.h.e(objArrCopyOf, "copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                if (objArrCopyOf == objArr) {
                    objArr[r32] = null;
                    return objArr;
                }
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, r32);
                kotlin.jvm.internal.h.e(objArrCopyOf2, "copyOf(result, size)");
                return objArrCopyOf2;
            }
            r22 = r32;
        }
    }

    public static final String G(String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        StringBuilder sb2 = new StringBuilder(str.length());
        int length = str.length();
        for (int r32 = 0; r32 < length; r32++) {
            char cCharAt = str.charAt(r32);
            if ('A' <= cCharAt && cCharAt < '[') {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb2.append(cCharAt);
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "builder.toString()");
        return string;
    }

    public static final Object H(p9.f fVar, Object obj, Object obj2, p pVar, p9.d frame) {
        Object objC = w.c(fVar, obj2);
        try {
            qc.q qVar = new qc.q(frame, fVar);
            z.c(2, pVar);
            Object objMo7invoke = pVar.mo7invoke(obj, qVar);
            w.a(fVar, objC);
            if (objMo7invoke == q9.a.COROUTINE_SUSPENDED) {
                kotlin.jvm.internal.h.f(frame, "frame");
            }
            return objMo7invoke;
        } catch (Throwable th2) {
            w.a(fVar, objC);
            throw th2;
        }
    }

    public static /* synthetic */ void d(int r72) {
        String str = r72 != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[r72 != 4 ? 3 : 2];
        switch (r72) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (r72 != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (r72 != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (r72 == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static final boolean e(int r42, byte[] a10, int r6, byte[] b10, int r82) {
        kotlin.jvm.internal.h.f(a10, "a");
        kotlin.jvm.internal.h.f(b10, "b");
        if (r82 <= 0) {
            return true;
        }
        int r12 = 0;
        while (true) {
            int r22 = r12 + 1;
            if (a10[r12 + r42] != b10[r12 + r6]) {
                return false;
            }
            if (r22 >= r82) {
                return true;
            }
            r12 = r22;
        }
    }

    public static final String f(String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        boolean z10 = false;
        if (str.length() == 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if ('a' <= cCharAt && cCharAt < '{') {
            z10 = true;
        }
        if (!z10) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        String strSubstring = str.substring(1);
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        return upperCase + strSubstring;
    }

    public static final void g(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    public static final void j(int r52) {
        if (new ca.d(2, 36).l(r52)) {
            return;
        }
        StringBuilder sbE = v.e("radix ", r52, " was not in valid range ");
        sbE.append(new ca.d(2, 36));
        throw new IllegalArgumentException(sbE.toString());
    }

    public static final Object k(long j10, p9.d dVar) {
        if (j10 <= 0) {
            return m.f9594a;
        }
        nc.j jVar = new nc.j(1, c5.w.x(dVar));
        jVar.n();
        if (j10 < LocationRequestCompat.PASSIVE_INTERVAL) {
            f.b bVar = jVar.f10807e.get(e.a.f12868a);
            g0 g0Var = bVar instanceof g0 ? (g0) bVar : null;
            if (g0Var == null) {
                g0Var = e0.f10789a;
            }
            g0Var.c(j10, jVar);
        }
        Object objM = jVar.m();
        return objM == q9.a.COROUTINE_SUSPENDED ? objM : m.f9594a;
    }

    public static final boolean l(char c10, char c11, boolean z10) {
        if (c10 == c11) {
            return true;
        }
        if (!z10) {
            return false;
        }
        char upperCase = Character.toUpperCase(c10);
        char upperCase2 = Character.toUpperCase(c11);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static r0.z m(Class cls, Class cls2, r0.j jVar, String str, r0.q initialStateFactory) {
        b1 b1Var;
        f1 f1Var;
        f1 jVar2;
        kotlin.jvm.internal.h.f(initialStateFactory, "initialStateFactory");
        SavedStateRegistry savedStateRegistry = jVar.f13759e;
        if (!savedStateRegistry.getIsRestored()) {
            throw new IllegalStateException("You can only access a view model after super.onCreate of your activity/fragment has been called.".toString());
        }
        Bundle bundleConsumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey(str);
        ViewModelStoreOwner owner = jVar.f13758d;
        if (bundleConsumeRestoredStateForKey != null) {
            Object obj = bundleConsumeRestoredStateForKey.get("mvrx:saved_args");
            Bundle bundle = bundleConsumeRestoredStateForKey.getBundle("mvrx:saved_instance_state");
            if (bundle == null) {
                throw new IllegalArgumentException("State was not saved prior to restoring!".toString());
            }
            if (jVar instanceof r0.a) {
                r0.a aVar = (r0.a) jVar;
                ComponentActivity activity = aVar.f13692a;
                kotlin.jvm.internal.h.f(activity, "activity");
                ViewModelStoreOwner owner2 = aVar.f13694c;
                kotlin.jvm.internal.h.f(owner2, "owner");
                SavedStateRegistry savedStateRegistry2 = aVar.f13695d;
                kotlin.jvm.internal.h.f(savedStateRegistry2, "savedStateRegistry");
                jVar2 = new r0.a(activity, obj, owner2, savedStateRegistry2);
            } else {
                ComponentActivity activity2 = jVar.f13755a;
                kotlin.jvm.internal.h.f(activity2, "activity");
                Fragment fragment = jVar.f13757c;
                kotlin.jvm.internal.h.f(fragment, "fragment");
                kotlin.jvm.internal.h.f(owner, "owner");
                kotlin.jvm.internal.h.f(savedStateRegistry, "savedStateRegistry");
                jVar2 = new r0.j(activity2, obj, fragment, owner, savedStateRegistry);
            }
            b1Var = new b1(jVar2, new u0(bundle));
        } else {
            b1Var = null;
        }
        f1 f1Var2 = (b1Var == null || (f1Var = b1Var.f13707a) == null) ? jVar : f1Var;
        ViewModel viewModel = new ViewModelProvider(owner, new r0.l(cls, cls2, f1Var2, str, b1Var != null ? b1Var.f13708b : null, false, initialStateFactory)).get(str, v0.class);
        if (viewModel == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.airbnb.mvrx.MavericksViewModelWrapper<VM, S>");
        }
        v0 v0Var = (v0) viewModel;
        try {
            savedStateRegistry.registerSavedStateProvider(str, new s0(v0Var, f1Var2));
        } catch (IllegalArgumentException unused) {
        }
        return v0Var.f13872a;
    }

    public static final lb.b n(ib.c cVar, int r22) {
        kotlin.jvm.internal.h.f(cVar, "<this>");
        return lb.b.f(cVar.a(r22), cVar.b(r22));
    }

    public static final lb.f o(ib.c cVar, int r22) {
        kotlin.jvm.internal.h.f(cVar, "<this>");
        return lb.f.r(cVar.getString(r22));
    }

    public static final g p(ma.j jVar) {
        kotlin.jvm.internal.h.f(jVar, "<this>");
        ma.j jVarB = jVar.b();
        if (jVarB == null || (jVar instanceof ma.e0)) {
            return null;
        }
        if (!(jVarB.b() instanceof ma.e0)) {
            return p(jVarB);
        }
        if (jVarB instanceof g) {
            return (g) jVarB;
        }
        return null;
    }

    public static final boolean q(String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        if (str.length() > 0) {
            return kotlin.jvm.internal.h.a(str, "kazatutanagi");
        }
        return false;
    }

    public static final boolean r(String str) {
        kotlin.jvm.internal.h.f(str, "<this>");
        if (str.length() > 0) {
            return kotlin.jvm.internal.h.a(str, "isNativePage");
        }
        return false;
    }

    public static final boolean s(int r02, String str) {
        char cCharAt = str.charAt(r02);
        return 'A' <= cCharAt && cCharAt < '[';
    }

    public static final boolean t(char c10) {
        return Character.isWhitespace(c10) || Character.isSpaceChar(c10);
    }

    public static void u(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str.concat(" can not be null"));
        }
    }

    public static final ya.e v(g7 g7Var, cb.d annotationsOwner) {
        kotlin.jvm.internal.h.f(g7Var, "<this>");
        kotlin.jvm.internal.h.f(annotationsOwner, "annotationsOwner");
        return new ya.e(g7Var, annotationsOwner, false);
    }

    public static final ma.e w(b0 b0Var, lb.c fqName) {
        g gVarE;
        i iVarX0;
        ua.c cVar = ua.c.FROM_BUILTINS;
        kotlin.jvm.internal.h.f(b0Var, "<this>");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        if (fqName.d()) {
            return null;
        }
        lb.c cVarE = fqName.e();
        kotlin.jvm.internal.h.e(cVarE, "fqName.parent()");
        i iVarO = b0Var.I0(cVarE).o();
        lb.f fVarF = fqName.f();
        kotlin.jvm.internal.h.e(fVarF, "fqName.shortName()");
        g gVarE2 = iVarO.e(fVarF, cVar);
        ma.e eVar = gVarE2 instanceof ma.e ? (ma.e) gVarE2 : null;
        if (eVar != null) {
            return eVar;
        }
        lb.c cVarE2 = fqName.e();
        kotlin.jvm.internal.h.e(cVarE2, "fqName.parent()");
        ma.e eVarW = w(b0Var, cVarE2);
        if (eVarW == null || (iVarX0 = eVarW.x0()) == null) {
            gVarE = null;
        } else {
            lb.f fVarF2 = fqName.f();
            kotlin.jvm.internal.h.e(fVarF2, "fqName.shortName()");
            gVarE = iVarX0.e(fVarF2, cVar);
        }
        if (gVarE instanceof ma.e) {
            return (ma.e) gVarE;
        }
        return null;
    }

    public static final int x(ed.h hVar, int r22) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        return r22 == -1234567890 ? hVar.r() : r22;
    }

    public static final int y(ed.g0 g0Var, int r52) {
        int r22;
        kotlin.jvm.internal.h.f(g0Var, "<this>");
        int r53 = r52 + 1;
        int length = g0Var.f5314e.length;
        int[] r42 = g0Var.f;
        kotlin.jvm.internal.h.f(r42, "<this>");
        int r12 = length - 1;
        int r02 = 0;
        while (true) {
            if (r02 <= r12) {
                r22 = (r02 + r12) >>> 1;
                int r32 = r42[r22];
                if (r32 >= r53) {
                    if (r32 <= r53) {
                        break;
                    }
                    r12 = r22 - 1;
                } else {
                    r02 = r22 + 1;
                }
            } else {
                r22 = (-r02) - 1;
                break;
            }
        }
        return r22 >= 0 ? r22 : ~r22;
    }

    public static boolean z(n nVar, fc.i iVar, fc.i iVar2) {
        if (nVar.E(iVar) == nVar.E(iVar2) && nVar.k(iVar) == nVar.k(iVar2)) {
            if ((nVar.y(iVar) == null) == (nVar.y(iVar2) == null) && nVar.h(nVar.f(iVar), nVar.f(iVar2))) {
                if (nVar.Q(iVar, iVar2)) {
                    return true;
                }
                int r02 = nVar.E(iVar);
                for (int r32 = 0; r32 < r02; r32++) {
                    k kVarJ = nVar.j(iVar, r32);
                    k kVarJ2 = nVar.j(iVar2, r32);
                    if (nVar.w(kVarJ) != nVar.w(kVarJ2)) {
                        return false;
                    }
                    if (!nVar.w(kVarJ) && (nVar.g0(kVarJ) != nVar.g0(kVarJ2) || !A(nVar, nVar.P(kVarJ), nVar.P(kVarJ2)))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().n());
    }

    @Override // r3.q
    public /* bridge */ /* synthetic */ void b(n3.h hVar) {
    }

    @Override // s4.ca
    public Object c(Object obj) {
        b9 b9Var = (b9) obj;
        List listI0 = b8.f.I0(b9Var.f14924b);
        String str = b9Var.f14927e;
        if (x5.a.D(str)) {
            str = "";
        }
        b8.f.w0(listI0);
        String str2 = b9Var.f14928g;
        if (x5.a.D(str2)) {
            str2 = "und";
        }
        return new a.b(str, listI0, str2, s4.b.a(Arrays.asList(b9Var.f14923a), c5.y.f));
    }

    @Override // l7.j
    public Object h() {
        return new TreeMap();
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return AnalyticsConnectorRegistrar.lambda$getComponents$0(yVar);
    }
}
