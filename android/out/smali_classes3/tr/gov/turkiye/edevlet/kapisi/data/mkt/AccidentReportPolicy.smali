.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/b2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
        "Lio/realm/v0;",
        "",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "productCode",
        "getProductCode",
        "setProductCode",
        "endDate",
        "getEndDate",
        "setEndDate",
        "startDate",
        "getStartDate",
        "setStartDate",
        "companyName",
        "getCompanyName",
        "setCompanyName",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private companyName:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private productCode:Ljava/lang/String;

.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/realm/v0;-><init>()V

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCompanyName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmGet$companyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEndDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmGet$endDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProductCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmGet$productCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartDate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmGet$startDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$companyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$endDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$productCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$startDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$companyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->companyName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$endDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->endDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$productCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->productCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$startDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->startDate:Ljava/lang/String;

    return-void
.end method

.method public final setCompanyName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmSet$companyName(Ljava/lang/String;)V

    return-void
.end method

.method public final setEndDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmSet$endDate(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmSet$id(Ljava/lang/String;)V

    return-void
.end method

.method public final setProductCode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmSet$productCode(Ljava/lang/String;)V

    return-void
.end method

.method public final setStartDate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->realmSet$startDate(Ljava/lang/String;)V

    return-void
.end method
