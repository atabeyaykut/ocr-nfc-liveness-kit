package l3;

import android.os.Bundle;
import android.util.Log;
import c5.g3;
import c5.o7;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.MissingFormatArgumentException;

/* loaded from: classes.dex */
public final /* synthetic */ class w implements h5.b, g3, id.c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9385a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9386b;

    public /* synthetic */ w(o7 o7Var, String str) {
        this.f9386b = o7Var;
        this.f9385a = str;
    }

    public /* synthetic */ w(Object obj, Object obj2) {
        this.f9385a = obj;
        this.f9386b = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0156 A[Catch: all -> 0x017b, TryCatch #4 {all -> 0x017b, blocks: (B:4:0x0011, B:5:0x0013, B:47:0x012b, B:52:0x016a, B:51:0x0156, B:12:0x0027, B:34:0x00c9, B:36:0x00de, B:38:0x00e4, B:40:0x00ef, B:39:0x00e8, B:44:0x00f6, B:45:0x00fe, B:46:0x00ff), top: B:64:0x0011, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // c5.g3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r9, int r10, java.lang.Throwable r11, byte[] r12, java.util.Map r13) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l3.w.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    @Override // id.c
    public final void b(String str, String str2, Object... objArr) {
        h(str2);
        Log.w(str, d(str2, Arrays.copyOf(objArr, objArr.length)));
    }

    @Override // h5.b
    public final Object c(h5.k kVar) {
        c cVar = (c) this.f9385a;
        Bundle bundle = (Bundle) this.f9386b;
        cVar.getClass();
        if (!kVar.m()) {
            return kVar;
        }
        Bundle bundle2 = (Bundle) kVar.i();
        return !(bundle2 != null && bundle2.containsKey("google.messenger")) ? kVar : cVar.a(bundle).n(y.f9389a, b8.f.f);
    }

    public final String d(String str, Object... args) {
        kotlin.jvm.internal.h.f(args, "args");
        try {
            if (args.length != 0 && str != null) {
                Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
                String str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
                kotlin.jvm.internal.h.e(str2, "format(format, *args)");
                return str2;
            }
            kotlin.jvm.internal.h.c(str);
            return str;
        } catch (MissingFormatArgumentException unused) {
            kotlin.jvm.internal.h.c(str);
            return str;
        }
    }

    @Override // id.c
    public final void e(Exception exc, String str, String str2, Object... objArr) {
        h(str2);
        Log.e(str, d(str2, Arrays.copyOf(objArr, objArr.length)), exc);
    }

    @Override // id.c
    public final void f(Exception exc, String str, String str2, Object... objArr) {
        h(str2);
        Log.w(str, d(str2, Arrays.copyOf(objArr, objArr.length)), exc);
    }

    @Override // id.c
    public final void g(String str, String str2, Object... objArr) {
        h(str2);
        Log.i(str, d(str2, Arrays.copyOf(objArr, objArr.length)));
    }

    public final void h(String str) {
        if (str == null || mc.n.N(str, "API", 0, false, 6) != 0) {
            return;
        }
        ((ArrayList) this.f9385a).add(((SimpleDateFormat) this.f9386b).format(new Date()) + " " + str);
    }

    @Override // id.c
    public final void j(String str, String str2, Object... objArr) {
        h(str2);
        Log.d(str, d(str2, Arrays.copyOf(objArr, objArr.length)));
    }

    @Override // id.c
    public final void l(String str, String str2, Object... objArr) {
        h(str2);
        Log.e(str, d(str2, Arrays.copyOf(objArr, objArr.length)));
    }
}
