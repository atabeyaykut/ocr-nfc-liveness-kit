package xf;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.u;

/* loaded from: classes3.dex */
public final class q extends com.airbnb.epoxy.u<p> implements com.airbnb.epoxy.y<p> {

    /* renamed from: a, reason: collision with root package name */
    public int f19238a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f19239b = 0;

    /* renamed from: c, reason: collision with root package name */
    public View.OnClickListener f19240c = null;

    public final q a(@Nullable String str) {
        super.m422id(str);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(com.airbnb.epoxy.p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(p pVar) {
        p pVar2 = pVar;
        super.bind(pVar2);
        pVar2.setShowAllTitle(this.f19239b);
        pVar2.setAllListener(this.f19240c);
        pVar2.setTitle(this.f19238a);
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        p pVar = new p(viewGroup.getContext());
        pVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return pVar;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q) || !super.equals(obj)) {
            return false;
        }
        q qVar = (q) obj;
        qVar.getClass();
        if (this.f19238a == qVar.f19238a && this.f19239b == qVar.f19239b) {
            return (this.f19240c == null) == (qVar.f19240c == null);
        }
        return false;
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
    public final void handlePostBind(p pVar, int r32) {
        p pVar2 = pVar;
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r32);
        pVar2.f19236b.setOnClickListener(pVar2.f19237c);
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePreBind(com.airbnb.epoxy.x xVar, p pVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public final int hashCode() {
        return ((((androidx.browser.browseractions.b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31) + this.f19238a) * 31) + this.f19239b) * 31) + (this.f19240c != null ? 1 : 0);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<p> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<p> mo420id(long j10) {
        super.mo420id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout */
    public final com.airbnb.epoxy.u<p> m426layout(@LayoutRes int r22) {
        throw new UnsupportedOperationException("Layout resources are unsupported with programmatic views.");
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityChanged(float f, float f10, int r92, int r10, p pVar) {
        super.onVisibilityChanged(f, f10, r92, r10, pVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityStateChanged(int r12, p pVar) {
        super.onVisibilityStateChanged(r12, pVar);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<p> reset() {
        this.f19238a = 0;
        this.f19239b = 0;
        this.f19240c = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<p> show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride */
    public final com.airbnb.epoxy.u<p> m431spanSizeOverride(@Nullable u.c cVar) {
        super.m431spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "HeaderGridItemModelModel_{title_Int=" + this.f19238a + ", showAllTitle_Int=" + this.f19239b + ", allListener_OnClickListener=" + this.f19240c + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(p pVar) {
        p pVar2 = pVar;
        super.unbind(pVar2);
        pVar2.setAllListener(null);
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(p pVar, com.airbnb.epoxy.u uVar) {
        p pVar2 = pVar;
        if (!(uVar instanceof q)) {
            super.bind(pVar2);
            pVar2.setShowAllTitle(this.f19239b);
            pVar2.setAllListener(this.f19240c);
            pVar2.setTitle(this.f19238a);
            return;
        }
        q qVar = (q) uVar;
        super.bind(pVar2);
        int r02 = this.f19239b;
        if (r02 != qVar.f19239b) {
            pVar2.setShowAllTitle(r02);
        }
        View.OnClickListener onClickListener = this.f19240c;
        if ((onClickListener == null) != (qVar.f19240c == null)) {
            pVar2.setAllListener(onClickListener);
        }
        int r03 = this.f19238a;
        if (r03 != qVar.f19238a) {
            pVar2.setTitle(r03);
        }
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<p> m421id(long j10, long j11) {
        super.m421id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<p> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<p> m422id(@Nullable CharSequence charSequence) {
        super.m422id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<p> m423id(@Nullable CharSequence charSequence, long j10) {
        super.m423id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<p> m424id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.m424id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<p> m425id(@Nullable Number[] numberArr) {
        super.m425id(numberArr);
        return this;
    }
}
