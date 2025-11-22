package tr.gov.turkiye.edevlet.kapisi.profile.ui.model;

import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.b;
import com.airbnb.epoxy.i0;
import com.airbnb.epoxy.k0;
import com.airbnb.epoxy.l0;
import com.airbnb.epoxy.m0;
import com.airbnb.epoxy.p;
import com.airbnb.epoxy.u;
import com.airbnb.epoxy.x;
import com.airbnb.epoxy.y;
import he.c;
import jg.a;
import kg.d;
import l9.m;
import x9.l;

/* loaded from: classes3.dex */
public class ProfileOperationItemModel_ extends ProfileOperationItemModel implements y<c>, d {
    private i0<ProfileOperationItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<ProfileOperationItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<ProfileOperationItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<ProfileOperationItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProfileOperationItemModel_) || !super.equals(obj)) {
            return false;
        }
        ProfileOperationItemModel_ profileOperationItemModel_ = (ProfileOperationItemModel_) obj;
        profileOperationItemModel_.getClass();
        a aVar = this.profilePageItem;
        if (aVar == null ? profileOperationItemModel_.profilePageItem != null : !aVar.equals(profileOperationItemModel_.profilePageItem)) {
            return false;
        }
        l<? super a, m> lVar = this.listener;
        l<? super a, m> lVar2 = profileOperationItemModel_.listener;
        return lVar == null ? lVar2 == null : lVar.equals(lVar2);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePostBind(c cVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePreBind(x xVar, c cVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public int hashCode() {
        int r02 = b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
        a aVar = this.profilePageItem;
        int r03 = (r02 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        l<? super a, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public ProfileOperationItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m270id(long j10) {
        super.m270id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m271id(long j10, long j11) {
        super.m271id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m272id(@Nullable CharSequence charSequence) {
        super.m272id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m273id(@Nullable CharSequence charSequence, long j10) {
        super.m273id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m274id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m274id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m275id(@Nullable Number... numberArr) {
        super.m275id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m276layout(@LayoutRes int r12) {
        super.m276layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ d listener(l lVar) {
        return m277listener((l<? super a, m>) lVar);
    }

    /* renamed from: listener, reason: collision with other method in class */
    public ProfileOperationItemModel_ m277listener(l<? super a, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super a, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ d onBind(i0 i0Var) {
        return m278onBind((i0<ProfileOperationItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public ProfileOperationItemModel_ m278onBind(i0<ProfileOperationItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ d onUnbind(k0 k0Var) {
        return m279onUnbind((k0<ProfileOperationItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public ProfileOperationItemModel_ m279onUnbind(k0<ProfileOperationItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ d onVisibilityChanged(l0 l0Var) {
        return m280onVisibilityChanged((l0<ProfileOperationItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public ProfileOperationItemModel_ m280onVisibilityChanged(l0<ProfileOperationItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ d onVisibilityStateChanged(m0 m0Var) {
        return m281onVisibilityStateChanged((m0<ProfileOperationItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public ProfileOperationItemModel_ m281onVisibilityStateChanged(m0<ProfileOperationItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public a profilePageItem() {
        return this.profilePageItem;
    }

    public ProfileOperationItemModel_ profilePageItem(a aVar) {
        onMutation();
        this.profilePageItem = aVar;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ProfileOperationItemModel_ reset() {
        this.profilePageItem = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ProfileOperationItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ProfileOperationItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public ProfileOperationItemModel_ m283spanSizeOverride(@Nullable u.c cVar) {
        super.m283spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "ProfileOperationItemModel_{profilePageItem=" + this.profilePageItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((ProfileOperationItemModel_) cVar);
    }
}
