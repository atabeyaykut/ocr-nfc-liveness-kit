.class public Lnet/sf/scuba/smartcards/CardEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field public static final INSERTED:I = 0x1

.field public static final REMOVED:I = 0x0

.field private static final serialVersionUID:J = -0x4e580dbef0f77d37L


# instance fields
.field private transient service:Lnet/sf/scuba/smartcards/CardService;

.field private type:I


# direct methods
.method public constructor <init>(ILnet/sf/scuba/smartcards/CardService;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p1, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    iput-object p2, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lnet/sf/scuba/smartcards/CardEvent;

    iget v2, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    iget v3, p1, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    iget-object p1, p1, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getService()Lnet/sf/scuba/smartcards/CardService;
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Card inserted in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown event type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Card removed from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
