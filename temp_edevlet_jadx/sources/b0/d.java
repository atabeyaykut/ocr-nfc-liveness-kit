package b0;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.LayoutRes;
import kotlin.jvm.internal.h;
import mc.j;
import mc.n;

/* loaded from: classes.dex */
public final class d {
    public static final View a(ViewGroup inflate, @LayoutRes int r22, ViewGroup viewGroup) {
        h.g(inflate, "$this$inflate");
        return LayoutInflater.from(inflate.getContext()).inflate(r22, viewGroup, false);
    }

    public static final <T extends View> boolean b(T isRtl) {
        h.g(isRtl, "$this$isRtl");
        Resources resources = isRtl.getResources();
        h.b(resources, "resources");
        Configuration configuration = resources.getConfiguration();
        h.b(configuration, "resources.configuration");
        return configuration.getLayoutDirection() == 1;
    }

    public static final <T extends View> boolean c(T isVisible) {
        h.g(isVisible, "$this$isVisible");
        if (isVisible instanceof Button) {
            Button button = (Button) isVisible;
            if (button.getVisibility() != 0) {
                return false;
            }
            h.b(button.getText(), "this.text");
            if (!(!j.y(n.i0(r3)))) {
                return false;
            }
        } else if (isVisible.getVisibility() != 0) {
            return false;
        }
        return true;
    }
}
