package kotlinx.coroutines.sync;

import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

/* loaded from: classes2.dex */
public final class e extends j implements l<Throwable, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f9251a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9252b = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar) {
        super(1);
        this.f9251a = dVar;
    }

    @Override // x9.l
    public final m invoke(Throwable th2) {
        this.f9251a.b(this.f9252b);
        return m.f9594a;
    }
}
