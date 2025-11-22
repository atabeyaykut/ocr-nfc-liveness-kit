package a0;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.RemoteException;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.location.LocationRequestCompat;
import androidx.lifecycle.LifecycleOwner;
import c5.d;
import c5.e0;
import c5.p2;
import c5.q2;
import c5.r2;
import c6.h;
import c6.y;
import c8.a;
import com.afollestad.materialdialogs.lifecycle.DialogLifecycleObserver;
import com.google.android.gms.internal.clearcut.t2;
import com.google.android.gms.internal.clearcut.u2;
import com.google.android.gms.internal.measurement.q9;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kc.a;
import kotlinx.coroutines.internal.s;
import l7.j;
import lc.w;
import m4.m0;
import m4.q;
import ma.e;
import n3.a;
import nc.f0;
import o3.k;
import ob.i;
import p.c;
import pg.t;
import rc.m;
import s4.ca;
import s4.l9;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import x9.l;
import za.v;
import za.x;

/* loaded from: classes.dex */
public class b implements d, p2, ca, j, k, c, m, h, a.c {

    /* renamed from: q, reason: collision with root package name */
    public static t f17q;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ b f4a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b f5b = new b();

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ b f6c = new b();

    /* renamed from: d, reason: collision with root package name */
    public static final t2 f7d = new t2();

    /* renamed from: e, reason: collision with root package name */
    public static final u2 f8e = new u2();
    public static final int[] f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public static final long[] f9g = new long[0];

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f10h = new String[0];

    /* renamed from: j, reason: collision with root package name */
    public static final byte[][] f11j = new byte[0][];

    /* renamed from: k, reason: collision with root package name */
    public static final byte[] f12k = new byte[0];

    /* renamed from: l, reason: collision with root package name */
    public static final b f13l = new b();

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ b f14m = new b();

    /* renamed from: n, reason: collision with root package name */
    public static final String[] f15n = {"android.permission.CAMERA"};

    /* renamed from: p, reason: collision with root package name */
    public static final String[] f16p = {"android.permission.READ_EXTERNAL_STORAGE"};

    /* renamed from: r, reason: collision with root package name */
    public static final String[] f18r = {"android.permission.CAMERA"};

    /* renamed from: s, reason: collision with root package name */
    public static final String[] f19s = {"android.permission.CAMERA"};

    /* renamed from: t, reason: collision with root package name */
    public static final String[] f20t = {"android.permission.BLUETOOTH_SCAN"};

    /* renamed from: v, reason: collision with root package name */
    public static final String[] f21v = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    public static final String[] w = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    /* renamed from: x, reason: collision with root package name */
    public static final int[] f22x = {R.attr.itemSpacing};

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ b f23y = new b();

    /* renamed from: z, reason: collision with root package name */
    public static final b f24z = new b();

    public /* synthetic */ b() {
    }

    public /* synthetic */ b(f0 f0Var) {
    }

    public static final void g(Appendable appendable, Object obj, l lVar) {
        CharSequence charSequenceValueOf;
        kotlin.jvm.internal.h.f(appendable, "<this>");
        if (lVar == null) {
            if (!(obj == null ? true : obj instanceof CharSequence)) {
                if (obj instanceof Character) {
                    appendable.append(((Character) obj).charValue());
                    return;
                }
                charSequenceValueOf = String.valueOf(obj);
            }
            appendable.append(charSequenceValueOf);
        }
        obj = lVar.invoke(obj);
        charSequenceValueOf = (CharSequence) obj;
        appendable.append(charSequenceValueOf);
    }

    public static e j(e eVar) {
        lb.d dVarG = i.g(eVar);
        String str = la.c.f9598a;
        lb.c cVar = la.c.f9607k.get(dVarG);
        if (cVar != null) {
            return sb.b.e(eVar).j(cVar);
        }
        throw new IllegalArgumentException("Given class " + eVar + " is not a read-only collection");
    }

