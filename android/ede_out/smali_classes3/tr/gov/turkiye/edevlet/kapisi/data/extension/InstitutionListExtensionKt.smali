.class public final Ltr/gov/turkiye/edevlet/kapisi/data/extension/InstitutionListExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "completeRequest",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;",
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
.method public static final completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->getLogin()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->getInstitutionDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->getInstitutionDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->getInstitutionDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getResultCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;->getInstitutionDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;

    move-result-object p0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailData;->getResultCode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method

.method public static final completeRequest(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;)Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;",
            ")",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getLogin()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginFail;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getInstitutionList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/SuccessResult;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getResultCode()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getResultCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;->getInstitutionListData()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;

    move-result-object p0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListData;->getResultCode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyListException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/EmptyResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    :goto_1
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    new-instance p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorException;-><init>()V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServerError;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0
.end method
