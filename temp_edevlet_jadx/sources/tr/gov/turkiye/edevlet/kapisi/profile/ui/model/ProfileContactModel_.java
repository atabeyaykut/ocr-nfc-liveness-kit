package tr.gov.turkiye.edevlet.kapisi.profile.ui.model;

import android.content.Context;
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
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactData;
import x9.a;

/* loaded from: classes3.dex */
public class ProfileContactModel_ extends ProfileContactModel implements y<c>, kg.c {
    private i0<ProfileContactModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<ProfileContactModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<ProfileContactModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<ProfileContactModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    public Context context() {
        return this.context;
    }

    @Override // kg.c
    public ProfileContactModel_ context(Context context) {
        onMutation();
        this.context = context;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProfileContactModel_) || !super.equals(obj)) {
            return false;
        }
        ProfileContactModel_ profileContactModel_ = (ProfileContactModel_) obj;
        profileContactModel_.getClass();
        ProfileContactData profileContactData = this.profileContactCardData;
        if (profileContactData == null ? profileContactModel_.profileContactCardData != null : !profileContactData.equals(profileContactModel_.profileContactCardData)) {
            return false;
        }
        Context context = this.context;
        if (context == null ? profileContactModel_.context != null : !context.equals(profileContactModel_.context)) {
            return false;
        }
        a<m> aVar = this.listener;
        a<m> aVar2 = profileContactModel_.listener;
        return aVar == null ? aVar2 == null : aVar.equals(aVar2);
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
        ProfileContactData profileContactData = this.profileContactCardData;
        int r03 = (r02 + (profileContactData != null ? profileContactData.hashCode() : 0)) * 31;
        Context context = this.context;
        int r04 = (r03 + (context != null ? context.hashCode() : 0)) * 31;
        a<m> aVar = this.listener;
        return r04 + (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public ProfileContactModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m258id(long j10) {
        super.m258id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m259id(long j10, long j11) {
        super.m259id(j10, j11);
        return this;
    }

    @Override // kg.c
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ mo260id(@Nullable CharSequence charSequence) {
        super.mo260id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m261id(@Nullable CharSequence charSequence, long j10) {
        super.m261id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m262id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m262id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m263id(@Nullable Number... numberArr) {
        super.m263id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m264layout(@LayoutRes int r12) {
        super.m264layout(r12);
        return this;
    }

    @Override // kg.c
    public /* bridge */ /* synthetic */ kg.c listener(a aVar) {
        return listener((a<m>) aVar);
    }

    @Override // kg.c
    public ProfileContactModel_ listener(a<m> aVar) {
        onMutation();
        this.listener = aVar;
        return this;
    }

    public a<m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ kg.c onBind(i0 i0Var) {
        return m265onBind((i0<ProfileContactModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public ProfileContactModel_ m265onBind(i0<ProfileContactModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ kg.c onUnbind(k0 k0Var) {
        return m266onUnbind((k0<ProfileContactModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public ProfileContactModel_ m266onUnbind(k0<ProfileContactModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ kg.c onVisibilityChanged(l0 l0Var) {
        return m267onVisibilityChanged((l0<ProfileContactModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public ProfileContactModel_ m267onVisibilityChanged(l0<ProfileContactModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ kg.c onVisibilityStateChanged(m0 m0Var) {
        return m268onVisibilityStateChanged((m0<ProfileContactModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public ProfileContactModel_ m268onVisibilityStateChanged(m0<ProfileContactModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public ProfileContactData profileContactCardData() {
        return this.profileContactCardData;
    }

    @Override // kg.c
    public ProfileContactModel_ profileContactCardData(ProfileContactData profileContactData) {
        onMutation();
        this.profileContactCardData = profileContactData;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ProfileContactModel_ reset() {
        this.profileContactCardData = null;
        this.context = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ProfileContactModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ProfileContactModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public ProfileContactModel_ m269spanSizeOverride(@Nullable u.c cVar) {
        super.m269spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "ProfileContactModel_{profileContactCardData=" + this.profileContactCardData + ", context=" + this.context + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((ProfileContactModel_) cVar);
    }
}
