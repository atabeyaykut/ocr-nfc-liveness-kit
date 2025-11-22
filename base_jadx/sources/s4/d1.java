package s4;

import androidx.annotation.NonNull;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class d1 implements u6.a<d1> {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f14948a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f14949b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final c1 f14950c = c1.f14937a;

    @Override // u6.a
    @NonNull
    public final /* bridge */ /* synthetic */ u6.a a(@NonNull Class cls, @NonNull t6.d dVar) {
        this.f14948a.put(cls, dVar);
        this.f14949b.remove(cls);
        return this;
    }
}
