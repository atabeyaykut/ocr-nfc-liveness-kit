package p4;

import androidx.annotation.NonNull;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class r1 implements u6.a<r1> {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12635a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f12636b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final q1 f12637c = q1.f12613a;

    @Override // u6.a
    @NonNull
    public final /* bridge */ /* synthetic */ u6.a a(@NonNull Class cls, @NonNull t6.d dVar) {
        this.f12635a.put(cls, dVar);
        this.f12636b.remove(cls);
        return this;
    }
}
