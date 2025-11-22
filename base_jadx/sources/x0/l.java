package x0;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final b f19012a;

    /* renamed from: b, reason: collision with root package name */
    public static final c f19013b;

    /* renamed from: c, reason: collision with root package name */
    public static final e f19014c;

    public class a extends l {
        @Override // x0.l
        public final boolean a() {
            return true;
        }

        @Override // x0.l
        public final boolean b() {
            return true;
        }

        @Override // x0.l
        public final boolean c(v0.a aVar) {
            return aVar == v0.a.REMOTE;
        }

        @Override // x0.l
        public final boolean d(boolean z10, v0.a aVar, v0.c cVar) {
            return (aVar == v0.a.RESOURCE_DISK_CACHE || aVar == v0.a.MEMORY_CACHE) ? false : true;
        }
    }

    public class b extends l {
        @Override // x0.l
        public final boolean a() {
            return false;
        }

        @Override // x0.l
        public final boolean b() {
            return false;
        }

        @Override // x0.l
        public final boolean c(v0.a aVar) {
            return false;
        }

        @Override // x0.l
        public final boolean d(boolean z10, v0.a aVar, v0.c cVar) {
            return false;
        }
    }

    public class c extends l {
        @Override // x0.l
        public final boolean a() {
            return true;
        }

        @Override // x0.l
        public final boolean b() {
            return false;
        }

        @Override // x0.l
        public final boolean c(v0.a aVar) {
            return (aVar == v0.a.DATA_DISK_CACHE || aVar == v0.a.MEMORY_CACHE) ? false : true;
        }

        @Override // x0.l
        public final boolean d(boolean z10, v0.a aVar, v0.c cVar) {
            return false;
        }
    }

    public class d extends l {
        @Override // x0.l
        public final boolean a() {
            return false;
        }

        @Override // x0.l
        public final boolean b() {
            return true;
        }

        @Override // x0.l
        public final boolean c(v0.a aVar) {
            return false;
        }

        @Override // x0.l
        public final boolean d(boolean z10, v0.a aVar, v0.c cVar) {
            return (aVar == v0.a.RESOURCE_DISK_CACHE || aVar == v0.a.MEMORY_CACHE) ? false : true;
        }
    }

    public class e extends l {
        @Override // x0.l
        public final boolean a() {
            return true;
        }

        @Override // x0.l
        public final boolean b() {
            return true;
        }

        @Override // x0.l
        public final boolean c(v0.a aVar) {
            return aVar == v0.a.REMOTE;
        }

        @Override // x0.l
        public final boolean d(boolean z10, v0.a aVar, v0.c cVar) {
            return ((z10 && aVar == v0.a.DATA_DISK_CACHE) || aVar == v0.a.LOCAL) && cVar == v0.c.TRANSFORMED;
        }
    }

    static {
        new a();
        f19012a = new b();
        f19013b = new c();
        new d();
        f19014c = new e();
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(v0.a aVar);

    public abstract boolean d(boolean z10, v0.a aVar, v0.c cVar);
}
