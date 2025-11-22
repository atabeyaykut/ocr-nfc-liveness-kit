.class public Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;
.implements Lio/realm/r2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;",
        "Lio/realm/s0;",
        "",
        "serviceCode",
        "Ljava/lang/Integer;",
        "getServiceCode",
        "()Ljava/lang/Integer;",
        "setServiceCode",
        "(Ljava/lang/Integer;)V",
        "serviceInsertion",
        "getServiceInsertion",
        "setServiceInsertion",
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
.field private serviceCode:Ljava/lang/Integer;

.field private serviceInsertion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/n;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getServiceCode()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInsertion()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$serviceCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->serviceCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$serviceInsertion()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->serviceInsertion:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmSet$serviceCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->serviceCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$serviceInsertion(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->serviceInsertion:Ljava/lang/Integer;

    return-void
.end method

.method public final setServiceCode(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->realmSet$serviceCode(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setServiceInsertion(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/MostUsedServiceModelRealm;->realmSet$serviceInsertion(Ljava/lang/Integer;)V

    return-void
.end method
