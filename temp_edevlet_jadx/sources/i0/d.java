package i0;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.List;
import k0.m;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final List<m> f7219a;

    /* renamed from: b, reason: collision with root package name */
    public final char f7220b;

    /* renamed from: c, reason: collision with root package name */
    public final double f7221c;

    /* renamed from: d, reason: collision with root package name */
    public final String f7222d;

    /* renamed from: e, reason: collision with root package name */
    public final String f7223e;

    public d(ArrayList arrayList, char c10, double d10, String str, String str2) {
        this.f7219a = arrayList;
        this.f7220b = c10;
        this.f7221c = d10;
        this.f7222d = str;
        this.f7223e = str2;
    }

    public static int a(char c10, String str, String str2) {
        return str2.hashCode() + androidx.room.util.a.a(str, (c10 + 0) * 31, 31);
    }

    public final int hashCode() {
        return a(this.f7220b, this.f7223e, this.f7222d);
    }
}
