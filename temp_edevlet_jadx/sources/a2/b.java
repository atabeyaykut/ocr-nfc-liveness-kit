package a2;

import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.TextView;
import c5.p2;
import c5.q2;
import c5.r2;
import c5.w;
import c6.h;
import c8.a;
import com.google.android.gms.internal.measurement.q9;
import ja.k;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kc.a;
import kotlinx.coroutines.internal.u;
import l7.j;
import l9.l;
import l9.m;
import m9.t;
import ma.a1;
import mc.n;
import nc.b1;
import nc.n0;
import nc.r;
import nc.s;
import nc.w1;
import nc.y;
import nc.z1;
import o.f;
import p9.d;
import s4.ca;
import s4.n9;
import v.e;
import va.g;

/* loaded from: classes.dex */
public final class b implements p2, ca, j, f, q6.b, a.c, h {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ b f37a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ b f38b = new b();

    /* renamed from: c, reason: collision with root package name */
    public static final u f39c = new u("UNDEFINED");

    /* renamed from: d, reason: collision with root package name */
    public static final u f40d = new u("REUSABLE_CLAIMED");

    /* renamed from: e, reason: collision with root package name */
    public static final u f41e = new u("UNLOCK_FAIL");
    public static final u f;

    /* renamed from: g, reason: collision with root package name */
    public static final u f42g;

    /* renamed from: h, reason: collision with root package name */
    public static final kotlinx.coroutines.sync.b f43h;

    /* renamed from: j, reason: collision with root package name */
    public static final kotlinx.coroutines.sync.b f44j;

    /* renamed from: k, reason: collision with root package name */
    public static final u f45k;

    /* renamed from: l, reason: collision with root package name */
    public static final b f46l;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ b f47m;

