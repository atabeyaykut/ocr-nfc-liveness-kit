package fg;

import androidx.transition.ChangeBounds;
import androidx.transition.Slide;
import androidx.transition.TransitionSet;

/* loaded from: classes3.dex */
public final class a extends TransitionSet {
    public a() {
        setOrdering(0);
        addTransition(new ChangeBounds()).addTransition(new Slide(48));
    }
}
