package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0007\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0086\n\u001a\u0015\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0086\n\u001a\r\u0010\n\u001a\u00020\u0000*\u00020\u0000H\u0086\n\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\f\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0086\f\u001a\u0015\u0010\f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\f\u001a\u0015\u0010\f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0086\f\u001a\u0015\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\f\u001a\u0015\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0086\f\u001a$\u0010\u0011\u001a\u00020\u000f*\u00020\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000f0\u000eH\u0086\bø\u0001\u0000\u001a\u0013\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u0012*\u00020\u0000H\u0086\u0002\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0014"}, d2 = {"Landroid/graphics/Region;", "Landroid/graphics/Point;", "p", "", "contains", "Landroid/graphics/Rect;", "r", "plus", "minus", "unaryMinus", "not", "or", "and", "xor", "Lkotlin/Function1;", "Ll9/m;", "action", "forEach", "", "iterator", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class RegionKt {

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\b\u001a\u00020\u0004H\u0096\u0002J\t\u0010\t\u001a\u00020\u0002H\u0096\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"androidx/core/graphics/RegionKt$iterator$1", "", "Landroid/graphics/Rect;", "hasMore", "", "iterator", "Landroid/graphics/RegionIterator;", "rect", "hasNext", "next", "core-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* renamed from: androidx.core.graphics.RegionKt$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<Rect>, y9.a {
        private boolean hasMore;
        private final RegionIterator iterator;
        private final Rect rect;

        public AnonymousClass1(Region region) {
            RegionIterator regionIterator = new RegionIterator(region);
            this.iterator = regionIterator;
            Rect rect = new Rect();
            this.rect = rect;
            this.hasMore = regionIterator.next(rect);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasMore;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Rect next() {
            if (!this.hasMore) {
                throw new IndexOutOfBoundsException();
            }
            Rect rect = new Rect(this.rect);
            this.hasMore = this.iterator.next(this.rect);
            return rect;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final Region and(Region region, Rect r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.INTERSECT);
        return region2;
    }

    public static final Region and(Region region, Region r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.INTERSECT);
        return region2;
    }

    public static final boolean contains(Region region, Point p10) {
        h.f(region, "<this>");
        h.f(p10, "p");
        return region.contains(p10.x, p10.y);
    }

    public static final void forEach(Region region, l<? super Rect, m> action) {
        h.f(region, "<this>");
        h.f(action, "action");
        RegionIterator regionIterator = new RegionIterator(region);
        while (true) {
            Rect rect = new Rect();
            if (!regionIterator.next(rect)) {
                return;
            } else {
                action.invoke(rect);
            }
        }
    }

    public static final Iterator<Rect> iterator(Region region) {
        h.f(region, "<this>");
        return new AnonymousClass1(region);
    }

    public static final Region minus(Region region, Rect r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region minus(Region region, Region r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region not(Region region) {
        h.f(region, "<this>");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region or(Region region, Rect r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.union(r6);
        return region2;
    }

    public static final Region or(Region region, Region r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.UNION);
        return region2;
    }

    public static final Region plus(Region region, Rect r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.union(r6);
        return region2;
    }

    public static final Region plus(Region region, Region r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.UNION);
        return region2;
    }

    public static final Region unaryMinus(Region region) {
        h.f(region, "<this>");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region xor(Region region, Rect r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.XOR);
        return region2;
    }

    public static final Region xor(Region region, Region r6) {
        h.f(region, "<this>");
        h.f(r6, "r");
        Region region2 = new Region(region);
        region2.op(r6, Region.Op.XOR);
        return region2;
    }
}
