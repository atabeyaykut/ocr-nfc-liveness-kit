package x5;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.Fragment;
import bc.k;
import c5.e5;
import c5.p2;
import c5.q2;
import c5.r2;
import c5.w;
import c6.h;
import c6.y;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import com.google.android.gms.internal.clearcut.z;
import com.google.android.gms.internal.measurement.g8;
import com.google.android.gms.internal.measurement.h8;
import com.google.android.gms.internal.measurement.j;
import com.google.android.gms.internal.measurement.p;
import com.google.android.gms.internal.measurement.q9;
import com.google.android.gms.internal.measurement.s3;
import com.google.android.gms.internal.measurement.t;
import com.google.android.gms.internal.measurement.w5;
import com.google.android.gms.internal.vision.p0;
import com.google.mlkit.vision.common.internal.MobileVisionBase;
import e.g;
import h5.f;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlinx.coroutines.internal.u;
import l9.m;
import m9.x;
import n4.i;
import nc.b1;
import nc.i0;
import nc.r;
import nc.z1;
import rc.b0;
import rc.e0;
import s4.ea;
import v7.o;
import x9.l;

/* loaded from: classes2.dex */
public class a implements f, k, p2, rc.b, h {

    /* renamed from: g, reason: collision with root package name */
    public static e.f f19154g;

    /* renamed from: h, reason: collision with root package name */
    public static z f19155h;

    /* renamed from: m, reason: collision with root package name */
    public static i f19159m;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ a f19149a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final a f19150b = new a();

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ a f19151c = new a();

    /* renamed from: d, reason: collision with root package name */
    public static final g8 f19152d = new g8();

    /* renamed from: e, reason: collision with root package name */
    public static final h8 f19153e = new h8();
    public static final a f = new a();

    /* renamed from: j, reason: collision with root package name */
    public static final u f19156j = new u("NONE");

    /* renamed from: k, reason: collision with root package name */
    public static final u f19157k = new u("PENDING");

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ a f19158l = new a();

