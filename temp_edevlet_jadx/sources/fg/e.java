package fg;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;

/* loaded from: classes3.dex */
public final class e implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<ProfileServiceModel>> f5644a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<ProfileServiceModel>> f5645b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<ProfileContactModel>> f5646c;

    /* renamed from: d, reason: collision with root package name */
    public final ProfileServiceModel f5647d;

    /* renamed from: e, reason: collision with root package name */
    public final ProfileContactModel f5648e;
    public final boolean f;

    public e() {
        this(null, null, null, null, null, false, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(r0.b<? extends Result<ProfileServiceModel>> profileInformationState, r0.b<? extends Result<ProfileServiceModel>> updatedProfileInformationState, r0.b<? extends Result<ProfileContactModel>> contactInformationState, ProfileServiceModel profileInformation, ProfileContactModel contactInformation, boolean z10) {
        kotlin.jvm.internal.h.f(profileInformationState, "profileInformationState");
        kotlin.jvm.internal.h.f(updatedProfileInformationState, "updatedProfileInformationState");
        kotlin.jvm.internal.h.f(contactInformationState, "contactInformationState");
        kotlin.jvm.internal.h.f(profileInformation, "profileInformation");
        kotlin.jvm.internal.h.f(contactInformation, "contactInformation");
        this.f5644a = profileInformationState;
        this.f5645b = updatedProfileInformationState;
        this.f5646c = contactInformationState;
        this.f5647d = profileInformation;
        this.f5648e = contactInformation;
        this.f = z10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ e(r0.b bVar, r0.b bVar2, r0.b bVar3, ProfileServiceModel profileServiceModel, ProfileContactModel profileContactModel, boolean z10, int r18, kotlin.jvm.internal.d dVar) {
        int r02 = r18 & 1;
        r0.b bVar4 = d1.f13733b;
        this(r02 != 0 ? bVar4 : bVar, (r18 & 2) != 0 ? bVar4 : bVar2, (r18 & 4) == 0 ? bVar3 : bVar4, (r18 & 8) != 0 ? new ProfileServiceModel(false, 0, null, 7, null) : profileServiceModel, (r18 & 16) != 0 ? new ProfileContactModel(0, false, null, 7, null) : profileContactModel, (r18 & 32) != 0 ? false : z10);
    }

    public static e copy$default(e eVar, r0.b profileInformationState, r0.b bVar, r0.b bVar2, ProfileServiceModel profileServiceModel, ProfileContactModel profileContactModel, boolean z10, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            profileInformationState = eVar.f5644a;
        }
        if ((r11 & 2) != 0) {
            bVar = eVar.f5645b;
        }
        r0.b updatedProfileInformationState = bVar;
        if ((r11 & 4) != 0) {
            bVar2 = eVar.f5646c;
        }
        r0.b contactInformationState = bVar2;
        if ((r11 & 8) != 0) {
            profileServiceModel = eVar.f5647d;
        }
        ProfileServiceModel profileInformation = profileServiceModel;
        if ((r11 & 16) != 0) {
            profileContactModel = eVar.f5648e;
        }
        ProfileContactModel contactInformation = profileContactModel;
        if ((r11 & 32) != 0) {
            z10 = eVar.f;
        }
        eVar.getClass();
        kotlin.jvm.internal.h.f(profileInformationState, "profileInformationState");
        kotlin.jvm.internal.h.f(updatedProfileInformationState, "updatedProfileInformationState");
        kotlin.jvm.internal.h.f(contactInformationState, "contactInformationState");
        kotlin.jvm.internal.h.f(profileInformation, "profileInformation");
        kotlin.jvm.internal.h.f(contactInformation, "contactInformation");
        return new e(profileInformationState, updatedProfileInformationState, contactInformationState, profileInformation, contactInformation, z10);
    }

    public final r0.b<Result<ProfileServiceModel>> component1() {
        return this.f5644a;
    }

    public final r0.b<Result<ProfileServiceModel>> component2() {
        return this.f5645b;
    }

    public final r0.b<Result<ProfileContactModel>> component3() {
        return this.f5646c;
    }

    public final ProfileServiceModel component4() {
        return this.f5647d;
    }

    public final ProfileContactModel component5() {
        return this.f5648e;
    }

    public final boolean component6() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return kotlin.jvm.internal.h.a(this.f5644a, eVar.f5644a) && kotlin.jvm.internal.h.a(this.f5645b, eVar.f5645b) && kotlin.jvm.internal.h.a(this.f5646c, eVar.f5646c) && kotlin.jvm.internal.h.a(this.f5647d, eVar.f5647d) && kotlin.jvm.internal.h.a(this.f5648e, eVar.f5648e) && this.f == eVar.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = (this.f5648e.hashCode() + ((this.f5647d.hashCode() + androidx.browser.browseractions.b.d(this.f5646c, androidx.browser.browseractions.b.d(this.f5645b, this.f5644a.hashCode() * 31, 31), 31)) * 31)) * 31;
        boolean z10 = this.f;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ProfileState(profileInformationState=");
        sb2.append(this.f5644a);
        sb2.append(", updatedProfileInformationState=");
        sb2.append(this.f5645b);
        sb2.append(", contactInformationState=");
        sb2.append(this.f5646c);
        sb2.append(", profileInformation=");
        sb2.append(this.f5647d);
        sb2.append(", contactInformation=");
        sb2.append(this.f5648e);
        sb2.append(", isUpdateOperation=");
        return androidx.browser.browseractions.b.f(sb2, this.f, ')');
    }
}
