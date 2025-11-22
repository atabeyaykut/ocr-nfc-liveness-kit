package c5;

import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import c8.a;
import com.google.android.gms.internal.measurement.q9;
import java.lang.reflect.InvocationTargetException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import s4.aa;
import s4.ca;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionFragment;

/* loaded from: classes.dex */
public /* synthetic */ class y implements p2, ca, l7.j, r2.e, c6.h {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ y f2124a = new y();

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f2125b = {"ga_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "ga_error", "ga_error_value", "ga_error_length", "ga_event_origin", "ga_screen", "ga_screen_class", "ga_screen_id", "ga_previous_screen", "ga_previous_class", "ga_previous_id", "manual_tracking", "message_device_time", "message_id", "message_name", "message_time", "message_tracking_id", "message_type", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name", "campaign_info_source", "cached_campaign", "deferred_analytics_collection", "ga_session_number", "ga_session_id", "campaign_extra_referrer", "app_in_background", "firebase_feature_rollouts", "firebase_conversion", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "session_number", "session_id"};

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f2126c = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_mst", "_ndt", "_nmid", "_nmn", "_nmt", "_nmtid", "_nmc", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en", "_cis", "_cc", "_dac", "_sno", "_sid", "_cer", "_aib", "_ffr", "_c", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_sno", "_sid"};

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f2127d = {"items"};

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f2128e = {"affiliation", "coupon", "creative_name", "creative_slot", "currency", "discount", "index", "item_id", "item_brand", "item_category", "item_category2", "item_category3", "item_category4", "item_category5", "item_list_name", "item_list_id", "item_name", "item_variant", "location_id", "payment_type", "price", "promotion_id", "promotion_name", "quantity", "shipping", "shipping_tier", "tax", "transaction_id", "value", "item_list", "checkout_step", "checkout_option", "item_location_id"};
    public static final /* synthetic */ y f = new y();

    /* renamed from: g, reason: collision with root package name */
    public static final y f2129g = new y();

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f2130h = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    /* renamed from: j, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2131j = new kotlinx.coroutines.internal.u("EMPTY");

    /* renamed from: k, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2132k = new kotlinx.coroutines.internal.u("OFFER_SUCCESS");

    /* renamed from: l, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2133l = new kotlinx.coroutines.internal.u("OFFER_FAILED");

    /* renamed from: m, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2134m = new kotlinx.coroutines.internal.u("POLL_FAILED");

    /* renamed from: n, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2135n = new kotlinx.coroutines.internal.u("ENQUEUE_FAILED");

    /* renamed from: p, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.u f2136p = new kotlinx.coroutines.internal.u("ON_CLOSE_HANDLER_INVOKED");

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ y f2137q = new y();

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ y f2138r = new y();

    /* renamed from: s, reason: collision with root package name */
    public static final String[] f2139s = {"android.permission.CAMERA"};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [cc.s1] */
    public static final cc.s1 A(cc.e0 e0Var) {
        cc.m0 m0VarD;
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        cc.s1 s1VarP0 = e0Var.P0();
        if (s1VarP0 instanceof cc.y) {
            cc.y yVar = (cc.y) s1VarP0;
            cc.m0 m0VarD2 = yVar.f2377b;
            if (!m0VarD2.M0().getParameters().isEmpty() && m0VarD2.M0().n() != null) {
                List<ma.w0> parameters = m0VarD2.M0().getParameters();
                kotlin.jvm.internal.h.e(parameters, "constructor.parameters");
                List<ma.w0> list = parameters;
                ArrayList arrayList = new ArrayList(m9.n.Q0(list));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new cc.s0((ma.w0) it.next()));
                }
                m0VarD2 = cc.n1.d(m0VarD2, arrayList, null, 2);
            }
            cc.m0 m0VarD3 = yVar.f2378c;
            if (!m0VarD3.M0().getParameters().isEmpty() && m0VarD3.M0().n() != null) {
                List<ma.w0> parameters2 = m0VarD3.M0().getParameters();
                kotlin.jvm.internal.h.e(parameters2, "constructor.parameters");
                List<ma.w0> list2 = parameters2;
                ArrayList arrayList2 = new ArrayList(m9.n.Q0(list2));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new cc.s0((ma.w0) it2.next()));
                }
                m0VarD3 = cc.n1.d(m0VarD3, arrayList2, null, 2);
            }
            m0VarD = cc.f0.c(m0VarD2, m0VarD3);
        } else {
            if (!(s1VarP0 instanceof cc.m0)) {
                throw new j7.p();
            }
            cc.m0 m0Var = (cc.m0) s1VarP0;
            boolean zIsEmpty = m0Var.M0().getParameters().isEmpty();
            m0VarD = m0Var;
            if (!zIsEmpty) {
                ma.g gVarN = m0Var.M0().n();
                m0VarD = m0Var;
                if (gVarN != null) {
                    List<ma.w0> parameters3 = m0Var.M0().getParameters();
                    kotlin.jvm.internal.h.e(parameters3, "constructor.parameters");
                    List<ma.w0> list3 = parameters3;
                    ArrayList arrayList3 = new ArrayList(m9.n.Q0(list3));
                    Iterator it3 = list3.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(new cc.s0((ma.w0) it3.next()));
                    }
                    m0VarD = cc.n1.d(m0Var, arrayList3, null, 2);
                }
            }
        }
        return v.v(m0VarD, s1VarP0);
    }

    public static LinkedHashSet B(lb.f fVar, Collection collection, Collection collection2, ma.e eVar, yb.u uVar, ob.n nVar, boolean z10) {
        if (fVar == null) {
            b(12);
            throw null;
        }
        if (collection == null) {
            b(13);
            throw null;
        }
        if (eVar == null) {
            b(15);
            throw null;
        }
        if (uVar == null) {
            b(16);
            throw null;
        }
        if (nVar == null) {
            b(17);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        nVar.h(fVar, collection, collection2, eVar, new wa.a(uVar, linkedHashSet, z10));
        return linkedHashSet;
    }

    public static LinkedHashSet C(lb.f fVar, AbstractCollection abstractCollection, Collection collection, ma.e eVar, yb.u uVar, ob.n nVar) {
        if (fVar == null) {
            b(0);
            throw null;
        }
        if (eVar == null) {
            b(3);
            throw null;
        }
        if (uVar == null) {
            b(4);
            throw null;
        }
        if (nVar != null) {
            return B(fVar, abstractCollection, collection, eVar, uVar, nVar, false);
        }
        b(5);
        throw null;
    }

    public static LinkedHashSet D(lb.f fVar, Collection collection, AbstractCollection abstractCollection, xa.c cVar, yb.u uVar, ob.n nVar) {
        if (fVar == null) {
            b(6);
            throw null;
        }
        if (collection == null) {
            b(7);
            throw null;
        }
        if (cVar == null) {
            b(9);
            throw null;
        }
        if (uVar == null) {
            b(10);
            throw null;
        }
        if (nVar != null) {
            return B(fVar, collection, abstractCollection, cVar, uVar, nVar, true);
        }
        b(11);
        throw null;
    }

    public static /* synthetic */ void b(int r72) {
        String str = r72 != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[r72 != 18 ? 3 : 2];
        switch (r72) {
            case 1:
            case 7:
            case 13:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case 14:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case 16:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case 17:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "name";
                break;
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case 20:
                objArr[0] = "annotationClass";
                break;
        }
        if (r72 != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (r72) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "resolveOverrides";
                break;
            case 18:
                break;
            case 19:
            case 20:
                objArr[2] = "getAnnotationParameterByName";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r72 == 18) {
            throw new IllegalStateException(str2);
        }
    }

    public static final cc.k1 d(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        return new cc.k1(e0Var);
    }

    public static final kotlinx.coroutines.internal.a0 e(x9.l lVar, Object obj, kotlinx.coroutines.internal.a0 a0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            lVar.invoke(obj);
        } catch (Throwable th2) {
            if (a0Var == null || a0Var.getCause() == th2) {
                return new kotlinx.coroutines.internal.a0(kotlin.jvm.internal.h.k(obj, "Exception in undelivered element handler for "), th2);
            }
            b8.f.k(a0Var, th2);
        }
        return a0Var;
    }

    public static String[] g(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add("<init>(" + str + ")V");
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean j(cc.e0 e0Var, cc.c1 c1Var, Set set) {
        boolean zJ;
        if (kotlin.jvm.internal.h.a(e0Var.M0(), c1Var)) {
            return true;
        }
        ma.g gVarN = e0Var.M0().n();
        ma.h hVar = gVarN instanceof ma.h ? (ma.h) gVarN : null;
        List<ma.w0> listS = hVar != null ? hVar.s() : null;
        Iterable iterableZ1 = m9.t.z1(e0Var.K0());
        if (!(iterableZ1 instanceof Collection) || !((Collection) iterableZ1).isEmpty()) {
            Iterator it = iterableZ1.iterator();
            do {
                m9.a0 a0Var = (m9.a0) it;
                if (a0Var.hasNext()) {
                    m9.y yVar = (m9.y) a0Var.next();
                    int r52 = yVar.f10176a;
                    cc.i1 i1Var = (cc.i1) yVar.f10177b;
                    ma.w0 w0Var = listS != null ? (ma.w0) m9.t.d1(r52, listS) : null;
                    if (((w0Var == null || set == null || !set.contains(w0Var)) ? false : true) || i1Var.c()) {
                        zJ = false;
                    } else {
                        cc.e0 type = i1Var.getType();
                        kotlin.jvm.internal.h.e(type, "argument.type");
                        zJ = j(type, c1Var, set);
                    }
                }
            } while (!zJ);
            return true;
        }
        return false;
    }

    public static final cc.k1 k(cc.e0 type, cc.t1 t1Var, ma.w0 w0Var) {
        kotlin.jvm.internal.h.f(type, "type");
        if ((w0Var != null ? w0Var.I() : null) == t1Var) {
            t1Var = cc.t1.INVARIANT;
        }
        return new cc.k1(type, t1Var);
    }

    public static final void m(cc.e0 e0Var, cc.m0 m0Var, LinkedHashSet linkedHashSet, Set set) {
        ma.g gVarN = e0Var.M0().n();
        if (gVarN instanceof ma.w0) {
            if (!kotlin.jvm.internal.h.a(e0Var.M0(), m0Var.M0())) {
                linkedHashSet.add(gVarN);
                return;
            }
            for (cc.e0 upperBound : ((ma.w0) gVarN).getUpperBounds()) {
                kotlin.jvm.internal.h.e(upperBound, "upperBound");
                m(upperBound, m0Var, linkedHashSet, set);
            }
            return;
        }
        ma.g gVarN2 = e0Var.M0().n();
        ma.h hVar = gVarN2 instanceof ma.h ? (ma.h) gVarN2 : null;
        List<ma.w0> listS = hVar != null ? hVar.s() : null;
        int r32 = 0;
        for (cc.i1 i1Var : e0Var.K0()) {
            int r42 = r32 + 1;
            ma.w0 w0Var = listS != null ? (ma.w0) m9.t.d1(r32, listS) : null;
            if (!((w0Var == null || set == null || !set.contains(w0Var)) ? false : true) && !i1Var.c() && !linkedHashSet.contains(i1Var.getType().M0().n()) && !kotlin.jvm.internal.h.a(i1Var.getType().M0(), m0Var.M0())) {
                cc.e0 type = i1Var.getType();
                kotlin.jvm.internal.h.e(type, "argument.type");
                m(type, m0Var, linkedHashSet, set);
            }
            r32 = r42;
        }
    }

    public static ma.a1 n(lb.f fVar, ma.e eVar) {
        if (fVar == null) {
            b(19);
            throw null;
        }
        if (eVar == null) {
            b(20);
            throw null;
        }
        Collection<ma.d> collectionK = eVar.k();
        if (collectionK.size() != 1) {
            return null;
        }
        for (ma.a1 a1Var : collectionK.iterator().next().g()) {
            if (a1Var.getName().equals(fVar)) {
                return a1Var;
            }
        }
        return null;
    }

    public static final ja.k o(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        ja.k kVarM = e0Var.M0().m();
        kotlin.jvm.internal.h.e(kVarM, "constructor.builtIns");
        return kVarM;
    }

    public static final cc.e0 p(ma.w0 w0Var) {
        Object obj;
        List<cc.e0> upperBounds = w0Var.getUpperBounds();
        kotlin.jvm.internal.h.e(upperBounds, "upperBounds");
        upperBounds.isEmpty();
        List<cc.e0> upperBounds2 = w0Var.getUpperBounds();
        kotlin.jvm.internal.h.e(upperBounds2, "upperBounds");
        Iterator<T> it = upperBounds2.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            ma.g gVarN = ((cc.e0) next).M0().n();
            ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
            if ((eVar == null || eVar.h() == 2 || eVar.h() == 5) ? false : true) {
                obj = next;
                break;
            }
        }
        cc.e0 e0Var = (cc.e0) obj;
        if (e0Var != null) {
            return e0Var;
        }
        List<cc.e0> upperBounds3 = w0Var.getUpperBounds();
        kotlin.jvm.internal.h.e(upperBounds3, "upperBounds");
        Object objA1 = m9.t.a1(upperBounds3);
        kotlin.jvm.internal.h.e(objA1, "upperBounds.first()");
        return (cc.e0) objA1;
    }

    public static final boolean q(ma.w0 typeParameter, cc.c1 c1Var, Set set) {
        kotlin.jvm.internal.h.f(typeParameter, "typeParameter");
        List<cc.e0> upperBounds = typeParameter.getUpperBounds();
        kotlin.jvm.internal.h.e(upperBounds, "typeParameter.upperBounds");
        List<cc.e0> list = upperBounds;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (cc.e0 upperBound : list) {
            kotlin.jvm.internal.h.e(upperBound, "upperBound");
            if (j(upperBound, typeParameter.q().M0(), set) && (c1Var == null || kotlin.jvm.internal.h.a(upperBound.M0(), c1Var))) {
                return true;
            }
        }
        return false;
    }

    public static LinkedHashSet r(String internalName, String... signatures) {
        kotlin.jvm.internal.h.f(internalName, "internalName");
        kotlin.jvm.internal.h.f(signatures, "signatures");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : signatures) {
            linkedHashSet.add(internalName + '.' + str);
        }
        return linkedHashSet;
    }

    public static LinkedHashSet s(String str, String... signatures) {
        kotlin.jvm.internal.h.f(signatures, "signatures");
        return r("java/lang/".concat(str), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    public static LinkedHashSet t(String str, String... strArr) {
        return r("java/util/".concat(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final boolean u(cc.e0 e0Var, cc.e0 superType) {
        kotlin.jvm.internal.h.f(superType, "superType");
        return dc.d.f4825a.d(e0Var, superType);
    }

    public static final l9.e v(int r12, x9.a initializer) {
        androidx.camera.core.impl.utils.f.j(r12, "mode");
        kotlin.jvm.internal.h.f(initializer, "initializer");
        if (r12 == 0) {
            throw null;
        }
        int r13 = r12 - 1;
        if (r13 == 0) {
            return new l9.j(initializer);
        }
        if (r13 == 1) {
            return new l9.i(initializer);
        }
        if (r13 == 2) {
            return new l9.n(initializer);
        }
        throw new j7.p();
    }

    public static final l9.j w(x9.a initializer) {
        kotlin.jvm.internal.h.f(initializer, "initializer");
        return new l9.j(initializer);
    }

    public static final cc.s1 x(cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        return cc.q1.j(e0Var, true);
    }

    public static final void y(MobileAccidentIntroductionFragment mobileAccidentIntroductionFragment) {
        FragmentActivity fragmentActivityRequireActivity = mobileAccidentIntroductionFragment.requireActivity();
        String[] strArr = f2130h;
        if (td.a.a(fragmentActivityRequireActivity, (String[]) Arrays.copyOf(strArr, 2))) {
            mobileAccidentIntroductionFragment.F();
        } else {
            mobileAccidentIntroductionFragment.requestPermissions(strArr, 1);
        }
    }

    public static final cc.e0 z(cc.e0 e0Var, na.h hVar) {
        return (e0Var.getAnnotations().isEmpty() && hVar.isEmpty()) ? e0Var : e0Var.P0().S0(v.H(e0Var.L0(), hVar));
    }

    public void E(String str) {
        if (f(2)) {
            Log.v("FirebaseCrashlytics", str, null);
        }
    }

    public void F(String str, Exception exc) {
        if (f(5)) {
            Log.w("FirebaseCrashlytics", str, exc);
        }
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().A());
    }

    @Override // r2.e
    public Object apply(Object obj) {
        return (byte[]) obj;
    }

    @Override // s4.ca
    public Object c(Object obj) {
        aa aaVar = (aa) obj;
        List listI0 = b8.f.I0(aaVar.f14899b);
        String str = aaVar.f14901d;
        if (x5.a.D(str)) {
            str = "";
        }
        b8.f.w0(listI0);
        String str2 = aaVar.f;
        if (x5.a.D(str2)) {
            str2 = "und";
        }
        return new a.C0053a(str, listI0, str2);
    }

    public boolean f(int r22) {
        return 4 <= r22 || Log.isLoggable("FirebaseCrashlytics", r22);
    }

    @Override // l7.j
    public Object h() {
        return new LinkedHashMap();
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new v7.i();
    }

    public void l(String str) {
        if (f(3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }
}
