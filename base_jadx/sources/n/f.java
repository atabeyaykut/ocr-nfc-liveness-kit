package n;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import m9.t;
import n.b;

/* loaded from: classes.dex */
public final class f implements h {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap<b.a, ArrayList<a>> f10472a = new LinkedHashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public int f10473b;

    @VisibleForTesting
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f10474a;

        /* renamed from: b, reason: collision with root package name */
        public final WeakReference<Bitmap> f10475b;

        /* renamed from: c, reason: collision with root package name */
        public final Map<String, Object> f10476c;

        /* renamed from: d, reason: collision with root package name */
        public final int f10477d;

        public a(int r12, WeakReference<Bitmap> weakReference, Map<String, ? extends Object> map, int r42) {
            this.f10474a = r12;
            this.f10475b = weakReference;
            this.f10476c = map;
            this.f10477d = r42;
        }
    }

    @Override // n.h
    public final synchronized void a(int r22) {
        if (r22 >= 10 && r22 != 20) {
            d();
        }
    }

    @Override // n.h
    public final synchronized b.C0194b b(b.a aVar) {
        ArrayList<a> arrayList = this.f10472a.get(aVar);
        b.C0194b c0194b = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int r22 = 0;
        while (true) {
            if (r22 >= size) {
                break;
            }
            int r32 = r22 + 1;
            a aVar2 = arrayList.get(r22);
            Bitmap bitmap = aVar2.f10475b.get();
            b.C0194b c0194b2 = bitmap == null ? null : new b.C0194b(bitmap, aVar2.f10476c);
            if (c0194b2 != null) {
                c0194b = c0194b2;
                break;
            }
            r22 = r32;
        }
        int r72 = this.f10473b;
        this.f10473b = r72 + 1;
        if (r72 >= 10) {
            d();
        }
        return c0194b;
    }

    @Override // n.h
    public final synchronized void c(b.a aVar, Bitmap bitmap, Map<String, ? extends Object> map, int r10) {
        LinkedHashMap<b.a, ArrayList<a>> linkedHashMap = this.f10472a;
        ArrayList<a> arrayList = linkedHashMap.get(aVar);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            linkedHashMap.put(aVar, arrayList);
        }
        ArrayList<a> arrayList2 = arrayList;
        int r72 = System.identityHashCode(bitmap);
        a aVar2 = new a(r72, new WeakReference(bitmap), map, r10);
        int size = arrayList2.size();
        int r22 = 0;
        while (true) {
            if (r22 >= size) {
                arrayList2.add(aVar2);
                break;
            }
            int r32 = r22 + 1;
            a aVar3 = arrayList2.get(r22);
            if (r10 < aVar3.f10477d) {
                r22 = r32;
            } else if (aVar3.f10474a == r72 && aVar3.f10475b.get() == bitmap) {
                arrayList2.set(r22, aVar2);
            } else {
                arrayList2.add(r22, aVar2);
            }
        }
        int r73 = this.f10473b;
        this.f10473b = r73 + 1;
        if (r73 >= 10) {
            d();
        }
    }

    @VisibleForTesting
    public final void d() {
        WeakReference<Bitmap> weakReference;
        this.f10473b = 0;
        Iterator<ArrayList<a>> it = this.f10472a.values().iterator();
        while (it.hasNext()) {
            ArrayList<a> next = it.next();
            if (next.size() <= 1) {
                a aVar = (a) t.c1(next);
                Bitmap bitmap = null;
                if (aVar != null && (weakReference = aVar.f10475b) != null) {
                    bitmap = weakReference.get();
                }
                if (bitmap == null) {
                    it.remove();
                }
            } else {
                int size = next.size();
                int r52 = 0;
                int r6 = 0;
                while (r52 < size) {
                    int r72 = r52 + 1;
                    int r53 = r52 - r6;
                    if (next.get(r53).f10475b.get() == null) {
                        next.remove(r53);
                        r6++;
                    }
                    r52 = r72;
                }
                if (next.isEmpty()) {
                    it.remove();
                }
            }
        }
    }
}
