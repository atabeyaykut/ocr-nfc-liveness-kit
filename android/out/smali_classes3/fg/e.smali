.class public final Lfg/e;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lr0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

.field public final e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

.field public final f:Z


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

    invoke-direct/range {v0 .. v8}, Lfg/e;-><init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;ZILkotlin/jvm/internal/d;)V

    return-void
.end method

.method public constructor <init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;",
            "Lr0/b<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;",
            ">;>;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;",
            "Z)V"
        }
    .end annotation

    const-string v0, "profileInformationState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedProfileInformationState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactInformationState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileInformation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactInformation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfg/e;->a:Lr0/b;

    iput-object p2, p0, Lfg/e;->b:Lr0/b;

    iput-object p3, p0, Lfg/e;->c:Lr0/b;

    iput-object p4, p0, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    iput-object p5, p0, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    iput-boolean p6, p0, Lfg/e;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;ZILkotlin/jvm/internal/d;)V
    .locals 11

    and-int/lit8 v0, p7, 0x1

    sget-object v1, Lr0/d1;->b:Lr0/d1;

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p3

    :goto_2
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_3

    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;-><init>(ZILtr/gov/turkiye/edevlet/kapisi/data/profile/UserProfileResult;ILkotlin/jvm/internal/d;)V

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_4

    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;-><init>(IZLtr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;ILkotlin/jvm/internal/d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, p5

    :goto_4
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move/from16 v5, p6

    :goto_5
    move-object p1, p0

    move-object p2, v0

    move-object p3, v2

    move-object p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lfg/e;-><init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;Z)V

    return-void
.end method

.method public static copy$default(Lfg/e;Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;ZILjava/lang/Object;)Lfg/e;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lfg/e;->a:Lr0/b;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lfg/e;->b:Lr0/b;

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
    iget-object p3, p0, Lfg/e;->c:Lr0/b;

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
    iget-object p4, p0, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-boolean p6, p0, Lfg/e;->f:Z

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string p0, "profileInformationState"

    .line 46
    .line 47
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string p0, "updatedProfileInformationState"

    .line 51
    .line 52
    invoke-static {p8, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "contactInformationState"

    .line 56
    .line 57
    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p0, "profileInformation"

    .line 61
    .line 62
    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p0, "contactInformation"

    .line 66
    .line 67
    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p0, Lfg/e;

    .line 71
    .line 72
    move-object p2, p0

    .line 73
    move-object p3, p1

    .line 74
    move-object p4, p8

    .line 75
    move-object p5, v0

    .line 76
    move-object p6, v1

    .line 77
    move-object p7, v2

    .line 78
    move p8, v3

    .line 79
    invoke-direct/range {p2 .. p8}, Lfg/e;-><init>(Lr0/b;Lr0/b;Lr0/b;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;Z)V

    .line 80
    .line 81
    .line 82
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lfg/e;->a:Lr0/b;

    return-object v0
.end method

.method public final component2()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lfg/e;->b:Lr0/b;

    return-object v0
.end method

.method public final component3()Lr0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr0/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lfg/e;->c:Lr0/b;

    return-object v0
.end method

.method public final component4()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;
    .locals 1

    iget-object v0, p0, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    return-object v0
.end method

.method public final component5()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;
    .locals 1

    iget-object v0, p0, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lfg/e;->f:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfg/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfg/e;

    iget-object v1, p1, Lfg/e;->a:Lr0/b;

    iget-object v3, p0, Lfg/e;->a:Lr0/b;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfg/e;->b:Lr0/b;

    iget-object v3, p1, Lfg/e;->b:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfg/e;->c:Lr0/b;

    iget-object v3, p1, Lfg/e;->c:Lr0/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    iget-object v3, p1, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    iget-object v3, p1, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lfg/e;->f:Z

    iget-boolean p1, p1, Lfg/e;->f:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfg/e;->a:Lr0/b;

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
    iget-object v1, p0, Lfg/e;->b:Lr0/b;

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
    iget-object v1, p0, Lfg/e;->c:Lr0/b;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/browser/browseractions/b;->d(Lr0/b;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    .line 24
    .line 25
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object v0, p0, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    .line 33
    .line 34
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-boolean v1, p0, Lfg/e;->f:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_0
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ProfileState(profileInformationState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lfg/e;->a:Lr0/b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", updatedProfileInformationState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lfg/e;->b:Lr0/b;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", contactInformationState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lfg/e;->c:Lr0/b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", profileInformation="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lfg/e;->d:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", contactInformation="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lfg/e;->e:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isUpdateOperation="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lfg/e;->f:Z

    .line 59
    .line 60
    const/16 v2, 0x29

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/b;->f(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
