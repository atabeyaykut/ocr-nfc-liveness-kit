.class public final Lag/c;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

.field public final c:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Z

.field public final f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lag/c;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;ZZ",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ")V"
        }
    .end annotation

    const-string v0, "institutionDetailState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "institutionDetail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteServiceResultState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteServiceResult"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag/c;->a:Lr0/b;

    iput-object p2, p0, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    iput-object p3, p0, Lag/c;->c:Lr0/b;

    iput-boolean p4, p0, Lag/c;->d:Z

    iput-boolean p5, p0, Lag/c;->e:Z

    iput-object p6, p0, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ILkotlin/jvm/internal/d;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    sget-object v0, Lr0/d1;->b:Lr0/d1;

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-direct {p2}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;-><init>()V

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p3

    :goto_1
    and-int/lit8 p1, p7, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move v3, p5

    :goto_3
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    new-instance p6, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {p6}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    :cond_5
    move-object p7, p6

    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v0

    move p5, v2

    move p6, v3

    invoke-direct/range {p1 .. p7}, Lag/c;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V

    return-void
.end method

.method public static copy$default(Lag/c;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;ILjava/lang/Object;)Lag/c;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lag/c;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 12
    .line 13
    :cond_1
    move-object p8, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lag/c;->c:Lr0/b;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-boolean p4, p0, Lag/c;->d:Z

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lag/c;->e:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string p0, "institutionDetailState"

    .line 46
    .line 47
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string p0, "institutionDetail"

    .line 51
    .line 52
    invoke-static {p8, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "favoriteServiceResultState"

    .line 56
    .line 57
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p0, "favoriteServiceResult"

    .line 61
    .line 62
    invoke-static {v3, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p0, Lag/c;

    .line 66
    .line 67
    move-object p2, p0

    .line 68
    move-object p3, p1

    .line 69
    move-object p4, p8

    .line 70
    move-object p5, v0

    .line 71
    move p6, v1

    .line 72
    move p7, v2

    .line 73
    move-object p8, v3

    .line 74
    invoke-direct/range {p2 .. p8}, Lag/c;-><init>(Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;Lr0/b;ZZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V

    .line 75
    .line 76
    .line 77
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lag/c;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;
    .locals 1

    iget-object v0, p0, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    return-object v0
.end method

.method public final component3()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lag/c;->c:Lr0/b;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lag/c;->d:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lag/c;->e:Z

    return v0
.end method

.method public final component6()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 1

    iget-object v0, p0, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lag/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lag/c;

    iget-object v1, p1, Lag/c;->a:Lr0/b;

    iget-object v3, p0, Lag/c;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    iget-object v3, p1, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lag/c;->c:Lr0/b;

    iget-object v3, p1, Lag/c;->c:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lag/c;->d:Z

    iget-boolean v3, p1, Lag/c;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lag/c;->e:Z

    iget-boolean v3, p1, Lag/c;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    iget-object p1, p1, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lag/c;->a:Lr0/b;

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
    iget-object v1, p0, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lag/c;->c:Lr0/b;

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    iget-boolean v2, p0, Lag/c;->d:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    :cond_0
    add-int/2addr v0, v2

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget-boolean v2, p0, Lag/c;->e:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v2

    .line 41
    :goto_0
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-object v1, p0, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v0

    .line 51
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstitutionDetailState(institutionDetailState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lag/c;->a:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", institutionDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lag/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", favoriteServiceResultState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lag/c;->c:Lr0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", favoriteOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lag/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unFavoriteOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lag/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", favoriteServiceResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lag/c;->f:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
