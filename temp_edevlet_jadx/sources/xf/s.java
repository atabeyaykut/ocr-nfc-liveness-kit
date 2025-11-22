package xf;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import com.airbnb.epoxy.u;

/* loaded from: classes3.dex */
public final class s extends com.airbnb.epoxy.u<r> implements com.airbnb.epoxy.y<r> {

    /* renamed from: a, reason: collision with root package name */
    public int f19242a = 0;

    public final s a(@Nullable String str) {
        super.m422id(str);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final void addTo(com.airbnb.epoxy.p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    public final s b(int r12) {
        onMutation();
        this.f19242a = r12;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(r rVar) {
        r rVar2 = rVar;
        super.bind(rVar2);
        rVar2.setTitle(this.f19242a);
    }

    @Override // com.airbnb.epoxy.u
    public final View buildView(ViewGroup viewGroup) {
        r rVar = new r(viewGroup.getContext());
        rVar.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        return rVar;
    }

    @Override // com.airbnb.epoxy.u
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s) || !super.equals(obj)) {
            return false;
        }
        s sVar = (s) obj;
        sVar.getClass();
        return this.f19242a == sVar.f19242a;
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
    public final void handlePostBind(r rVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public final void handlePreBind(com.airbnb.epoxy.x xVar, r rVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public final int hashCode() {
        return androidx.browser.browseractions.b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31) + this.f19242a;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<r> hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<r> mo420id(long j10) {
        super.mo420id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout */
    public final com.airbnb.epoxy.u<r> m426layout(@LayoutRes int r22) {
        throw new UnsupportedOperationException("Layout resources are unsupported with programmatic views.");
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityChanged(float f, float f10, int r92, int r10, r rVar) {
        super.onVisibilityChanged(f, f10, r92, r10, rVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void onVisibilityStateChanged(int r12, r rVar) {
        super.onVisibilityStateChanged(r12, rVar);
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<r> reset() {
        this.f19242a = 0;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<r> show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride */
    public final com.airbnb.epoxy.u<r> m431spanSizeOverride(@Nullable u.c cVar) {
        super.m431spanSizeOverride(null);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final String toString() {
        return "HeaderItemMergeModelModel_{title_Int=" + this.f19242a + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.u
    public final void unbind(r rVar) {
        super.unbind(rVar);
    }

    @Override // com.airbnb.epoxy.u
    public final void bind(r rVar, com.airbnb.epoxy.u uVar) {
        r rVar2 = rVar;
        if (!(uVar instanceof s)) {
            super.bind(rVar2);
            rVar2.setTitle(this.f19242a);
            return;
        }
        super.bind(rVar2);
        int r02 = this.f19242a;
        if (r02 != ((s) uVar).f19242a) {
            rVar2.setTitle(r02);
        }
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<r> m421id(long j10, long j11) {
        super.m421id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public final com.airbnb.epoxy.u<r> show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<r> m422id(@Nullable CharSequence charSequence) {
        super.m422id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<r> m423id(@Nullable CharSequence charSequence, long j10) {
        super.m423id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<r> m424id(@Nullable CharSequence charSequence, @Nullable CharSequence[] charSequenceArr) {
        super.m424id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id */
    public final com.airbnb.epoxy.u<r> m425id(@Nullable Number[] numberArr) {
        super.m425id(numberArr);
        return this;
    }
}
