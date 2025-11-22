.class public final Ltr/gov/turkiye/edevlet/kapisi/data/extension/UpdateCheckExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0003\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "completeRequest",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;",
        "data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;->getLogin()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public static final completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceData;->getResultCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    :goto_2
    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_7

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_7
    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_9
    :goto_6
    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    :goto_7
    const/4 v1, 0x1

    goto :goto_9

    :cond_b
    :goto_8
    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_d

    goto :goto_7

    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/QueueResult;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_f
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_10
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    :goto_a
    return-object v0
.end method

.method public static final completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->getResultCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->getResultCode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;->getUpdateCheckData()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceData;->getResultCode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method
