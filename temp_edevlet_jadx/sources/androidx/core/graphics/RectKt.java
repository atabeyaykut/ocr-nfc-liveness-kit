package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\f\u001a\r\u0010\u0004\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0004\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\b\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\b\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\f\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0011*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0012\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u0012\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0086\n\u001a\r\u0010\u0016\u001a\u00020\u0001*\u00020\u0003H\u0086\b\u001a\r\u0010\u0017\u001a\u00020\u0003*\u00020\u0001H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u0011*\u00020\u0001H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u0011*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0019\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\b\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f¨\u0006\u001d"}, d2 = {"and", "Landroid/graphics/Rect;", "r", "Landroid/graphics/RectF;", "component1", "", "", "component2", "component3", "component4", "contains", "", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "minus", "xy", "Landroid/graphics/Region;", "or", "plus", "times", "factor", "toRect", "toRectF", "toRegion", "transform", "m", "Landroid/graphics/Matrix;", "xor", "core-ktx_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class RectKt {
    @SuppressLint({"CheckResult"})
    public static final Rect and(Rect rect, Rect r6) {
        h.f(rect, "<this>");
        h.f(r6, "r");
        Rect rect2 = new Rect(rect);
        rect2.intersect(r6);
        return rect2;
    }

    @SuppressLint({"CheckResult"})
    public static final RectF and(RectF rectF, RectF r6) {
        h.f(rectF, "<this>");
        h.f(r6, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.intersect(r6);
        return rectF2;
    }

    public static final float component1(RectF rectF) {
        h.f(rectF, "<this>");
        return rectF.left;
    }

    public static final int component1(Rect rect) {
        h.f(rect, "<this>");
        return rect.left;
    }

    public static final float component2(RectF rectF) {
        h.f(rectF, "<this>");
        return rectF.top;
    }

    public static final int component2(Rect rect) {
        h.f(rect, "<this>");
        return rect.top;
    }

    public static final float component3(RectF rectF) {
        h.f(rectF, "<this>");
        return rectF.right;
    }

    public static final int component3(Rect rect) {
        h.f(rect, "<this>");
        return rect.right;
    }

    public static final float component4(RectF rectF) {
        h.f(rectF, "<this>");
        return rectF.bottom;
    }

    public static final int component4(Rect rect) {
        h.f(rect, "<this>");
        return rect.bottom;
    }

    public static final boolean contains(Rect rect, Point p10) {
        h.f(rect, "<this>");
        h.f(p10, "p");
        return rect.contains(p10.x, p10.y);
    }

    public static final boolean contains(RectF rectF, PointF p10) {
        h.f(rectF, "<this>");
        h.f(p10, "p");
        return rectF.contains(p10.x, p10.y);
    }

    public static final Rect minus(Rect rect, int r22) {
        h.f(rect, "<this>");
        Rect rect2 = new Rect(rect);
        int r12 = -r22;
        rect2.offset(r12, r12);
        return rect2;
    }

    public static final Rect minus(Rect rect, Point xy) {
        h.f(rect, "<this>");
        h.f(xy, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(-xy.x, -xy.y);
        return rect2;
    }

    public static final RectF minus(RectF rectF, float f) {
        h.f(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        float f10 = -f;
        rectF2.offset(f10, f10);
        return rectF2;
    }

    public static final RectF minus(RectF rectF, PointF xy) {
        h.f(rectF, "<this>");
        h.f(xy, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(-xy.x, -xy.y);
        return rectF2;
    }

    public static final Region minus(Rect rect, Rect r6) {
        h.f(rect, "<this>");
        h.f(r6, "r");
        Region region = new Region(rect);
        region.op(r6, Region.Op.DIFFERENCE);
        return region;
    }

    public static final Region minus(RectF rectF, RectF r6) {
        h.f(rectF, "<this>");
        h.f(r6, "r");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        r6.roundOut(rect2);
        region.op(rect2, Region.Op.DIFFERENCE);
        return region;
    }

    public static final Rect or(Rect rect, Rect r6) {
        h.f(rect, "<this>");
        h.f(r6, "r");
        Rect rect2 = new Rect(rect);
        rect2.union(r6);
        return rect2;
    }

    public static final RectF or(RectF rectF, RectF r6) {
        h.f(rectF, "<this>");
        h.f(r6, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.union(r6);
        return rectF2;
    }

    public static final Rect plus(Rect rect, int r22) {
        h.f(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.offset(r22, r22);
        return rect2;
    }

    public static final Rect plus(Rect rect, Point xy) {
        h.f(rect, "<this>");
        h.f(xy, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(xy.x, xy.y);
        return rect2;
    }

    public static final Rect plus(Rect rect, Rect r6) {
        h.f(rect, "<this>");
        h.f(r6, "r");
        Rect rect2 = new Rect(rect);
        rect2.union(r6);
        return rect2;
    }

    public static final RectF plus(RectF rectF, float f) {
        h.f(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(f, f);
        return rectF2;
    }

    public static final RectF plus(RectF rectF, PointF xy) {
        h.f(rectF, "<this>");
        h.f(xy, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(xy.x, xy.y);
        return rectF2;
    }

    public static final RectF plus(RectF rectF, RectF r6) {
        h.f(rectF, "<this>");
        h.f(r6, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.union(r6);
        return rectF2;
    }

    public static final Rect times(Rect rect, int r22) {
        h.f(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.top *= r22;
        rect2.left *= r22;
        rect2.right *= r22;
        rect2.bottom *= r22;
        return rect2;
    }

    public static final RectF times(RectF rectF, float f) {
        h.f(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f;
        rectF2.left *= f;
        rectF2.right *= f;
        rectF2.bottom *= f;
        return rectF2;
    }

    public static final RectF times(RectF rectF, int r22) {
        h.f(rectF, "<this>");
        float f = r22;
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f;
        rectF2.left *= f;
        rectF2.right *= f;
        rectF2.bottom *= f;
        return rectF2;
    }

    public static final Rect toRect(RectF rectF) {
        h.f(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return rect;
    }

    public static final RectF toRectF(Rect rect) {
        h.f(rect, "<this>");
        return new RectF(rect);
    }

    public static final Region toRegion(Rect rect) {
        h.f(rect, "<this>");
        return new Region(rect);
    }

    public static final Region toRegion(RectF rectF) {
        h.f(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return new Region(rect);
    }

    public static final RectF transform(RectF rectF, Matrix m10) {
        h.f(rectF, "<this>");
        h.f(m10, "m");
        m10.mapRect(rectF);
        return rectF;
    }

    public static final Region xor(Rect rect, Rect r6) {
        h.f(rect, "<this>");
        h.f(r6, "r");
        Region region = new Region(rect);
        region.op(r6, Region.Op.XOR);
        return region;
    }

    public static final Region xor(RectF rectF, RectF r6) {
        h.f(rectF, "<this>");
        h.f(r6, "r");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        r6.roundOut(rect2);
        region.op(rect2, Region.Op.XOR);
        return region;
    }
}
