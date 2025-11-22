package tr.gov.turkiye.edevlet.kapisi.barcode.camera;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/camera/ViewFinderOverlay;", "Landroid/view/View;", "Landroid/graphics/RectF;", "e", "Landroid/graphics/RectF;", "getBoxRect", "()Landroid/graphics/RectF;", "setBoxRect", "(Landroid/graphics/RectF;)V", "boxRect", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ViewFinderOverlay extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f15781a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f15782b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f15783c;

    /* renamed from: d, reason: collision with root package name */
    public final float f15784d;

    /* renamed from: e, reason: collision with root package name and from kotlin metadata */
    public RectF boxRect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewFinderOverlay(Context context, AttributeSet attrs) {
        super(context, attrs);
        h.f(context, "context");
        h.f(attrs, "attrs");
        Paint paint = new Paint();
        paint.setColor(ContextCompat.getColor(context, R.color.barcode_reticle_stroke));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(context.getResources().getDimensionPixelOffset(R.dimen.barcode_reticle_stroke_width));
        this.f15781a = paint;
        Paint paint2 = new Paint();
        paint2.setColor(ContextCompat.getColor(context, R.color.barcode_reticle_background));
        this.f15782b = paint2;
        Paint paint3 = new Paint();
        paint3.setStrokeWidth(paint.getStrokeWidth());
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f15783c = paint3;
        this.f15784d = context.getResources().getDimensionPixelOffset(R.dimen.barcode_reticle_corner_radius);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        h.f(canvas, "canvas");
        super.draw(canvas);
        RectF rectF = this.boxRect;
        if (rectF != null) {
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.f15782b);
            Paint paint = this.f15783c;
            paint.setStyle(Paint.Style.FILL);
            float f = this.f15784d;
            canvas.drawRoundRect(rectF, f, f, paint);
            paint.setStyle(Paint.Style.STROKE);
            canvas.drawRoundRect(rectF, f, f, paint);
            canvas.drawRoundRect(rectF, f, f, this.f15781a);
        }
    }

    public final RectF getBoxRect() {
        return this.boxRect;
    }

    public final void setBoxRect(RectF rectF) {
        this.boxRect = rectF;
    }
}
