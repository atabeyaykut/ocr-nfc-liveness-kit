.class public final Lab/a;
.super Lcc/x;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lma/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcc/m0;


# direct methods
.method public constructor <init>(IIZZLjava/util/Set;Lcc/m0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "ZZ",
            "Ljava/util/Set<",
            "+",
            "Lma/w0;",
            ">;",
            "Lcc/m0;",
            ")V"
        }
    .end annotation

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    const-string v0, "flexibility"

    invoke-static {p2, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    invoke-direct {p0, p1, p5, p6}, Lcc/x;-><init>(ILjava/util/Set;Lcc/m0;)V

    iput p1, p0, Lab/a;->a:I

    iput p2, p0, Lab/a;->b:I

    iput-boolean p3, p0, Lab/a;->c:Z

    iput-boolean p4, p0, Lab/a;->d:Z

    iput-object p5, p0, Lab/a;->e:Ljava/util/Set;

    iput-object p6, p0, Lab/a;->f:Lcc/m0;

    return-void
.end method

.method public synthetic constructor <init>(IZZLjava/util/Set;I)V
    .locals 9

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p2

    :goto_1
    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, p3

    :goto_2
    and-int/lit8 p2, p5, 0x10

    if-eqz p2, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v7, p4

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lab/a;-><init>(IIZZLjava/util/Set;Lcc/m0;)V

    return-void
.end method

.method public static e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;
    .locals 9

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lab/a;->a:I

    .line 7
    .line 8
    move v3, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    :goto_0
    and-int/lit8 v0, p5, 0x2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lab/a;->b:I

    .line 16
    .line 17
    :cond_1
    move v4, p1

    .line 18
    and-int/lit8 p1, p5, 0x4

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-boolean p2, p0, Lab/a;->c:Z

    .line 23
    .line 24
    :cond_2
    move v5, p2

    .line 25
    and-int/lit8 p1, p5, 0x8

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-boolean v1, p0, Lab/a;->d:Z

    .line 30
    .line 31
    move v6, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v6, 0x0

    .line 34
    :goto_1
    and-int/lit8 p1, p5, 0x10

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p3, p0, Lab/a;->e:Ljava/util/Set;

    .line 39
    .line 40
    :cond_4
    move-object v7, p3

    .line 41
    and-int/lit8 p1, p5, 0x20

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iget-object p4, p0, Lab/a;->f:Lcc/m0;

    .line 46
    .line 47
    :cond_5
    move-object v8, p4

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string p0, "howThisTypeIsUsed"

    .line 52
    .line 53
    invoke-static {v3, p0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "flexibility"

    .line 57
    .line 58
    invoke-static {v4, p0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lab/a;

    .line 62
    .line 63
    move-object v2, p0

    .line 64
    invoke-direct/range {v2 .. v8}, Lab/a;-><init>(IIZZLjava/util/Set;Lcc/m0;)V

    .line 65
    .line 66
    .line 67
    return-object p0
.end method


# virtual methods
.method public final a()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lab/a;->f:Lcc/m0;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lab/a;->a:I

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lab/a;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final d(Lma/w0;)Lcc/x;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lab/a;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lm9/g0;->G(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lx5/a;->r(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    move-object v3, p1

    const/4 v4, 0x0

    const/16 v5, 0x2f

    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lab/a;->e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lab/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lab/a;

    .line 8
    .line 9
    iget-object v0, p1, Lab/a;->f:Lcc/m0;

    .line 10
    .line 11
    iget-object v2, p0, Lab/a;->f:Lcc/m0;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p1, Lab/a;->a:I

    .line 20
    .line 21
    iget v2, p0, Lab/a;->a:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget v0, p1, Lab/a;->b:I

    .line 26
    .line 27
    iget v2, p0, Lab/a;->b:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p1, Lab/a;->c:Z

    .line 32
    .line 33
    iget-boolean v2, p0, Lab/a;->c:Z

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    iget-boolean p1, p1, Lab/a;->d:Z

    .line 38
    .line 39
    iget-boolean v0, p0, Lab/a;->d:Z

    .line 40
    .line 41
    if-ne p1, v0, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method public final f(I)Lab/a;
    .locals 7

    const-string v0, "flexibility"

    invoke-static {p1, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3d

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lab/a;->e(Lab/a;IZLjava/util/Set;Lcc/m0;I)Lab/a;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lab/a;->f:Lcc/m0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcc/e0;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lab/a;->a:I

    invoke-static {v2}, Lg/d;->c(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lab/a;->b:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lab/a;->c:Z

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lab/a;->d:Z

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaTypeAttributes(howThisTypeIsUsed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lab/a;->a:I

    invoke-static {v1}, Landroid/support/v4/media/a;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flexibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lab/a;->b:I

    invoke-static {v1}, Lab/b;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lab/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForAnnotationParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lab/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visitedTypeParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lab/a;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lab/a;->f:Lcc/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
