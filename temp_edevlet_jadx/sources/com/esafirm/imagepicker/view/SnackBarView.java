package com.esafirm.imagepicker.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001R\u001c\u0010\u0006\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001c\u0010\b\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/esafirm/imagepicker/view/SnackBarView;", "Landroid/widget/RelativeLayout;", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "getTxtCaption", "()Landroid/widget/TextView;", "txtCaption", "getBtnAction", "btnAction", "imagepicker_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SnackBarView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public static final FastOutLinearInInterpolator f2878a = new FastOutLinearInInterpolator();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        h.f(context, "context");
        View.inflate(context, R.layout.ef_imagepicker_snackbar, this);
        if (isInEditMode()) {
            return;
        }
        setTranslationY(context.getResources().getDimensionPixelSize(R.dimen.ef_height_snackbar));
        setAlpha(0.0f);
    }

    private final TextView getBtnAction() {
        return (TextView) findViewById(R.id.ef_snackbar_btn_action);
    }

    private final TextView getTxtCaption() {
        return (TextView) findViewById(R.id.ef_snackbar_txt_bottom_caption);
    }

    public final void a(f fVar) {
        getTxtCaption().setText(getContext().getString(R.string.ef_msg_no_write_external_permission));
        getBtnAction().setOnClickListener(fVar);
        animate().translationY(0.0f).setDuration(200L).setInterpolator(f2878a).alpha(1.0f);
    }
}
