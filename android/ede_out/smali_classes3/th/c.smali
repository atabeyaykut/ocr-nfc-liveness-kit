.class public final Lth/c;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

.field public final d:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lth/c;-><init>(Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;",
            ">;>;Z",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;",
            ")V"
        }
    .end annotation

    const-string v0, "twoFactorStatusState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twoFactorStatus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clarificationControlState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clarificationControl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth/c;->a:Lr0/b;

    iput-boolean p2, p0, Lth/c;->b:Z

    iput-object p3, p0, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    iput-object p4, p0, Lth/c;->d:Lr0/b;

    iput-object p5, p0, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILkotlin/jvm/internal/d;)V
    .locals 11

    and-int/lit8 v0, p6, 0x1

    sget-object v1, Lr0/d1;->b:Lr0/d1;

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_2

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorData;IZILkotlin/jvm/internal/d;)V

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p4

    :goto_3
    and-int/lit8 v4, p6, 0x10

    if-eqz v4, :cond_4

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    move-object p1, v4

    move-object p2, v5

    move p3, v6

    move p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    move-object/from16 p7, v10

    invoke-direct/range {p1 .. p7}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ClarificationControlData;IIZILkotlin/jvm/internal/d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, p5

    :goto_4
    move-object p1, p0

    move-object p2, v0

    move p3, v2

    move-object p4, v3

    move-object/from16 p5, v1

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lth/c;-><init>(Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)V

    return-void
.end method

.method public static copy$default(Lth/c;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;ILjava/lang/Object;)Lth/c;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lth/c;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lth/c;->b:Z

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lth/c;->d:Lr0/b;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string p0, "twoFactorStatusState"

    .line 39
    .line 40
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "twoFactorStatus"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p0, "clarificationControlState"

    .line 49
    .line 50
    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p0, "clarificationControl"

    .line 54
    .line 55
    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Lth/c;

    .line 59
    .line 60
    move-object p2, p0

    .line 61
    move-object p3, p1

    .line 62
    move p4, p7

    .line 63
    move-object p5, v0

    .line 64
    move-object p6, v1

    .line 65
    move-object p7, v2

    .line 66
    invoke-direct/range {p2 .. p7}, Lth/c;-><init>(Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;)V

    .line 67
    .line 68
    .line 69
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lth/c;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lth/c;->b:Z

    return v0
.end method

.method public final component3()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;
    .locals 1

    iget-object v0, p0, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    return-object v0
.end method

.method public final component4()Lr0/b;
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

    iget-object v0, p0, Lth/c;->d:Lr0/b;

    return-object v0
.end method

.method public final component5()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;
    .locals 1

    iget-object v0, p0, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lth/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lth/c;

    iget-object v1, p1, Lth/c;->a:Lr0/b;

    iget-object v3, p0, Lth/c;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lth/c;->b:Z

    iget-boolean v3, p1, Lth/c;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    iget-object v3, p1, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lth/c;->d:Lr0/b;

    iget-object v3, p1, Lth/c;->d:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    iget-object p1, p1, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lth/c;->a:Lr0/b;

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
    iget-boolean v1, p0, Lth/c;->b:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    add-int/2addr v0, v1

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget-object v1, p0, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    .line 18
    .line 19
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;->hashCode()I

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
    iget-object v0, p0, Lth/c;->d:Lr0/b;

    .line 27
    .line 28
    const/16 v2, 0x1f

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    .line 35
    .line 36
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v1, v0

    .line 41
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileAccidentOnboardingState(twoFactorStatusState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lth/c;->a:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTwoFactorCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lth/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", twoFactorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lth/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clarificationControlState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lth/c;->d:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clarificationControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lth/c;->e:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
