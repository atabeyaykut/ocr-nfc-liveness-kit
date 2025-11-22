package tr.gov.turkiye.edevlet.kapisi.profile.ui.model;

import android.content.Context;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.profile.PersonalInformation;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactData;
import tr.gov.turkiye.edevlet.kapisi.profile.databinding.ItemProfileContactBinding;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\t\u001a\u00020\u0003H\u0002J\b\u0010\u000b\u001a\u00020\nH\u0014J\f\u0010\r\u001a\u00020\f*\u00020\u0002H\u0016R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;", "", "hasTwoFactorLoginRight", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;", "personalInfo", "isPhoneNumberVerifiedBySMS", "isPhoneNumberVerifiedById", "isLoginWithTwoFactor", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "profileContactCardData", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "getProfileContactCardData", "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "setProfileContactCardData", "(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "Lkotlin/Function0;", "listener", "Lx9/a;", "getListener", "()Lx9/a;", "setListener", "(Lx9/a;)V", "<init>", "()V", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class ProfileContactModel extends a<ItemProfileContactBinding> {
    public Context context;
    public x9.a<m> listener;
    public ProfileContactData profileContactCardData;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(ProfileContactModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke();
    }

    private final boolean hasTwoFactorLoginRight() {
        return this.profileContactCardData != null && getProfileContactCardData().getHasTwoFactorUsageRight() == 1;
    }

    private final boolean isLoginWithTwoFactor() {
        if (this.profileContactCardData != null) {
            return getProfileContactCardData().isTwoFactorLogin();
        }
        return false;
    }

    private final boolean isPhoneNumberVerifiedById(PersonalInformation personalInfo) {
        return h.a(personalInfo != null ? personalInfo.getHasIDVerifiedPhoneNumber() : null, ExifInterface.LONGITUDE_EAST);
    }

    private final boolean isPhoneNumberVerifiedBySMS(PersonalInformation personalInfo) {
        return h.a(personalInfo != null ? personalInfo.getHasSMSVerifiedPhoneNumber() : null, ExifInterface.LONGITUDE_EAST);
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015f  */
    @Override // he.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bind(tr.gov.turkiye.edevlet.kapisi.profile.databinding.ItemProfileContactBinding r12) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.profile.ui.model.ProfileContactModel.bind(tr.gov.turkiye.edevlet.kapisi.profile.databinding.ItemProfileContactBinding):void");
    }

    public final Context getContext() {
        Context context = this.context;
        if (context != null) {
            return context;
        }
        h.n("context");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_profile_contact;
    }

    public final x9.a<m> getListener() {
        x9.a<m> aVar = this.listener;
        if (aVar != null) {
            return aVar;
        }
        h.n("listener");
        throw null;
    }

    public final ProfileContactData getProfileContactCardData() {
        ProfileContactData profileContactData = this.profileContactCardData;
        if (profileContactData != null) {
            return profileContactData;
        }
        h.n("profileContactCardData");
        throw null;
    }

    public final void setContext(Context context) {
        h.f(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(x9.a<m> aVar) {
        h.f(aVar, "<set-?>");
        this.listener = aVar;
    }

    public final void setProfileContactCardData(ProfileContactData profileContactData) {
        h.f(profileContactData, "<set-?>");
        this.profileContactCardData = profileContactData;
    }
}
