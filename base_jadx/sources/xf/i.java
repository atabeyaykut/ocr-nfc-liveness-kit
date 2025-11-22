package xf;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.u;

/* loaded from: classes3.dex */
public final class i extends com.airbnb.epoxy.u<h> implements com.airbnb.epoxy.y<h> {
    public final i a(@Nullable String str) {
        super.m156id(str);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(com.airbnb.epoxy.p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(h hVar) {
        super.bind(hVar);
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        h hVar = new h(viewGroup.getContext());
        hVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return hVar;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i) || !super.equals(obj)) {
            return false;
        }
        ((i) obj).getClass();
        return true;
    }

    @Override // com.airbnb.epoxy.u
    @LayoutRes
    public final int getDefaultLayout() {
        throw new UnsupportedOperationException("Layout resources are unsupported for views created programmatically.");
    }

    @Override // com.airbnb.epoxy.u
    public final int getSpanSize(int r12, int r22, int r32) {
        return r12;
    }

    @Override // com.airbnb.epoxy.u
    public final int getViewType() {
        return 0;
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePostBind(h hVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePreBind(com.airbnb.epoxy.x xVar, h hVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public final int hashCode() {
        return (((((((super.hashCode() * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<h> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<h> m154id(long j10) {
        super.m154id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout */
    public final com.airbnb.epoxy.u<h> m160layout(@LayoutRes int r22) {
        throw new UnsupportedOperationException("Layout resources are unsupported with programmatic views.");
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityChanged(float f, float f10, int r92, int r10, h hVar) {
        super.onVisibilityChanged(f, f10, r92, r10, hVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityStateChanged(int r12, h hVar) {
        super.onVisibilityStateChanged(r12, hVar);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<h> reset() {
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<h> show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride */
    public final com.airbnb.epoxy.u<h> m165spanSizeOverride(@Nullable u.c cVar) {
        super.m165spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "DividerItemModelModel_{}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(h hVar) {
        super.unbind(hVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(h hVar, com.airbnb.epoxy.u uVar) {
        h hVar2 = hVar;
        if (!(uVar instanceof i)) {
            super.bind(hVar2);
        } else {
            super.bind(hVar2);
        }
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<h> m155id(long j10, long j11) {
        super.m155id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<h> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<h> m156id(@Nullable CharSequence charSequence) {
        super.m156id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<h> m157id(@Nullable CharSequence charSequence, long j10) {
        super.m157id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<h> m158id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.m158id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<h> mo159id(@Nullable Number[] numberArr) {
        super.mo159id(numberArr);
        return this;
    }
}
