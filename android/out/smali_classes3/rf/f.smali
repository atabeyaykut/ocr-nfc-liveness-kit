.class public final Lrf/f;
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
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct/range {v0 .. v7}, Lrf/f;-><init>(Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;ILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;Z",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;)V"
        }
    .end annotation

    const-string v0, "favoriteServiceListState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteServiceResultState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteOperationResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteServiceList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/f;->a:Lr0/b;

    iput-object p2, p0, Lrf/f;->b:Lr0/b;

    iput-boolean p3, p0, Lrf/f;->c:Z

    iput-object p4, p0, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    iput-object p5, p0, Lrf/f;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;ILkotlin/jvm/internal/d;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    sget-object v0, Lr0/d1;->b:Lr0/d1;

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move v1, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    new-instance p4, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-direct {p4}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;-><init>()V

    :cond_3
    move-object v2, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    sget-object p5, Lm9/v;->a:Lm9/v;

    :cond_4
    move-object p6, p5

    move-object p1, p0

    move-object p2, p7

    move-object p3, v0

    move p4, v1

    move-object p5, v2

    invoke-direct/range {p1 .. p6}, Lrf/f;-><init>(Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;)V

    return-void
.end method

.method public static copy$default(Lrf/f;Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;ILjava/lang/Object;)Lrf/f;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lrf/f;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lrf/f;->b:Lr0/b;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-boolean p3, p0, Lrf/f;->c:Z

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

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
    iget-object p5, p0, Lrf/f;->e:Ljava/util/List;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string p0, "favoriteServiceListState"

    .line 39
    .line 40
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "favoriteServiceResultState"

    .line 44
    .line 45
    invoke-static {p7, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p0, "favoriteOperationResult"

    .line 49
    .line 50
    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p0, "favoriteServiceList"

    .line 54
    .line 55
    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Lrf/f;

    .line 59
    .line 60
    move-object p2, p0

    .line 61
    move-object p3, p1

    .line 62
    move-object p4, p7

    .line 63
    move p5, v0

    .line 64
    move-object p6, v1

    .line 65
    move-object p7, v2

    .line 66
    invoke-direct/range {p2 .. p7}, Lrf/f;-><init>(Lr0/b;Lr0/b;ZLtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;Ljava/util/List;)V

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
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lrf/f;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Lr0/b;
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

    iget-object v0, p0, Lrf/f;->b:Lr0/b;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lrf/f;->c:Z

    return v0
.end method

.method public final component4()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;
    .locals 1

    iget-object v0, p0, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lrf/f;->e:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrf/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrf/f;

    iget-object v1, p1, Lrf/f;->a:Lr0/b;

    iget-object v3, p0, Lrf/f;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrf/f;->b:Lr0/b;

    iget-object v3, p1, Lrf/f;->b:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lrf/f;->c:Z

    iget-boolean v3, p1, Lrf/f;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    iget-object v3, p1, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lrf/f;->e:Ljava/util/List;

    iget-object p1, p1, Lrf/f;->e:Ljava/util/List;

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
    iget-object v0, p0, Lrf/f;->a:Lr0/b;

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
    iget-object v1, p0, Lrf/f;->b:Lr0/b;

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
    iget-boolean v1, p0, Lrf/f;->c:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v1, p0, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Lrf/f;->e:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v1

    .line 41
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FavoriteServicesState(favoriteServiceListState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lrf/f;->a:Lr0/b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", favoriteServiceResultState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lrf/f;->b:Lr0/b;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", unFavoriteOperation="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lrf/f;->c:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", favoriteOperationResult="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lrf/f;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", favoriteServiceList="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lrf/f;->e:Ljava/util/List;

    .line 49
    .line 50
    const/16 v2, 0x29

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->j(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