    public static boolean A(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int B(int r12) {
        return (-(r12 & 1)) ^ (r12 >>> 1);
    }

    public static String C(int r12) {
        if (r12 == 100) {
            return "HIGH_ACCURACY";
        }
        if (r12 == 102) {
            return "BALANCED_POWER_ACCURACY";
        }
        if (r12 == 104) {
            return "LOW_POWER";
        }
        if (r12 == 105) {
            return "PASSIVE";
        }
        throw new IllegalArgumentException();
    }

    public static boolean D(String str) {
        int r02 = ea.f14968a;
        return str == null || str.isEmpty();
    }

    public static long E(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static final Object c(Fragment _fragmentArgsProvider) {
        kotlin.jvm.internal.h.f(_fragmentArgsProvider, "$this$_fragmentArgsProvider");
        Bundle arguments = _fragmentArgsProvider.getArguments();
        if (arguments != null) {
            return arguments.get("mavericks:arg");
        }
        return null;
    }

    public static final void d(p9.f fVar, CancellationException cancellationException) {
        int r02 = b1.f10783d0;
        b1 b1Var = (b1) fVar.get(b1.b.f10784a);
        if (b1Var == null) {
            return;
        }
        b1Var.a(cancellationException);
    }

    public static final void f(Closeable closeable, Throwable th2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (closeable != null) {
            if (th2 == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th3) {
                b8.f.k(th2, th3);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String g(ma.e r3, eb.z r4) {
        /*
            java.lang.String r0 = "klass"
            kotlin.jvm.internal.h.f(r3, r0)
            java.lang.String r0 = "typeMappingConfiguration"
            kotlin.jvm.internal.h.f(r4, r0)
            r4.d(r3)
            ma.j r0 = r3.b()
            java.lang.String r1 = "klass.containingDeclaration"
            kotlin.jvm.internal.h.e(r0, r1)
            lb.f r1 = r3.getName()
            if (r1 == 0) goto L23
            lb.f r2 = lb.h.f9679a
            boolean r2 = r1.f9677b
            if (r2 != 0) goto L23
            goto L25
        L23:
            lb.f r1 = lb.h.f9681c
        L25:
            java.lang.String r1 = r1.q()
            java.lang.String r2 = "safeIdentifier(klass.name).identifier"
            kotlin.jvm.internal.h.e(r1, r2)
            boolean r2 = r0 instanceof ma.e0
            if (r2 == 0) goto L5e
            ma.e0 r0 = (ma.e0) r0
            lb.c r3 = r0.d()
            boolean r4 = r3.d()
            if (r4 == 0) goto L3f
            goto L5d
        L3f:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r3 = r3.b()
            r0 = 46
            r2 = 47
            java.lang.String r3 = mc.j.B(r3, r0, r2)
            r4.append(r3)
            r4.append(r2)
            r4.append(r1)
            java.lang.String r1 = r4.toString()
        L5d:
            return r1
        L5e:
            boolean r2 = r0 instanceof ma.e
            if (r2 == 0) goto L66
            r2 = r0
            ma.e r2 = (ma.e) r2
            goto L67
        L66:
            r2 = 0
        L67:
            if (r2 == 0) goto L85
            r4.e(r2)
            java.lang.String r3 = g(r2, r4)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r3)
            r3 = 36
            r4.append(r3)
            r4.append(r1)
            java.lang.String r3 = r4.toString()
            return r3
        L85:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Unexpected container: "
            r1.<init>(r2)
            r1.append(r0)
            java.lang.String r0 = " for "
            r1.append(r0)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            r4.<init>(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: x5.a.g(ma.e, eb.z):java.lang.String");
    }

    public static final void h(p9.f fVar) {
        b1 b1Var = (b1) fVar.get(b1.b.f10784a);
        if (b1Var != null && !b1Var.b()) {
            throw b1Var.n();
        }
    }

    public static final DialogActionButton j(v.e getActionButton, int r22) {
        DialogActionButton[] actionButtons;
        kotlin.jvm.internal.h.g(getActionButton, "$this$getActionButton");
        androidx.appcompat.graphics.drawable.a.j(r22, "which");
        DialogActionButtonLayout buttonsLayout = getActionButton.f.getButtonsLayout();
        if (buttonsLayout != null && (actionButtons = buttonsLayout.getActionButtons()) != null) {
            if (r22 == 0) {
                throw null;
            }
            DialogActionButton dialogActionButton = actionButtons[r22 - 1];
            if (dialogActionButton != null) {
                return dialogActionButton;
            }
        }
        throw new IllegalStateException("The dialog does not have an attached buttons layout.");
    }

    public static final b1 k(p9.f fVar) {
        int r02 = b1.f10783d0;
        b1 b1Var = (b1) fVar.get(b1.b.f10784a);
        if (b1Var != null) {
            return b1Var;
        }
        throw new IllegalStateException(kotlin.jvm.internal.h.k(fVar, "Current context doesn't contain Job in it: ").toString());
    }

    public static final e.f l(Context context) {
        e.f fVar;
        e.f fVar2 = f19154g;
        if (fVar2 != null) {
            return fVar2;
        }
        synchronized (f) {
            fVar = f19154g;
            if (fVar == null) {
                Object applicationContext = context.getApplicationContext();
                e.f fVarA = null;
                g gVar = applicationContext instanceof g ? (g) applicationContext : null;
                if (gVar != null) {
                    fVarA = gVar.a();
                }
                if (fVarA == null) {
                    fVarA = b8.f.u(context);
                }
                f19154g = fVarA;
                fVar = fVarA;
            }
        }
        return fVar;
    }

    public static final boolean m(q.e eVar) {
        return kotlin.jvm.internal.h.a(eVar, q.e.f13260c);
    }

    public static final boolean n(Throwable th2) {
        Class<?> superclass = th2.getClass();
        while (!kotlin.jvm.internal.h.a(superclass.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0194  */
    /* JADX WARN: Type inference failed for: r5v32, types: [eb.o] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object o(cc.e0 r22, eb.a0 r23, x9.q r24) {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x5.a.o(cc.e0, eb.a0, x9.q):java.lang.Object");
    }

    public static final Object p(Object obj) {
        return obj instanceof r ? w.j(((r) obj).f10837a) : obj;
    }

    public static final void q(i0 i0Var, p9.d dVar, boolean z10) {
        Object objH = i0Var.h();
        Throwable thC = i0Var.c(objH);
        Object objJ = thC != null ? w.j(thC) : i0Var.e(objH);
        if (!z10) {
            dVar.resumeWith(objJ);
            return;
        }
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) dVar;
        p9.d<T> dVar2 = gVar.f9141e;
        p9.f context = dVar2.getContext();
        Object objC = kotlinx.coroutines.internal.w.c(context, gVar.f9142g);
        z1<?> z1VarC = objC != kotlinx.coroutines.internal.w.f9178a ? nc.w.c(dVar2, context, objC) : null;
        try {
            gVar.f9141e.resumeWith(objJ);
            m mVar = m.f9594a;
        } finally {
            if (z1VarC == null || z1VarC.m0()) {
                kotlinx.coroutines.internal.w.a(context, objC);
            }
        }
    }

    public static final Set r(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        kotlin.jvm.internal.h.e(setSingleton, "singleton(element)");
        return setSingleton;
    }

    public static final Set s(Object... objArr) {
        return objArr.length > 0 ? m9.k.C0(objArr) : x.f10175a;
    }

    public static final Class t(ClassLoader classLoader, String fqName) {
        kotlin.jvm.internal.h.f(classLoader, "<this>");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        try {
            return Class.forName(fqName, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static final Object u(r0.z viewModel1, l block) {
        kotlin.jvm.internal.h.f(viewModel1, "viewModel1");
        kotlin.jvm.internal.h.f(block, "block");
        return block.invoke(viewModel1.f13884d.c());
    }

    public static p v(com.google.android.gms.internal.measurement.l lVar, t tVar, s3 s3Var, ArrayList arrayList) {
        String str = tVar.f3766a;
        if (lVar.m(str)) {
            p pVarX = lVar.x(str);
            if (pVarX instanceof j) {
                return ((j) pVarX).a(s3Var, arrayList);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", str));
        }
        if (!"hasOwnProperty".equals(str)) {
            throw new IllegalArgumentException(String.format("Object has no function %s", str));
        }
        w.b0("hasOwnProperty", 1, arrayList);
        return lVar.m(s3Var.b((p) arrayList.get(0)).h()) ? p.S : p.U;
    }

    public static String w(p0 p0Var) {
        String str;
        w5 w5Var = new w5(p0Var);
        StringBuilder sb2 = new StringBuilder(p0Var.x());
        int r52 = 0;
        while (true) {
            Object obj = w5Var.f3816a;
            if (r52 >= ((p0) obj).x()) {
                return sb2.toString();
            }
            int r22 = ((p0) obj).h(r52);
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

    public static String x(String str, Object... objArr) {
        int length;
        int length2;
        int r42;
        String string;
        int r02 = 0;
        int r12 = 0;
        while (true) {
            length = objArr.length;
            if (r12 >= length) {
                break;
            }
            Object obj = objArr[r12];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e10) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String string2 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e10);
                    String name2 = e10.getClass().getName();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(string2).length() + 9 + name2.length());
                    sb3.append("<");
                    sb3.append(string2);
                    sb3.append(" threw ");
                    sb3.append(name2);
                    sb3.append(">");
                    string = sb3.toString();
                }
            }
            objArr[r12] = string;
            r12++;
        }
        StringBuilder sb4 = new StringBuilder((length * 16) + str.length());
        int r22 = 0;
        while (true) {
            length2 = objArr.length;
            if (r02 >= length2 || (r42 = str.indexOf("%s", r22)) == -1) {
                break;
            }
            sb4.append((CharSequence) str, r22, r42);
            sb4.append(objArr[r02]);
            r22 = r42 + 2;
            r02++;
        }
        sb4.append((CharSequence) str, r22, str.length());
        if (r02 < length2) {
            sb4.append(" [");
            sb4.append(objArr[r02]);
            for (int r11 = r02 + 1; r11 < objArr.length; r11++) {
                sb4.append(", ");
                sb4.append(objArr[r11]);
            }
            sb4.append(']');
        }
        return sb4.toString();
    }

    public static void y(int r32) {
        boolean z10;
        if (r32 == 100 || r32 == 102 || r32 == 104) {
            z10 = true;
        } else if (r32 == 105) {
            r32 = 105;
            z10 = true;
        } else {
            z10 = false;
        }
        r3.r.c(z10, "priority %d must be a Priority.PRIORITY_* constant", Integer.valueOf(r32));
    }

    public static String z(String str, Object... objArr) {
        int length;
        int length2;
        int r42;
        String string;
        int r02 = 0;
        int r12 = 0;
        while (true) {
            length = objArr.length;
            if (r12 >= length) {
                break;
            }
            Object obj = objArr[r12];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e10) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String string2 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e10);
                    String name2 = e10.getClass().getName();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(string2).length() + 9 + name2.length());
                    sb3.append("<");
                    sb3.append(string2);
                    sb3.append(" threw ");
                    sb3.append(name2);
                    sb3.append(">");
                    string = sb3.toString();
                }
            }
            objArr[r12] = string;
            r12++;
        }
        StringBuilder sb4 = new StringBuilder((length * 16) + str.length());
        int r22 = 0;
        while (true) {
            length2 = objArr.length;
            if (r02 >= length2 || (r42 = str.indexOf("%s", r22)) == -1) {
                break;
            }
            sb4.append((CharSequence) str, r22, r42);
            sb4.append(objArr[r02]);
            r22 = r42 + 2;
            r02++;
        }
        sb4.append((CharSequence) str, r22, str.length());
        if (r02 < length2) {
            sb4.append(" [");
            sb4.append(objArr[r02]);
            for (int r11 = r02 + 1; r11 < objArr.length; r11++) {
                sb4.append(", ");
                sb4.append(objArr[r11]);
            }
            sb4.append(']');
        }
        return sb4.toString();
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().o());
    }

    @Override // rc.b
    public void b(e0 e0Var, b0 response) {
        kotlin.jvm.internal.h.f(response, "response");
    }

    @Override // h5.f
    public void e(Exception exc) {
        r3.j jVar = MobileVisionBase.f4431e;
        if (Log.isLoggable(jVar.f13999a, 6)) {
            String str = jVar.f14000b;
            Log.e("MobileVisionBase", str != null ? str.concat("Error preloading model resource") : "Error preloading model resource", exc);
        }
    }

    @Override // c6.h
    public Object i(y yVar) {
        v7.a aVar = new v7.a();
        ReferenceQueue<Object> referenceQueue = aVar.f18259a;
        Set<o> set = aVar.f18260b;
        set.add(new o(aVar, referenceQueue, set));
        Thread thread = new Thread(new e5(referenceQueue, set), "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return aVar;
    }

    @Override // bc.k
    public void lock() {
    }

    @Override // bc.k
    public void unlock() {
    }
}
