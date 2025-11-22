package androidx.work;

import kotlin.Metadata;
import kotlin.jvm.internal.j;
import l9.m;
import m5.a;
import x9.l;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"R", "", "it", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ListenableFutureKt$await$2$2 extends j implements l<Throwable, m> {
    final /* synthetic */ a<R> $this_await;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListenableFutureKt$await$2$2(a<R> aVar) {
        super(1);
        this.$this_await = aVar;
    }

    @Override // x9.l
    public /* bridge */ /* synthetic */ m invoke(Throwable th2) {
        invoke2(th2);
        return m.f9594a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th2) {
        this.$this_await.cancel(false);
    }
}
