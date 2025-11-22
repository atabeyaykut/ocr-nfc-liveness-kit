package tr.gov.turkiye.edevlet.kapisi.data.extension;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.notification.RegisterModel;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"completeRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RegisterExtensionKt {
    public static final ServiceResult<RegisterModel> completeRequest(RegisterModel registerModel) {
        h.f(registerModel, "<this>");
        return registerModel.getLogin() == 0 ? new LoginFail(new LoginException()) : registerModel.isSuccess() ? new SuccessResult(registerModel) : new ServerError(new ServiceErrorException());
    }
}
