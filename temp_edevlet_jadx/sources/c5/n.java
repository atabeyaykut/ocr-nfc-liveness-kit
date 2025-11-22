package c5;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final String f1756a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1757b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1758c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1759d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1760e;
    public final q f;

    public n(i4 i4Var, String str, String str2, String str3, long j10, long j11, q qVar) {
        r3.r.f(str2);
        r3.r.f(str3);
        r3.r.i(qVar);
        this.f1756a = str2;
        this.f1757b = str3;
        this.f1758c = true == TextUtils.isEmpty(str) ? null : str;
        this.f1759d = j10;
        this.f1760e = j11;
        if (j11 != 0 && j11 > j10) {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f1508j.c(e3.q(str2), "Event created with reverse previous/current timestamps. appId, name", e3.q(str3));
        }
        this.f = qVar;
    }

    public final n a(i4 i4Var, long j10) {
        return new n(i4Var, this.f1758c, this.f1756a, this.f1757b, this.f1759d, j10, this.f);
    }

    public final String toString() {
        String string = this.f.toString();
        String str = this.f1756a;
        int length = String.valueOf(str).length();
        String str2 = this.f1757b;
        StringBuilder sb2 = new StringBuilder(string.length() + length + 33 + String.valueOf(str2).length());
        sb2.append("Event{appId='");
        sb2.append(str);
        sb2.append("', name='");
        sb2.append(str2);
        sb2.append("', params=");
        sb2.append(string);
        sb2.append('}');
        return sb2.toString();
    }

    public n(i4 i4Var, String str, String str2, String str3, long j10, Bundle bundle) {
        q qVar;
        r3.r.f(str2);
        r3.r.f(str3);
        this.f1756a = str2;
        this.f1757b = str3;
        this.f1758c = true == TextUtils.isEmpty(str) ? null : str;
        this.f1759d = j10;
        this.f1760e = 0L;
        if (bundle.isEmpty()) {
            qVar = new q(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    e3 e3Var = i4Var.f1635j;
                    i4.e(e3Var);
                    e3Var.f.a("Param name can't be null");
                } else {
                    v7 v7Var = i4Var.f1638m;
                    i4.c(v7Var);
                    Object objG = v7Var.g(bundle2.get(next), next);
                    if (objG == null) {
                        e3 e3Var2 = i4Var.f1635j;
                        i4.e(e3Var2);
                        e3Var2.f1508j.b(i4Var.f1639n.e(next), "Param value can't be null");
                    } else {
                        v7 v7Var2 = i4Var.f1638m;
                        i4.c(v7Var2);
                        v7Var2.x(bundle2, next, objG);
                    }
                }
                it.remove();
            }
            qVar = new q(bundle2);
        }
        this.f = qVar;
    }
}
