.class public Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/s0;
.implements Lio/realm/x2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;",
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
        "",
        "question",
        "Ljava/lang/String;",
        "getQuestion",
        "()Ljava/lang/String;",
        "setQuestion",
        "(Ljava/lang/String;)V",
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
.field private question:Ljava/lang/String;

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
    const-string v0, ""

    invoke-virtual {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmSet$question(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getQuestion()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmGet$question()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceCode()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmGet$serviceCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInsertion()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmGet$serviceInsertion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$question()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->question:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$serviceCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->serviceCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$serviceInsertion()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->serviceInsertion:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmSet$question(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->question:Ljava/lang/String;

    return-void
.end method

.method public realmSet$serviceCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->serviceCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$serviceInsertion(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->serviceInsertion:Ljava/lang/Integer;

    return-void
.end method

.method public final setQuestion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmSet$question(Ljava/lang/String;)V

    return-void
.end method

.method public final setServiceCode(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmSet$serviceCode(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setServiceInsertion(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->realmSet$serviceInsertion(Ljava/lang/Integer;)V

    return-void
.end method
