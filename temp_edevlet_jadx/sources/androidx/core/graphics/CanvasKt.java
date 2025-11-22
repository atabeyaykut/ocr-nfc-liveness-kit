package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a$\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a8\u0010\b\u001a\u00020\u0002*\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001aB\u0010\f\u001a\u00020\u0002*\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001aL\u0010\r\u001a\u00020\u0002*\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a8\u0010\u000e\u001a\u00020\u0002*\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a.\u0010\u0011\u001a\u00020\u0002*\u00020\u00002\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a,\u0010\u0014\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a,\u0010\u0014\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00152\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001aD\u0010\u0014\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001aD\u0010\u0014\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u001a,\u0010\u0014\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, d2 = {"Landroid/graphics/Canvas;", "Lkotlin/Function1;", "Ll9/m;", "block", "withSave", "", "x", "y", "withTranslation", "degrees", "pivotX", "pivotY", "withRotation", "withScale", "withSkew", "Landroid/graphics/Matrix;", "matrix", "withMatrix", "Landroid/graphics/Rect;", "clipRect", "withClip", "Landroid/graphics/RectF;", "", "left", "top", "right", "bottom", "Landroid/graphics/Path;", "clipPath", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class CanvasKt {
    public static final void withClip(Canvas canvas, float f, float f10, float f11, float f12, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.clipRect(f, f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static final void withClip(Canvas canvas, int r22, int r32, int r42, int r52, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.clipRect(r22, r32, r42, r52);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static final void withClip(Canvas canvas, Path clipPath, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(clipPath, "clipPath");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.clipPath(clipPath);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static final void withClip(Canvas canvas, Rect clipRect, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(clipRect, "clipRect");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.clipRect(clipRect);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static final void withClip(Canvas canvas, RectF clipRect, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(clipRect, "clipRect");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.clipRect(clipRect);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static final void withMatrix(Canvas canvas, Matrix matrix, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(matrix, "matrix");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.concat(matrix);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static /* synthetic */ void withMatrix$default(Canvas canvas, Matrix matrix, l block, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            matrix = new Matrix();
        }
        h.f(canvas, "<this>");
        h.f(matrix, "matrix");
        h.f(block, "block");
        int r33 = canvas.save();
        canvas.concat(matrix);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r33);
        }
    }

    public static final void withRotation(Canvas canvas, float f, float f10, float f11, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.rotate(f, f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static /* synthetic */ void withRotation$default(Canvas canvas, float f, float f10, float f11, l block, int r6, Object obj) {
        if ((r6 & 1) != 0) {
            f = 0.0f;
        }
        if ((r6 & 2) != 0) {
            f10 = 0.0f;
        }
        if ((r6 & 4) != 0) {
            f11 = 0.0f;
        }
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r62 = canvas.save();
        canvas.rotate(f, f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r62);
        }
    }

    public static final void withSave(Canvas canvas, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static final void withScale(Canvas canvas, float f, float f10, float f11, float f12, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.scale(f, f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static /* synthetic */ void withScale$default(Canvas canvas, float f, float f10, float f11, float f12, l block, int r72, Object obj) {
        if ((r72 & 1) != 0) {
            f = 1.0f;
        }
        if ((r72 & 2) != 0) {
            f10 = 1.0f;
        }
        if ((r72 & 4) != 0) {
            f11 = 0.0f;
        }
        if ((r72 & 8) != 0) {
            f12 = 0.0f;
        }
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r73 = canvas.save();
        canvas.scale(f, f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r73);
        }
    }

    public static final void withSkew(Canvas canvas, float f, float f10, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.skew(f, f10);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static /* synthetic */ void withSkew$default(Canvas canvas, float f, float f10, l block, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            f = 0.0f;
        }
        if ((r52 & 2) != 0) {
            f10 = 0.0f;
        }
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r53 = canvas.save();
        canvas.skew(f, f10);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r53);
        }
    }

    public static final void withTranslation(Canvas canvas, float f, float f10, l<? super Canvas, m> block) {
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r02 = canvas.save();
        canvas.translate(f, f10);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r02);
        }
    }

    public static /* synthetic */ void withTranslation$default(Canvas canvas, float f, float f10, l block, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            f = 0.0f;
        }
        if ((r52 & 2) != 0) {
            f10 = 0.0f;
        }
        h.f(canvas, "<this>");
        h.f(block, "block");
        int r53 = canvas.save();
        canvas.translate(f, f10);
        try {
            block.invoke(canvas);
        } finally {
            canvas.restoreToCount(r53);
        }
    }
}
