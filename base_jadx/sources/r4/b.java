package r4;

import androidx.annotation.NonNull;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements u6.a<b> {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f14082a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f14083b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final a f14084c = a.f14066a;

    @Override // u6.a
    @NonNull
    public final /* bridge */ /* synthetic */ u6.a a(@NonNull Class cls, @NonNull t6.d dVar) {
        this.f14082a.put(cls, dVar);
        this.f14083b.remove(cls);
        return this;
    }
}
