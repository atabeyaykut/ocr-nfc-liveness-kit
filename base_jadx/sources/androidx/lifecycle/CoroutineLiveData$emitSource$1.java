package androidx.lifecycle;

import kotlin.Metadata;

@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
@r9.e(c = "androidx.lifecycle.CoroutineLiveData", f = "CoroutineLiveData.kt", l = {229, 230}, m = "emitSource$lifecycle_livedata_ktx_release")
/* loaded from: classes.dex */
public final class CoroutineLiveData$emitSource$1 extends r9.c {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CoroutineLiveData<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineLiveData$emitSource$1(CoroutineLiveData<T> coroutineLiveData, p9.d<? super CoroutineLiveData$emitSource$1> dVar) {
        super(dVar);
        this.this$0 = coroutineLiveData;
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emitSource$lifecycle_livedata_ktx_release(null, this);
    }
}
