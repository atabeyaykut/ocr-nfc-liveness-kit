package androidx.work;

import androidx.work.Operation;
import c5.w;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import m5.a;
import nc.j;
import p9.d;
import r9.c;
import r9.e;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0004"}, d2 = {"Landroidx/work/Operation;", "Landroidx/work/Operation$State$SUCCESS;", "await", "(Landroidx/work/Operation;Lp9/d;)Ljava/lang/Object;", "work-runtime-ktx_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class OperationKt {

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @e(c = "androidx.work.OperationKt", f = "Operation.kt", l = {39}, m = "await")
    /* renamed from: androidx.work.OperationKt$await$1, reason: invalid class name */
    public static final class AnonymousClass1 extends c {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OperationKt.await(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object await(androidx.work.Operation r4, p9.d<? super androidx.work.Operation.State.SUCCESS> r5) throws java.lang.Throwable {
        /*
            boolean r0 = r5 instanceof androidx.work.OperationKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.work.OperationKt$await$1 r0 = (androidx.work.OperationKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.work.OperationKt$await$1 r0 = new androidx.work.OperationKt$await$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.lang.Object r4 = r0.L$0
            m5.a r4 = (m5.a) r4
            c5.w.F(r5)
            goto L7d
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            c5.w.F(r5)
            m5.a r4 = r4.getResult()
            java.lang.String r5 = "result"
            kotlin.jvm.internal.h.e(r4, r5)
            boolean r5 = r4.isDone()
            if (r5 == 0) goto L54
            java.lang.Object r4 = r4.get()     // Catch: java.util.concurrent.ExecutionException -> L4a
            goto L7e
        L4a:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L52
            goto L53
        L52:
            r4 = r5
        L53:
            throw r4
        L54:
            r0.L$0 = r4
            r0.label = r3
            nc.j r5 = new nc.j
            p9.d r0 = c5.w.x(r0)
            r5.<init>(r3, r0)
            r5.n()
            androidx.work.ListenableFutureKt$await$2$1 r0 = new androidx.work.ListenableFutureKt$await$2$1
            r0.<init>(r5, r4)
            androidx.work.DirectExecutor r2 = androidx.work.DirectExecutor.INSTANCE
            r4.addListener(r0, r2)
            androidx.work.ListenableFutureKt$await$2$2 r0 = new androidx.work.ListenableFutureKt$await$2$2
            r0.<init>(r4)
            r5.D(r0)
            java.lang.Object r5 = r5.m()
            if (r5 != r1) goto L7d
            return r1
        L7d:
            r4 = r5
        L7e:
            java.lang.String r5 = "result.await()"
            kotlin.jvm.internal.h.e(r4, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.await(androidx.work.Operation, p9.d):java.lang.Object");
    }

    private static final Object await$$forInline(Operation operation, d<? super Operation.State.SUCCESS> dVar) throws Throwable {
        Object objM;
        a<Operation.State.SUCCESS> result = operation.getResult();
        h.e(result, "result");
        if (result.isDone()) {
            try {
                objM = result.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        } else {
            j jVar = new j(1, w.x(dVar));
            jVar.n();
            result.addListener(new ListenableFutureKt$await$2$1(jVar, result), DirectExecutor.INSTANCE);
            jVar.D(new ListenableFutureKt$await$2$2(result));
            objM = jVar.m();
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        }
        h.e(objM, "result.await()");
        return objM;
    }
}
