package tr.gov.turkiye.edevlet.kapisi.data.extension;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.update.UpdateLogModel;
import tr.gov.turkiye.edevlet.kapisi.data.update.UpdateModuleSpecificServiceData;
import tr.gov.turkiye.edevlet.kapisi.data.update.UpdateModuleSpecificServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.update.UpdateServiceData;
import tr.gov.turkiye.edevlet.kapisi.data.update.UpdateServiceModel;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0003\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"completeRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UpdateCheckExtensionKt {
    public static final ServiceResult<UpdateLogModel> completeRequest(UpdateLogModel updateLogModel) {
        h.f(updateLogModel, "<this>");
        return updateLogModel.getLogin() == 0 ? new LoginFail(new LoginException()) : updateLogModel.isSuccess() ? new SuccessResult(updateLogModel) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<UpdateModuleSpecificServiceModel> completeRequest(UpdateModuleSpecificServiceModel updateModuleSpecificServiceModel) {
        h.f(updateModuleSpecificServiceModel, "<this>");
        if (updateModuleSpecificServiceModel.isSuccess() && updateModuleSpecificServiceModel.getUpdateCheckData() != null) {
            UpdateModuleSpecificServiceData updateCheckData = updateModuleSpecificServiceModel.getUpdateCheckData();
            Integer numValueOf = updateCheckData != null ? Integer.valueOf(updateCheckData.getResultCode()) : null;
            if (numValueOf != null && numValueOf.intValue() == 0) {
                return new SuccessResult(updateModuleSpecificServiceModel);
            }
            boolean z10 = false;
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                return new ServerError(new ServiceErrorException());
            }
            if (numValueOf != null && numValueOf.intValue() == 3) {
                return new EmptyResult(new EmptyListException());
            }
            if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                z10 = true;
            }
            return z10 ? new QueueResult(updateModuleSpecificServiceModel) : new ServerError(new ServiceErrorException());
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<UpdateServiceModel> completeRequest(UpdateServiceModel updateServiceModel) {
        h.f(updateServiceModel, "<this>");
        if (updateServiceModel.isSuccess() && updateServiceModel.getUpdateCheckData() != null) {
            UpdateServiceData updateCheckData = updateServiceModel.getUpdateCheckData();
            if (updateCheckData != null && updateCheckData.getResultCode() == 0) {
                return new SuccessResult(updateServiceModel);
            }
            UpdateServiceData updateCheckData2 = updateServiceModel.getUpdateCheckData();
            if (!(updateCheckData2 != null && updateCheckData2.getResultCode() == 1)) {
                UpdateServiceData updateCheckData3 = updateServiceModel.getUpdateCheckData();
                if (!(updateCheckData3 != null && updateCheckData3.getResultCode() == 2)) {
                    UpdateServiceData updateCheckData4 = updateServiceModel.getUpdateCheckData();
                    return updateCheckData4 != null && updateCheckData4.getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException());
                }
            }
            return new ServerError(new ServiceErrorException());
        }
        return new ServerError(new ServiceErrorException());
    }
}
