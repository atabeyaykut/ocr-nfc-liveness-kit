package d0;

import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    public Map<String, List<l0.e>> f4522c;

    /* renamed from: d, reason: collision with root package name */
    public Map<String, n> f4523d;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, i0.c> f4524e;
    public List<i0.h> f;

    /* renamed from: g, reason: collision with root package name */
    public SparseArrayCompat<i0.d> f4525g;

    /* renamed from: h, reason: collision with root package name */
    public LongSparseArray<l0.e> f4526h;

    /* renamed from: i, reason: collision with root package name */
    public List<l0.e> f4527i;

    /* renamed from: j, reason: collision with root package name */
    public Rect f4528j;

    /* renamed from: k, reason: collision with root package name */
    public float f4529k;

    /* renamed from: l, reason: collision with root package name */
    public float f4530l;

    /* renamed from: m, reason: collision with root package name */
    public float f4531m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4532n;

    /* renamed from: a, reason: collision with root package name */
    public final u f4520a = new u();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet<String> f4521b = new HashSet<>();

    /* renamed from: o, reason: collision with root package name */
    public int f4533o = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void a(String str) {
        p0.c.b(str);
        this.f4521b.add(str);
    }

    public final float b() {
        return (long) (((this.f4530l - this.f4529k) / this.f4531m) * 1000.0f);
    }

    @Nullable
    public final i0.h c(String str) {
        int size = this.f.size();
        for (int r22 = 0; r22 < size; r22++) {
            i0.h hVar = this.f.get(r22);
            String str2 = hVar.f7229a;
            boolean z10 = true;
            if (!str2.equalsIgnoreCase(str) && (!str2.endsWith("\r") || !str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                z10 = false;
            }
            if (z10) {
                return hVar;
            }
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final l0.e d(long j10) {
        return this.f4526h.get(j10);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator<l0.e> it = this.f4527i.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().a("\t"));
        }
        return sb2.toString();
    }
}
