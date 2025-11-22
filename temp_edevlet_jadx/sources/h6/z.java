package h6;

import android.content.Context;
import com.google.android.gms.internal.measurement.s3;
import j6.a0;
import j6.n;
import j6.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import s4.a9;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f6992e;
    public static final String f;

    /* renamed from: a, reason: collision with root package name */
    public final Context f6993a;

    /* renamed from: b, reason: collision with root package name */
    public final g0 f6994b;

    /* renamed from: c, reason: collision with root package name */
    public final a f6995c;

    /* renamed from: d, reason: collision with root package name */
    public final q6.b f6996d;

    static {
        HashMap map = new HashMap();
        f6992e = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        f = String.format(Locale.US, "Crashlytics Android SDK/%s", "18.2.6");
    }

    public z(Context context, g0 g0Var, a aVar, a9 a9Var) {
        this.f6993a = context;
        this.f6994b = g0Var;
        this.f6995c = aVar;
        this.f6996d = a9Var;
    }

    public static j6.o c(s3 s3Var, int r82) {
        String str = (String) s3Var.f3733b;
        String str2 = (String) s3Var.f3732a;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) s3Var.f3734c;
        int r12 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        s3 s3Var2 = (s3) s3Var.f3735d;
        if (r82 >= 8) {
            s3 s3Var3 = s3Var2;
            while (s3Var3 != null) {
                s3Var3 = (s3) s3Var3.f3735d;
                r12++;
            }
        }
        if (str == null) {
            throw new NullPointerException("Null type");
        }
        j6.b0 b0Var = new j6.b0(d(stackTraceElementArr, 4));
        Integer numValueOf = Integer.valueOf(r12);
        j6.o oVarC = null;
        if (s3Var2 != null && r12 == 0) {
            oVarC = c(s3Var2, r82 + 1);
        }
        String strF = numValueOf == null ? android.support.v4.media.a.f("", " overflowCount") : "";
        if (strF.isEmpty()) {
            return new j6.o(str, str2, b0Var, oVarC, numValueOf.intValue());
        }
        throw new IllegalStateException("Missing required properties:".concat(strF));
    }

    public static j6.b0 d(StackTraceElement[] stackTraceElementArr, int r13) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            r.a aVar = new r.a();
            aVar.f8246e = Integer.valueOf(r13);
            long lineNumber = 0;
            long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                lineNumber = stackTraceElement.getLineNumber();
            }
            aVar.f8242a = Long.valueOf(jMax);
            if (str == null) {
                throw new NullPointerException("Null symbol");
            }
            aVar.f8243b = str;
            aVar.f8244c = fileName;
            aVar.f8245d = Long.valueOf(lineNumber);
            arrayList.add(aVar.a());
        }
        return new j6.b0(arrayList);
    }

    public static j6.q e(Thread thread, StackTraceElement[] stackTraceElementArr, int r42) {
        String name = thread.getName();
        if (name == null) {
            throw new NullPointerException("Null name");
        }
        Integer numValueOf = Integer.valueOf(r42);
        j6.b0 b0Var = new j6.b0(d(stackTraceElementArr, r42));
        String strConcat = numValueOf == null ? "".concat(" importance") : "";
        if (strConcat.isEmpty()) {
            return new j6.q(name, numValueOf.intValue(), b0Var);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    public final j6.b0<a0.e.d.a.b.AbstractC0138a> a() {
        a0.e.d.a.b.AbstractC0138a[] abstractC0138aArr = new a0.e.d.a.b.AbstractC0138a[1];
        n.a aVar = new n.a();
        aVar.f8222a = 0L;
        aVar.f8223b = 0L;
        a aVar2 = this.f6995c;
        String str = aVar2.f6880d;
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        aVar.f8224c = str;
        aVar.f8225d = aVar2.f6878b;
        abstractC0138aArr[0] = aVar.a();
        return new j6.b0<>(Arrays.asList(abstractC0138aArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j6.s b(int r14) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.z.b(int):j6.s");
    }
}