    public static String k(com.google.crypto.tink.shaded.protobuf.i iVar) {
        String str;
        StringBuilder sb2 = new StringBuilder(iVar.size());
        for (int r12 = 0; r12 < iVar.size(); r12++) {
            int r22 = iVar.h(r12);
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
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static final s l(Object obj) {
        if (obj != e0.f1489c) {
            return (s) obj;
        }
        throw new IllegalStateException("Does not contain segment".toString());
    }

    public static final void m(v.e eVar, LifecycleOwner lifecycleOwner) {
        DialogLifecycleObserver dialogLifecycleObserver = new DialogLifecycleObserver(new a(eVar));
        if (lifecycleOwner == null) {
            Object obj = eVar.f18183l;
            lifecycleOwner = (LifecycleOwner) (!(obj instanceof LifecycleOwner) ? null : obj);
            if (lifecycleOwner == null) {
                throw new IllegalStateException(obj + " is not a LifecycleOwner.");
            }
        }
        lifecycleOwner.getLifecycle().addObserver(dialogLifecycleObserver);
    }

    public static e n(b bVar, lb.c cVar, ja.k builtIns) {
        bVar.getClass();
        kotlin.jvm.internal.h.f(builtIns, "builtIns");
        String str = la.c.f9598a;
        lb.b bVarF = la.c.f(cVar);
        if (bVarF != null) {
            return builtIns.j(bVarF.b());
        }
        return null;
    }

    public static final boolean o(String method) {
        kotlin.jvm.internal.h.f(method, "method");
        return (kotlin.jvm.internal.h.a(method, ShareTarget.METHOD_GET) || kotlin.jvm.internal.h.a(method, "HEAD")) ? false : true;
    }

    public static final void p(ServicePageActivity servicePageActivity) {
        kotlin.jvm.internal.h.f(servicePageActivity, "<this>");
        String[] strArr = w;
        if (td.a.a(servicePageActivity, (String[]) Arrays.copyOf(strArr, 2))) {
            servicePageActivity.C();
        } else {
            ActivityCompat.requestPermissions(servicePageActivity, strArr, 8);
        }
    }

    public static int q(v.e resolveColor, Integer num, v.d dVar, int r52) {
        if ((r52 & 2) != 0) {
            num = null;
        }
        if ((r52 & 4) != 0) {
            dVar = null;
        }
        kotlin.jvm.internal.h.g(resolveColor, "$this$resolveColor");
        Context context = resolveColor.f18183l;
        kotlin.jvm.internal.h.g(context, "context");
        if (num == null) {
            return ContextCompat.getColor(context, 0);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{num.intValue()});
        try {
            int color = typedArrayObtainStyledAttributes.getColor(0, 0);
            if (color == 0 && dVar != null) {
                color = ((Number) dVar.invoke()).intValue();
            }
            return color;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().m());
    }

    @Override // rc.m
    public List b(String hostname) throws UnknownHostException {
        kotlin.jvm.internal.h.f(hostname, "hostname");
        try {
            InetAddress[] allByName = InetAddress.getAllByName(hostname);
            kotlin.jvm.internal.h.e(allByName, "InetAddress.getAllByName(hostname)");
            return m9.k.A0(allByName);
        } catch (NullPointerException e10) {
            UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(hostname));
            unknownHostException.initCause(e10);
            throw unknownHostException;
        }
    }

    @Override // s4.ca
    public Object c(Object obj) {
        return new a.d((l9) obj);
    }

    @Override // kc.a.c
    public Iterable d(Object obj) {
        int r02 = x.f20014p;
        Collection<cc.e0> collectionL = ((e) obj).i().l();
        kotlin.jvm.internal.h.e(collectionL, "it.typeConstructor.supertypes");
        return new lc.s(w.a1(m9.t.U0(collectionL), v.f20010a));
    }

    @Override // o3.k
    public void e(a.e eVar, Object obj) throws RemoteException {
        q qVar = (q) eVar;
        h5.l lVar = (h5.l) obj;
        w4.b bVar = new w4.b(LocationRequestCompat.PASSIVE_INTERVAL, 0, false, null, null);
        qVar.getClass();
        boolean zF = qVar.F(w4.h.f18700b);
        m0 m0Var = (m0) qVar.w();
        if (zF) {
            m0Var.g0(bVar, new m4.i(lVar));
        } else {
            lVar.b(m0Var.d());
        }
    }

    @Override // c5.d
    public String f(String str, String str2) {
        return null;
    }

    @Override // l7.j
    public Object h() {
        return new ArrayDeque();
    }

    @Override // c6.h
    public Object i(y yVar) {
        return new z7.c((v7.h) yVar.a(v7.h.class));
    }
}
