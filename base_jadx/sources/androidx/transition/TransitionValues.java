package androidx.transition;

import android.support.v4.media.a;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.browser.browseractions.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.view == transitionValues.view && this.values.equals(transitionValues.values);
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbI = b.i("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbI.append(this.view);
        sbI.append("\n");
        String strF = a.f(sbI.toString(), "    values:");
        for (String str : this.values.keySet()) {
            strF = strF + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return strF;
    }
}
