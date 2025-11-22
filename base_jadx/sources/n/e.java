package n;

import android.graphics.Bitmap;
import androidx.collection.LruCache;
import java.util.Map;
import n.b;

/* loaded from: classes.dex */
public final class e implements g {

    /* renamed from: a, reason: collision with root package name */
    public final h f10466a;

    /* renamed from: b, reason: collision with root package name */
    public final b f10467b;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f10468a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<String, Object> f10469b;

        /* renamed from: c, reason: collision with root package name */
        public final int f10470c;

        public a(Bitmap bitmap, Map<String, ? extends Object> map, int r32) {
            this.f10468a = bitmap;
            this.f10469b = map;
            this.f10470c = r32;
        }
    }

    public static final class b extends LruCache<b.a, a> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ e f10471a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int r12, e eVar) {
            super(r12);
            this.f10471a = eVar;
        }

        @Override // androidx.collection.LruCache
        public final void entryRemoved(boolean z10, b.a aVar, a aVar2, a aVar3) {
            a aVar4 = aVar2;
            this.f10471a.f10466a.c(aVar, aVar4.f10468a, aVar4.f10469b, aVar4.f10470c);
        }

        @Override // androidx.collection.LruCache
        public final int sizeOf(b.a aVar, a aVar2) {
            return aVar2.f10470c;
        }
    }

    public e(int r12, h hVar) {
        this.f10466a = hVar;
        this.f10467b = new b(r12, this);
    }

    @Override // n.g
    public final void a(int r32) {
        b bVar = this.f10467b;
        if (r32 >= 40) {
            bVar.evictAll();
            return;
        }
        if (10 <= r32 && r32 < 20) {
            bVar.trimToSize(bVar.size() / 2);
        }
    }

    @Override // n.g
    public final b.C0194b b(b.a aVar) {
        a aVar2 = this.f10467b.get(aVar);
        if (aVar2 == null) {
            return null;
        }
        return new b.C0194b(aVar2.f10468a, aVar2.f10469b);
    }

    @Override // n.g
    public final void c(b.a aVar, Bitmap bitmap, Map<String, ? extends Object> map) {
        int r02 = b8.f.F(bitmap);
        b bVar = this.f10467b;
        if (r02 <= bVar.maxSize()) {
            bVar.put(aVar, new a(bitmap, map, r02));
        } else {
            bVar.remove(aVar);
            this.f10466a.c(aVar, bitmap, map, r02);
        }
    }
}
