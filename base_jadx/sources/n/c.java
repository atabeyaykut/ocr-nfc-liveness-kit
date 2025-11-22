package n;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import k.i;
import m9.e0;
import m9.w;
import n.b;
import p.k;
import p.l;
import p.m;
import p.n;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final e.f f10462a;

    /* renamed from: b, reason: collision with root package name */
    public final m f10463b;

    public c(e.f fVar, m mVar) {
        this.f10462a = fVar;
        this.f10463b = mVar;
    }

    public static n c(i iVar, p.g gVar, b.a aVar, b.C0194b c0194b) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(gVar.f12117a.getResources(), c0194b.f10460a);
        Map<String, Object> map = c0194b.f10461b;
        Object obj = map.get("coil#disk_cache_key");
        String str = obj instanceof String ? (String) obj : null;
        Object obj2 = map.get("coil#is_sampled");
        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
        boolean zBooleanValue = bool == null ? false : bool.booleanValue();
        Bitmap.Config[] configArr = u.c.f17726a;
        return new n(bitmapDrawable, gVar, 1, aVar, str, zBooleanValue, (iVar instanceof i) && iVar.f8606g);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final n.b.C0194b a(p.g r18, n.b.a r19, q.e r20, int r21) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n.c.a(p.g, n.b$a, q.e, int):n.b$b");
    }

    public final b.a b(p.g gVar, Object obj, k kVar, e.b bVar) {
        String strA;
        Map linkedHashMap;
        b.a aVar = gVar.f12121e;
        if (aVar != null) {
            return aVar;
        }
        bVar.k();
        List<l9.g<l.b<? extends Object>, Class<? extends Object>>> list = this.f10462a.getComponents().f4977c;
        int size = list.size();
        int r32 = 0;
        while (true) {
            if (r32 >= size) {
                strA = null;
                break;
            }
            int r52 = r32 + 1;
            l9.g<l.b<? extends Object>, Class<? extends Object>> gVar2 = list.get(r32);
            l.b<? extends Object> bVar2 = gVar2.f9582a;
            if (gVar2.f9583b.isAssignableFrom(obj.getClass()) && (strA = bVar2.a(obj, kVar)) != null) {
                break;
            }
            r32 = r52;
        }
        bVar.l();
        if (strA == null) {
            return null;
        }
        Map<String, l.b> map = gVar.D.f12181a;
        boolean zIsEmpty = map.isEmpty();
        w wVar = w.f10174a;
        if (zIsEmpty) {
            linkedHashMap = wVar;
        } else {
            linkedHashMap = new LinkedHashMap();
            Iterator<Map.Entry<String, l.b>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().getClass();
            }
        }
        List<s.b> list2 = gVar.f12127l;
        if (list2.isEmpty() && linkedHashMap.isEmpty()) {
            return new b.a(strA, wVar);
        }
        LinkedHashMap linkedHashMapV0 = e0.V0(linkedHashMap);
        if (!list2.isEmpty()) {
            int size2 = list2.size();
            for (int r22 = 0; r22 < size2; r22++) {
                linkedHashMapV0.put(kotlin.jvm.internal.h.k(Integer.valueOf(r22), "coil#transformation_"), list2.get(r22).b());
            }
            linkedHashMapV0.put("coil#transformation_size", kVar.f12169d.toString());
        }
        return new b.a(strA, linkedHashMapV0);
    }
}
