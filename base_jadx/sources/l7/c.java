package l7;

import java.lang.reflect.Type;
import java.util.Map;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Type, j7.i<?>> f9404a;

    /* renamed from: b, reason: collision with root package name */
    public final o7.b f9405b = o7.b.f11258a;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements j<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j7.i f9406a;

        public a(j7.i iVar, Type type) {
            this.f9406a = iVar;
        }

        @Override // l7.j
        public final T h() {
            return (T) this.f9406a.a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class b<T> implements j<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j7.i f9407a;

        public b(j7.i iVar, Type type) {
            this.f9407a = iVar;
        }

        @Override // l7.j
        public final T h() {
            return (T) this.f9407a.a();
        }
    }

    public c(Map<Type, j7.i<?>> map) {
        this.f9404a = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> l7.j<T> a(p7.a<T> r6) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.c.a(p7.a):l7.j");
    }

    public final String toString() {
        return this.f9404a.toString();
    }
}
