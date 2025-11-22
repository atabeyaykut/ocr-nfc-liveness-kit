package androidx.core.content;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.StyleRes;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\"\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u0002H\u0086\b¢\u0006\u0004\b\u0003\u0010\u0004\u001aL\u0010\u0010\u001a\u00020\u000e*\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\b\b\u0003\u0010\n\u001a\u00020\t2\b\b\u0003\u0010\u000b\u001a\u00020\t2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fH\u0086\bø\u0001\u0000\u001a6\u0010\u0010\u001a\u00020\u000e*\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/content/Context;", "getSystemService", "(Landroid/content/Context;)Ljava/lang/Object;", "Landroid/util/AttributeSet;", "set", "", "attrs", "", "defStyleAttr", "defStyleRes", "Lkotlin/Function1;", "Landroid/content/res/TypedArray;", "Ll9/m;", "block", "withStyledAttributes", "resourceId", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ContextKt {
    public static final <T> T getSystemService(Context context) {
        kotlin.jvm.internal.h.f(context, "<this>");
        kotlin.jvm.internal.h.m();
        throw null;
    }

    public static final void withStyledAttributes(Context context, @StyleRes int r22, int[] attrs, x9.l<? super TypedArray, l9.m> block) throws Resources.NotFoundException {
        kotlin.jvm.internal.h.f(context, "<this>");
        kotlin.jvm.internal.h.f(attrs, "attrs");
        kotlin.jvm.internal.h.f(block, "block");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(r22, attrs);
        kotlin.jvm.internal.h.e(typedArrayObtainStyledAttributes, "obtainStyledAttributes(resourceId, attrs)");
        block.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static final void withStyledAttributes(Context context, AttributeSet attributeSet, int[] attrs, @AttrRes int r42, @StyleRes int r52, x9.l<? super TypedArray, l9.m> block) {
        kotlin.jvm.internal.h.f(context, "<this>");
        kotlin.jvm.internal.h.f(attrs, "attrs");
        kotlin.jvm.internal.h.f(block, "block");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, attrs, r42, r52);
        kotlin.jvm.internal.h.e(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        block.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static /* synthetic */ void withStyledAttributes$default(Context context, AttributeSet attributeSet, int[] attrs, int r42, int r52, x9.l block, int r72, Object obj) {
        if ((r72 & 1) != 0) {
            attributeSet = null;
        }
        if ((r72 & 4) != 0) {
            r42 = 0;
        }
        if ((r72 & 8) != 0) {
            r52 = 0;
        }
        kotlin.jvm.internal.h.f(context, "<this>");
        kotlin.jvm.internal.h.f(attrs, "attrs");
        kotlin.jvm.internal.h.f(block, "block");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, attrs, r42, r52);
        kotlin.jvm.internal.h.e(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        block.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }
}
