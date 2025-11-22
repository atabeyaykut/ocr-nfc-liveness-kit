.class public Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;
.super Lio/realm/v0;
.source "SourceFile"

# interfaces
.implements Lio/realm/z1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001e\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;",
        "Lio/realm/v0;",
        "",
        "reportPartyId",
        "Ljava/lang/String;",
        "getReportPartyId",
        "()Ljava/lang/String;",
        "setReportPartyId",
        "(Ljava/lang/String;)V",
        "identityType",
        "getIdentityType",
        "setIdentityType",
        "identityNumber",
        "getIdentityNumber",
        "setIdentityNumber",
        "partyRole",
        "getPartyRole",
        "setPartyRole",
        "name",
        "getName",
        "setName",
        "plate",
        "getPlate",
        "setPlate",
        "comment",
        "getComment",
        "setComment",
        "status",
        "getStatus",
        "setStatus",
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
.field private comment:Ljava/lang/String;

.field private identityNumber:Ljava/lang/String;

.field private identityType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private partyRole:Ljava/lang/String;

.field private plate:Ljava/lang/String;

.field private reportPartyId:Ljava/lang/String;

.field private status:Ljava/lang/String;


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
.method public final getComment()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentityNumber()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$identityNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentityType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$identityType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPartyRole()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$partyRole()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlate()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$plate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReportPartyId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$reportPartyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$identityNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->identityNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$identityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->identityType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$partyRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->partyRole:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$plate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$reportPartyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->reportPartyId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$identityNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->identityNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$identityType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->identityType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$partyRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->partyRole:Ljava/lang/String;

    return-void
.end method

.method public realmSet$plate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->plate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$reportPartyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->reportPartyId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->status:Ljava/lang/String;

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$comment(Ljava/lang/String;)V

    return-void
.end method

.method public final setIdentityNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$identityNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final setIdentityType(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$identityType(Ljava/lang/String;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public final setPartyRole(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$partyRole(Ljava/lang/String;)V

    return-void
.end method

.method public final setPlate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$plate(Ljava/lang/String;)V

    return-void
.end method

.method public final setReportPartyId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$reportPartyId(Ljava/lang/String;)V

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->realmSet$status(Ljava/lang/String;)V

    return-void
.end method
