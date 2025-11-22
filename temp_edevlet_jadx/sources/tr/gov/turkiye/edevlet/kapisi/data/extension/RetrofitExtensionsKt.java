package tr.gov.turkiye.edevlet.kapisi.data.extension;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import c5.w;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import r9.c;
import r9.e;
import r9.i;
import ud.b;
import ud.c0;
import ud.d;
import ud.k;
import x9.l;
import x9.p;

@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a\u001d\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0016\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a:\u0010\u000b\u001a\u00020\t\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00062\u001a\b\u0004\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0004\u0012\u00020\t0\u0007H\u0086\bø\u0001\u0000\u001a!\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0086\b\u001a)\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000e\u001aS\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000f*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\u0013\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010H\u0086@ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u0014\u0082\u0002\u000b\n\u0005\b\u009920\u0001\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lud/c0;", "bodyOrThrow", "(Lud/c0;)Ljava/lang/Object;", "Lud/k;", "toException", "Lud/b;", "Lkotlin/Function1;", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;", "Ll9/m;", "result", "enqueue", "executeForResult", "toResult", "(Lud/c0;Lp9/d;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "Lkotlin/Function2;", "Lp9/d;", "", "mapper", "(Lud/c0;Lx9/p;Lp9/d;)Ljava/lang/Object;", "data_release"}, k = 2, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class RetrofitExtensionsKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0007\u001a\u00020\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J$\u0010\n\u001a\u00020\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¨\u0006\u000b"}, d2 = {"tr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$enqueue$1", "Lud/d;", "Lud/b;", NotificationCompat.CATEGORY_CALL, "", "error", "Ll9/m;", "onFailure", "Lud/c0;", "response", "onResponse", "data_release"}, k = 1, mv = {1, 8, 0})
    /* renamed from: tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$enqueue$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements d<T> {
        final /* synthetic */ l<Result<T>, m> $result;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(l<? super Result<T>, m> lVar) {
            this.$result = lVar;
        }

        @Override // ud.d
        public void onFailure(b<T> call, Throwable error) {
            h.f(call, "call");
            h.f(error, "error");
            this.$result.invoke(new ErrorResult(error));
        }

        @Override // ud.d
        public void onResponse(b<T> call, c0<T> response) {
            h.f(call, "call");
            h.f(response, "response");
            this.$result.invoke(new Success(RetrofitExtensionsKt.bodyOrThrow(response)));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "it", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @e(c = "tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$toResult$2", f = "RetrofitExtensions.kt", l = {}, m = "invokeSuspend")
    /* renamed from: tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$toResult$2, reason: invalid class name */
    public static final class AnonymousClass2<T> extends i implements p<T, p9.d<? super T>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass2(p9.d<? super AnonymousClass2> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(dVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // x9.p
        /* renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo7invoke(Object obj, Object obj2) {
            return invoke((AnonymousClass2<T>) obj, (p9.d<? super AnonymousClass2<T>>) obj2);
        }

        public final Object invoke(T t10, p9.d<? super T> dVar) {
            return ((AnonymousClass2) create(t10, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
            return this.L$0;
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @e(c = "tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt", f = "RetrofitExtensions.kt", l = {44}, m = "toResult")
    /* renamed from: tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$toResult$3, reason: invalid class name */
    public static final class AnonymousClass3<T, E> extends c {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass3(p9.d<? super AnonymousClass3> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RetrofitExtensionsKt.toResult(null, null, this);
        }
    }

    public static final <T> T bodyOrThrow(c0<T> c0Var) {
        h.f(c0Var, "<this>");
        if (!c0Var.f17992a.c()) {
            throw new k(c0Var);
        }
        T t10 = c0Var.f17993b;
        h.c(t10);
        return t10;
    }

    public static final <T> void enqueue(b<T> bVar, l<? super Result<T>, m> result) {
        h.f(bVar, "<this>");
        h.f(result, "result");
        h.m();
        throw null;
    }

    public static final /* synthetic */ <T> Result<T> executeForResult(b<T> bVar) {
        h.f(bVar, "<this>");
        try {
            c0<T> response = bVar.execute();
            h.e(response, "response");
            return new Success(bodyOrThrow(response));
        } catch (Exception e10) {
            e10.printStackTrace();
            return new ErrorResult(e10);
        }
    }

    public static final <T> k toException(c0<T> c0Var) {
        h.f(c0Var, "<this>");
        return new k(c0Var);
    }

    public static final <T> Object toResult(c0<T> c0Var, p9.d<? super Result<T>> dVar) {
        return toResult(c0Var, new AnonymousClass2(null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, E> java.lang.Object toResult(ud.c0<T> r4, x9.p<? super T, ? super p9.d<? super E>, ? extends java.lang.Object> r5, p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<E>> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt.AnonymousClass3
            if (r0 == 0) goto L13
            r0 = r6
            tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$toResult$3 r0 = (tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt.AnonymousClass3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$toResult$3 r0 = new tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt$toResult$3
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            c5.w.F(r6)     // Catch: java.lang.Exception -> L57
            goto L47
        L27:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2f:
            c5.w.F(r6)
            rc.b0 r6 = r4.f17992a     // Catch: java.lang.Exception -> L57
            boolean r6 = r6.c()     // Catch: java.lang.Exception -> L57
            if (r6 == 0) goto L4d
            java.lang.Object r4 = bodyOrThrow(r4)     // Catch: java.lang.Exception -> L57
            r0.label = r3     // Catch: java.lang.Exception -> L57
            java.lang.Object r6 = r5.mo7invoke(r4, r0)     // Catch: java.lang.Exception -> L57
            if (r6 != r1) goto L47
            return r1
        L47:
            tr.gov.turkiye.edevlet.kapisi.data.extension.Success r4 = new tr.gov.turkiye.edevlet.kapisi.data.extension.Success     // Catch: java.lang.Exception -> L57
            r4.<init>(r6)     // Catch: java.lang.Exception -> L57
            goto L5e
        L4d:
            tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult r5 = new tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult     // Catch: java.lang.Exception -> L57
            ud.k r4 = toException(r4)     // Catch: java.lang.Exception -> L57
            r5.<init>(r4)     // Catch: java.lang.Exception -> L57
            goto L5d
        L57:
            r4 = move-exception
            tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult r5 = new tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult
            r5.<init>(r4)
        L5d:
            r4 = r5
        L5e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt.toResult(ud.c0, x9.p, p9.d):java.lang.Object");
    }
}
