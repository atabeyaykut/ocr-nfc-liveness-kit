package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import c5.w;
import java.time.Duration;
import kotlin.Metadata;
import kotlinx.coroutines.flow.y;
import l9.m;
import nc.a0;
import r9.i;
import x9.p;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a2\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007\u001a\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0006\u001a0\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0007¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/f;", "Lp9/f;", "context", "", "timeoutInMs", "Landroidx/lifecycle/LiveData;", "asLiveData", "asFlow", "Ljava/time/Duration;", "timeout", "lifecycle-livedata-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class FlowLiveDataConversions {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/g;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", l = {97, 101, 102}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1, reason: invalid class name */
    public static final class AnonymousClass1<T> extends i implements p<kotlinx.coroutines.flow.g<? super T>, p9.d<? super m>, Object> {
        final /* synthetic */ LiveData<T> $this_asFlow;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @r9.e(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
        /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1, reason: invalid class name and collision with other inner class name */
        public static final class C00331 extends i implements p<a0, p9.d<? super m>, Object> {
            final /* synthetic */ Observer<T> $observer;
            final /* synthetic */ LiveData<T> $this_asFlow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00331(LiveData<T> liveData, Observer<T> observer, p9.d<? super C00331> dVar) {
                super(2, dVar);
                this.$this_asFlow = liveData;
                this.$observer = observer;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new C00331(this.$this_asFlow, this.$observer, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((C00331) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
                this.$this_asFlow.observeForever(this.$observer);
                return m.f9594a;
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lnc/a0;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @r9.e(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
        /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2, reason: invalid class name */
        public static final class AnonymousClass2 extends i implements p<a0, p9.d<? super m>, Object> {
            final /* synthetic */ Observer<T> $observer;
            final /* synthetic */ LiveData<T> $this_asFlow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(LiveData<T> liveData, Observer<T> observer, p9.d<? super AnonymousClass2> dVar) {
                super(2, dVar);
                this.$this_asFlow = liveData;
                this.$observer = observer;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new AnonymousClass2(this.$this_asFlow, this.$observer, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((AnonymousClass2) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
                this.$this_asFlow.removeObserver(this.$observer);
                return m.f9594a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LiveData<T> liveData, p9.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$this_asFlow = liveData;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_asFlow, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // x9.p
        /* renamed from: invoke, reason: merged with bridge method [inline-methods] */
        public final Object mo7invoke(kotlinx.coroutines.flow.g<? super T> gVar, p9.d<? super m> dVar) {
            return ((AnonymousClass1) create(gVar, dVar)).invokeSuspend(m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:27:0x009e A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00af A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #3 {all -> 0x00de, blocks: (B:29:0x00a7, B:31:0x00af), top: B:51:0x00a7 }] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v12 */
        /* JADX WARN: Type inference failed for: r6v22 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4, types: [androidx.lifecycle.Observer] */
        /* JADX WARN: Type inference failed for: r6v6 */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, kotlinx.coroutines.flow.g] */
        /* JADX WARN: Type inference failed for: r9v5 */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00c2 -> B:47:0x0090). Please report as a decompilation issue!!! */
        @Override // r9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.FlowLiveDataConversions.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveDataScope;", "Ll9/m;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @r9.e(c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", f = "FlowLiveData.kt", l = {75}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1, reason: invalid class name and case insensitive filesystem */
    public static final class C03441<T> extends i implements p<LiveDataScope<T>, p9.d<? super m>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.f<T> $this_asLiveData;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C03441(kotlinx.coroutines.flow.f<? extends T> fVar, p9.d<? super C03441> dVar) {
            super(2, dVar);
            this.$this_asLiveData = fVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            C03441 c03441 = new C03441(this.$this_asLiveData, dVar);
            c03441.L$0 = obj;
            return c03441;
        }

        @Override // x9.p
        /* renamed from: invoke, reason: merged with bridge method [inline-methods] */
        public final Object mo7invoke(LiveDataScope<T> liveDataScope, p9.d<? super m> dVar) {
            return ((C03441) create(liveDataScope, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.label;
            if (r12 == 0) {
                w.F(obj);
                final LiveDataScope liveDataScope = (LiveDataScope) this.L$0;
                kotlinx.coroutines.flow.f<T> fVar = this.$this_asLiveData;
                kotlinx.coroutines.flow.g<? super T> gVar = new kotlinx.coroutines.flow.g() { // from class: androidx.lifecycle.FlowLiveDataConversions.asLiveData.1.1
                    @Override // kotlinx.coroutines.flow.g
                    public final Object emit(T t10, p9.d<? super m> dVar) {
                        Object objEmit = liveDataScope.emit(t10, dVar);
                        return objEmit == q9.a.COROUTINE_SUSPENDED ? objEmit : m.f9594a;
                    }
                };
                this.label = 1;
                if (fVar.a(gVar, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return m.f9594a;
        }
    }

    public static final <T> kotlinx.coroutines.flow.f<T> asFlow(LiveData<T> liveData) {
        kotlin.jvm.internal.h.f(liveData, "<this>");
        return new y(new AnonymousClass1(liveData, null));
    }

    public static final <T> LiveData<T> asLiveData(kotlinx.coroutines.flow.f<? extends T> fVar) {
        kotlin.jvm.internal.h.f(fVar, "<this>");
        return asLiveData$default(fVar, (p9.f) null, 0L, 3, (Object) null);
    }

    public static final <T> LiveData<T> asLiveData(kotlinx.coroutines.flow.f<? extends T> fVar, p9.f context) {
        kotlin.jvm.internal.h.f(fVar, "<this>");
        kotlin.jvm.internal.h.f(context, "context");
        return asLiveData$default(fVar, context, 0L, 2, (Object) null);
    }

    public static final <T> LiveData<T> asLiveData(kotlinx.coroutines.flow.f<? extends T> fVar, p9.f context, long j10) {
        kotlin.jvm.internal.h.f(fVar, "<this>");
        kotlin.jvm.internal.h.f(context, "context");
        return CoroutineLiveDataKt.liveData(context, j10, new C03441(fVar, null));
    }

    @RequiresApi(26)
    public static final <T> LiveData<T> asLiveData(kotlinx.coroutines.flow.f<? extends T> fVar, p9.f context, Duration timeout) {
        kotlin.jvm.internal.h.f(fVar, "<this>");
        kotlin.jvm.internal.h.f(context, "context");
        kotlin.jvm.internal.h.f(timeout, "timeout");
        return asLiveData(fVar, context, Api26Impl.INSTANCE.toMillis(timeout));
    }

    public static /* synthetic */ LiveData asLiveData$default(kotlinx.coroutines.flow.f fVar, p9.f fVar2, long j10, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            fVar2 = p9.g.f12870a;
        }
        if ((r42 & 2) != 0) {
            j10 = CoroutineLiveDataKt.DEFAULT_TIMEOUT;
        }
        return asLiveData(fVar, fVar2, j10);
    }

    public static /* synthetic */ LiveData asLiveData$default(kotlinx.coroutines.flow.f fVar, p9.f fVar2, Duration duration, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            fVar2 = p9.g.f12870a;
        }
        return asLiveData(fVar, fVar2, duration);
    }
}
