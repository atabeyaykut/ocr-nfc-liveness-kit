package kc;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import x9.l;

/* loaded from: classes2.dex */
public final class a {

    /* JADX INFO: Add missing generic type declarations: [N] */
    /* renamed from: kc.a$a, reason: collision with other inner class name */
    public static class C0164a<N> extends b<N, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ l f8821a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean[] f8822b;

        public C0164a(l lVar, boolean[] zArr) {
            this.f8821a = lVar;
            this.f8822b = zArr;
        }

        @Override // kc.a.d
        public final Object a() {
            return Boolean.valueOf(this.f8822b[0]);
        }

        @Override // kc.a.d
        public final boolean c(N n10) {
            boolean zBooleanValue = ((Boolean) this.f8821a.invoke(n10)).booleanValue();
            boolean[] zArr = this.f8822b;
            if (zBooleanValue) {
                zArr[0] = true;
            }
            return !zArr[0];
        }
    }

    public static abstract class b<N, R> implements d<N, R> {
        @Override // kc.a.d
        public void b(N n10) {
        }
    }

    public interface c<N> {
        Iterable<? extends N> d(N n10);
    }

    public interface d<N, R> {
        R a();

        void b(N n10);

        boolean c(N n10);
    }

    public static class e<N> {

        /* renamed from: a, reason: collision with root package name */
        public final Set<N> f8823a = new HashSet();
    }

    public static /* synthetic */ void a(int r32) {
        Object[] objArr = new Object[3];
        switch (r32) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case 18:
            case 21:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case 16:
            case 19:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case 13:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case 17:
            case 20:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case 14:
                objArr[0] = "node";
                break;
            case 22:
                objArr[0] = "current";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (r32) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "dfsFromNode";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                objArr[2] = "topologicalOrder";
                break;
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = "dfs";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static Object b(Collection collection, c cVar, b bVar) {
        e eVar = new e();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c(it.next(), cVar, eVar, bVar);
        }
        return bVar.a();
    }

    public static void c(Object obj, c cVar, e eVar, b bVar) {
        if (obj == null) {
            a(22);
            throw null;
        }
        if (eVar.f8823a.add(obj) && bVar.c(obj)) {
            Iterator it = cVar.d(obj).iterator();
            while (it.hasNext()) {
                c(it.next(), cVar, eVar, bVar);
            }
            bVar.b(obj);
        }
    }

    public static <N> Boolean d(Collection<N> collection, c<N> cVar, l<N, Boolean> lVar) {
        if (lVar != null) {
            return (Boolean) b(collection, cVar, new C0164a(lVar, new boolean[1]));
        }
        a(9);
        throw null;
    }
}