    static {
        u uVar = new u("LOCKED");
        f = uVar;
        u uVar2 = new u("UNLOCKED");
        f42g = uVar2;
        f43h = new kotlinx.coroutines.sync.b(uVar);
        f44j = new kotlinx.coroutines.sync.b(uVar2);
        f45k = new u("NULL");
        f46l = new b();
        f47m = new b();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(kotlinx.coroutines.flow.i0 r4, x9.q r5, java.lang.Throwable r6, p9.d r7) throws java.lang.Throwable {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.l
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.l r0 = (kotlinx.coroutines.flow.l) r0
            int r1 = r0.f9079c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9079c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.l r0 = new kotlinx.coroutines.flow.l
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f9078b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9079c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            java.lang.Throwable r6 = r0.f9077a
            c5.w.F(r7)     // Catch: java.lang.Throwable -> L42
            goto L3f
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            c5.w.F(r7)
            r0.f9077a = r6     // Catch: java.lang.Throwable -> L42
            r0.f9079c = r3     // Catch: java.lang.Throwable -> L42
            java.lang.Object r4 = r5.i(r4, r6, r0)     // Catch: java.lang.Throwable -> L42
            if (r4 != r1) goto L3f
            goto L41
        L3f:
            l9.m r1 = l9.m.f9594a
        L41:
            return r1
        L42:
            r4 = move-exception
            if (r6 == 0) goto L4a
            if (r6 == r4) goto L4a
            b8.f.k(r4, r6)
        L4a:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.b.f(kotlinx.coroutines.flow.i0, x9.q, java.lang.Throwable, p9.d):java.lang.Object");
    }

    public static String g(String str) {
        String extension = MimeTypeMap.getFileExtensionFromUrl(str);
        if (!TextUtils.isEmpty(extension)) {
            kotlin.jvm.internal.h.e(extension, "extension");
            return extension;
        }
        if (!n.G(str, ".", false)) {
            return "";
        }
        String strSubstring = str.substring(n.Q(str, ".", 6) + 1, str.length());
        kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static boolean j(ma.b callableMemberDescriptor) {
        kotlin.jvm.internal.h.f(callableMemberDescriptor, "callableMemberDescriptor");
        if (!g.f18346d.contains(callableMemberDescriptor.getName())) {
            return false;
        }
        if (!t.V0(g.f18345c, sb.b.c(callableMemberDescriptor)) || !callableMemberDescriptor.g().isEmpty()) {
            if (!k.z(callableMemberDescriptor)) {
                return false;
            }
            Collection<? extends ma.b> overriddenDescriptors = callableMemberDescriptor.e();
            kotlin.jvm.internal.h.e(overriddenDescriptors, "overriddenDescriptors");
            Collection<? extends ma.b> collection = overriddenDescriptors;
            if (collection.isEmpty()) {
                return false;
            }
            for (ma.b it : collection) {
                kotlin.jvm.internal.h.e(it, "it");
                if (j(it)) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean k(d2.b image) {
        kotlin.jvm.internal.h.f(image, "image");
        String str = image.f4651c;
        String strG = g(str);
        String strGuessContentTypeFromName = TextUtils.isEmpty(strG) ? URLConnection.guessContentTypeFromName(str) : MimeTypeMap.getSingleton().getMimeTypeFromExtension(strG);
        return strGuessContentTypeFromName != null && mc.j.D(strGuessContentTypeFromName, "video", false);
    }

    public static void l(e eVar, TextView textView, Integer num, CharSequence charSequence, int r72, Typeface typeface, Integer num2, int r10) {
        if ((r10 & 2) != 0) {
            num = null;
        }
        if ((r10 & 4) != 0) {
            charSequence = null;
        }
        if ((r10 & 8) != 0) {
            r72 = 0;
        }
        if ((r10 & 32) != 0) {
            num2 = null;
        }
        kotlin.jvm.internal.h.g(textView, "textView");
        if (charSequence == null) {
            charSequence = b0.c.d(eVar, num, Integer.valueOf(r72), 8);
        }
        if (charSequence == null) {
            textView.setVisibility(8);
            return;
        }
        Object parent = textView.getParent();
        if (parent == null) {
            throw new l("null cannot be cast to non-null type android.view.View");
        }
        ((View) parent).setVisibility(0);
        textView.setVisibility(0);
        textView.setText(charSequence);
        if (typeface != null) {
            textView.setTypeface(typeface);
        }
        b0.c.b(textView, eVar.f18183l, num2);
    }

    /* JADX WARN: Finally extract failed */
    public static final void m(d dVar, Object obj, x9.l lVar) {
        if (!(dVar instanceof kotlinx.coroutines.internal.g)) {
            dVar.resumeWith(obj);
            return;
        }
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) dVar;
        Throwable thA = l9.h.a(obj);
        boolean z10 = false;
        Object sVar = thA == null ? lVar != null ? new s(lVar, obj) : obj : new r(false, thA);
        d<T> dVar2 = gVar.f9141e;
        p9.f context = gVar.getContext();
        y yVar = gVar.f9140d;
        if (yVar.isDispatchNeeded(context)) {
            gVar.f = sVar;
            gVar.f10802c = 1;
            yVar.dispatch(gVar.getContext(), gVar);
            return;
        }
        n0 n0VarA = w1.a();
        if (n0VarA.k()) {
            gVar.f = sVar;
            gVar.f10802c = 1;
            n0VarA.g(gVar);
            return;
        }
        n0VarA.j(true);
        try {
            b1 b1Var = (b1) gVar.getContext().get(b1.b.f10784a);
            if (b1Var != null && !b1Var.b()) {
                CancellationException cancellationExceptionN = b1Var.n();
                gVar.a(sVar, cancellationExceptionN);
                gVar.resumeWith(w.j(cancellationExceptionN));
                z10 = true;
            }
            if (!z10) {
                Object obj2 = gVar.f9142g;
                p9.f context2 = dVar2.getContext();
                Object objC = kotlinx.coroutines.internal.w.c(context2, obj2);
                z1<?> z1VarC = objC != kotlinx.coroutines.internal.w.f9178a ? nc.w.c(dVar2, context2, objC) : null;
                try {
                    dVar2.resumeWith(obj);
                    m mVar = m.f9594a;
                    if (z1VarC == null || z1VarC.m0()) {
                        kotlinx.coroutines.internal.w.a(context2, objC);
                    }
                } catch (Throwable th2) {
                    if (z1VarC == null || z1VarC.m0()) {
                        kotlinx.coroutines.internal.w.a(context2, objC);
                    }
                    throw th2;
                }
            }
            while (n0VarA.m()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().h());
    }

    @Override // o.f
    public boolean b() {
        return true;
    }

    @Override // s4.ca
    public Object c(Object obj) {
        return new a.C0053a((n9) obj);
    }

    @Override // kc.a.c
    public Iterable d(Object obj) {
        int r02 = sb.b.f15372a;
        Collection<a1> collectionE = ((a1) obj).e();
        ArrayList arrayList = new ArrayList(m9.n.Q0(collectionE));
        Iterator<T> it = collectionE.iterator();
        while (it.hasNext()) {
            arrayList.add(((a1) it.next()).a());
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054  */
    @Override // q6.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.StackTraceElement[] e(java.lang.StackTraceElement[] r15) {
        /*
            r14 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            int r1 = r15.length
            java.lang.StackTraceElement[] r1 = new java.lang.StackTraceElement[r1]
            r2 = 0
            r3 = 1
            r4 = 0
            r5 = 0
            r6 = 1
        Ld:
            int r7 = r15.length
            if (r4 >= r7) goto L66
            r7 = r15[r4]
            java.lang.Object r8 = r0.get(r7)
            java.lang.Integer r8 = (java.lang.Integer) r8
            if (r8 == 0) goto L54
            int r9 = r8.intValue()
            int r10 = r4 - r9
            int r11 = r4 + r10
            int r12 = r15.length
            if (r11 <= r12) goto L26
            goto L37
        L26:
            r11 = 0
        L27:
            if (r11 >= r10) goto L3c
            int r12 = r9 + r11
            r12 = r15[r12]
            int r13 = r4 + r11
            r13 = r15[r13]
            boolean r12 = r12.equals(r13)
            if (r12 != 0) goto L39
        L37:
            r9 = 0
            goto L3d
        L39:
            int r11 = r11 + 1
            goto L27
        L3c:
            r9 = 1
        L3d:
            if (r9 != 0) goto L40
            goto L54
        L40:
            int r8 = r8.intValue()
            int r8 = r4 - r8
            r9 = 10
            if (r6 >= r9) goto L50
            java.lang.System.arraycopy(r15, r4, r1, r5, r8)
            int r5 = r5 + r8
            int r6 = r6 + 1
        L50:
            int r8 = r8 + (-1)
            int r8 = r8 + r4
            goto L5c
        L54:
            r6 = r15[r4]
            r1[r5] = r6
            int r5 = r5 + 1
            r8 = r4
            r6 = 1
        L5c:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r0.put(r7, r4)
            int r4 = r8 + 1
            goto Ld
        L66:
            java.lang.StackTraceElement[] r0 = new java.lang.StackTraceElement[r5]
            java.lang.System.arraycopy(r1, r2, r0, r2, r5)
            int r1 = r15.length
            if (r5 >= r1) goto L6f
            return r0
        L6f:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.b.e(java.lang.StackTraceElement[]):java.lang.StackTraceElement[]");
    }

    @Override // l7.j
    public Object h() {
        return new ArrayList();
    }

    @Override // c6.h
    public Object i(c6.y yVar) {
        return new z7.b((z7.c) yVar.a(z7.c.class), (v7.d) yVar.a(v7.d.class));
    }

    @Override // o.f
    public void shutdown() {
    }
}
