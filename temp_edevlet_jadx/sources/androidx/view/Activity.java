package androidx.view;

import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlinx.coroutines.flow.b;
import l9.m;
import p9.d;
import p9.g;
import pc.f;
import q9.a;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"Landroid/app/Activity;", "Landroid/view/View;", "view", "Ll9/m;", "trackPipAnimationHintView", "(Landroid/app/Activity;Landroid/view/View;Lp9/d;)Ljava/lang/Object;", "activity-ktx_release"}, k = 2, mv = {1, 6, 0})
/* renamed from: androidx.activity.PipHintTrackerKt, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class Activity {
    @RequiresApi(26)
    public static final Object trackPipAnimationHintView(final android.app.Activity activity, View view, d<? super m> dVar) {
        Object objA = new b(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null), g.f12870a, -2, f.SUSPEND).a(new kotlinx.coroutines.flow.g() { // from class: androidx.activity.PipHintTrackerKt.trackPipAnimationHintView.2
            public final Object emit(android.graphics.Rect rect, d<? super m> dVar2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(activity, rect);
                return m.f9594a;
            }

            @Override // kotlinx.coroutines.flow.g
            public /* bridge */ /* synthetic */ Object emit(Object obj, d dVar2) {
                return emit((android.graphics.Rect) obj, (d<? super m>) dVar2);
            }
        }, dVar);
        return objA == a.COROUTINE_SUSPENDED ? objA : m.f9594a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final android.graphics.Rect trackPipAnimationHintView$positionInWindow(View view) {
        android.graphics.Rect rect = new android.graphics.Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
