.class public final Lyg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/p;


# instance fields
.field public final a:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lyg/c;-><init>(Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ")V"
        }
    .end annotation

    const-string v0, "agreementState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmationState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agreementText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmationResponse"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyg/c;->a:Lr0/b;

    iput-object p2, p0, Lyg/c;->b:Lr0/b;

    iput-object p3, p0, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    iput-object p4, p0, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILkotlin/jvm/internal/d;)V
    .locals 7

    and-int/lit8 p6, p5, 0x1

    sget-object v0, Lr0/d1;->b:Lr0/d1;

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    new-instance p3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementData;IIZILkotlin/jvm/internal/d;)V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    new-instance p4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ClarificationControlData;IIZILkotlin/jvm/internal/d;)V

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lyg/c;-><init>(Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)V

    return-void
.end method

.method public static copy$default(Lyg/c;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILjava/lang/Object;)Lyg/c;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lyg/c;->a:Lr0/b;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lyg/c;->b:Lr0/b;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "agreementState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "confirmationState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "agreementText"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "confirmationResponse"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lyg/c;

    invoke-direct {p0, p1, p2, p3, p4}, Lyg/c;-><init>(Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)V

    return-object p0
.end method


# virtual methods
.method public final component1()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lyg/c;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lyg/c;->b:Lr0/b;

    return-object v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;
    .locals 1

    iget-object v0, p0, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    return-object v0
.end method

.method public final component4()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;
    .locals 1

    iget-object v0, p0, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyg/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyg/c;

    iget-object v1, p1, Lyg/c;->a:Lr0/b;

    iget-object v3, p0, Lyg/c;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyg/c;->b:Lr0/b;

    iget-object v3, p1, Lyg/c;->b:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    iget-object v3, p1, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    iget-object p1, p1, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lyg/c;->a:Lr0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lyg/c;->b:Lr0/b;

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    .line 18
    .line 19
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    iget-object v0, p0, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    .line 27
    .line 28
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileAccidentAgreementState(agreementState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyg/c;->a:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyg/c;->b:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", agreementText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyg/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyg/c;->d:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
