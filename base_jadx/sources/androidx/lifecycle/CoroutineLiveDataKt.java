package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import c5.v;
import c5.w;
import java.time.Duration;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.j0;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a1\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\\\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\t2*\b\u0001\u0010\u0010\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\\\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\b\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132*\b\u0001\u0010\u0010\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0015\"\u0014\u0010\u0016\u001a\u00020\t8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017*V\b\u0000\u0010\u0018\u001a\u0004\b\u0000\u0010\u0000\"$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b2$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MediatorLiveData;", "Landroidx/lifecycle/LiveData;", "source", "Landroidx/lifecycle/EmittedSource;", "addDisposableSource", "(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Lp9/d;)Ljava/lang/Object;", "Lp9/f;", "context", "", "timeoutInMs", "Lkotlin/Function2;", "Landroidx/lifecycle/LiveDataScope;", "Lp9/d;", "Ll9/m;", "", "block", "liveData", "(Lp9/f;JLx9/p;)Landroidx/lifecycle/LiveData;", "Ljava/time/Duration;", "timeout", "(Lp9/f;Ljava/time/Duration;Lx9/p;)Landroidx/lifecycle/LiveData;", "DEFAULT_TIMEOUT", "J", "Block", "lifecycle-livedata-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class CoroutineLiveDataKt {
    public static final long DEFAULT_TIMEOUT = 5000;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "Landroidx/lifecycle/EmittedSource;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2", f = "CoroutineLiveData.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2, reason: invalid class name */
    public static final class AnonymousClass2 extends i implements p<a0, p9.d<? super EmittedSource>, Object> {
        final /* synthetic */ LiveData<T> $source;
        final /* synthetic */ MediatorLiveData<T> $this_addDisposableSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MediatorLiveData<T> mediatorLiveData, LiveData<T> liveData, p9.d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$this_addDisposableSource = mediatorLiveData;
            this.$source = liveData;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new AnonymousClass2(this.$this_addDisposableSource, this.$source, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
        public final Object mo7invoke(a0 a0Var, p9.d<? super EmittedSource> dVar) {
            return ((AnonymousClass2) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
            final MediatorLiveData<T> mediatorLiveData = this.$this_addDisposableSource;
            mediatorLiveData.addSource(this.$source, new Observer() { // from class: androidx.lifecycle.a
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj2) {
                    mediatorLiveData.setValue(obj2);
                }
            });
            return new EmittedSource(this.$source, this.$this_addDisposableSource);
        }
    }

    public static final <T> Object addDisposableSource(MediatorLiveData<T> mediatorLiveData, LiveData<T> liveData, p9.d<? super EmittedSource> dVar) {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        return v.N(kotlinx.coroutines.internal.m.f9167a.d(), new AnonymousClass2(mediatorLiveData, liveData, null), dVar);
    }

    public static final <T> LiveData<T> liveData(p9.f context, long j10, p<? super LiveDataScope<T>, ? super p9.d<? super m>, ? extends Object> block) {
        kotlin.jvm.internal.h.f(context, "context");
        kotlin.jvm.internal.h.f(block, "block");
        return new CoroutineLiveData(context, j10, block);
    }

    @RequiresApi(26)
    public static final <T> LiveData<T> liveData(p9.f context, Duration timeout, p<? super LiveDataScope<T>, ? super p9.d<? super m>, ? extends Object> block) {
        kotlin.jvm.internal.h.f(context, "context");
        kotlin.jvm.internal.h.f(timeout, "timeout");
        kotlin.jvm.internal.h.f(block, "block");
        return new CoroutineLiveData(context, Api26Impl.INSTANCE.toMillis(timeout), block);
    }

    public static /* synthetic */ LiveData liveData$default(p9.f fVar, long j10, p pVar, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            fVar = p9.g.f12870a;
        }
        if ((r42 & 2) != 0) {
            j10 = DEFAULT_TIMEOUT;
        }
        return liveData(fVar, j10, pVar);
    }

    public static /* synthetic */ LiveData liveData$default(p9.f fVar, Duration duration, p pVar, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            fVar = p9.g.f12870a;
        }
        return liveData(fVar, duration, pVar);
    }
}
