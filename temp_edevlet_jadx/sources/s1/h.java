package s1;

import androidx.recyclerview.widget.AsyncListDiffer;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class h extends j implements x9.a<AsyncListDiffer<d2.b>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f14852a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar) {
        super(0);
        this.f14852a = gVar;
    }

    @Override // x9.a
    public final AsyncListDiffer<d2.b> invoke() {
        return new AsyncListDiffer<>(this.f14852a, new b2.b(0));
    }
}
